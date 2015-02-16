#-*- coding: utf-8 -*-
#所有打者的生涯成績 爬蟲
#從這個網站的球員姓名 http://www.baseballprospectus.com/sortable/index.php?cid=1754666
#抓這個網站資料 http://www.baseballprospectus.com/card/card.php?id=BONDS19640724A
import string, time, requests, os
from bs4 import BeautifulSoup

###########################################################
#因為有同名同姓,此function是為了找真的網址
def findRealURL(url,G):#G為生涯總出場數 
    res=requests.get(url,headers=headers)
    soup=BeautifulSoup(res.text.encode('utf-8'))
    urlRepeatList=[]#若無此行 len(urlRepeatList)==0 會出錯
    urlRepeatList=soup.select('div.col-md-4.card-container')    
    if len(urlRepeatList)==0:#代表沒有跳網頁
        return url
    else:#代表有跳網頁, 有同名同姓
        for urlRepeat in urlRepeatList:
            if urlRepeat.select('p')[3].text=='MLB: N/A':#小聯盟,幽靈球員就不理他
                continue
            else:#大聯盟球員
                urlReal=urlRepeat.select('a')[0]['href']
                res=requests.get(urlReal,headers=headers)
                soup=BeautifulSoup(res.text.encode('utf-8'))
                if G==soup.select('table#stats_card_standard_datagrid tfoot th')[1].text:#兩網站的生涯出場數一樣
                    return urlReal #就代表同一個人
        return #若都找不到 就return None

###########################################################
def playerCrawler(url):#爬 http://www.baseballprospectus.com/card/card.php?id=BONDS19640724A 的資料
    res=requests.get(url,headers=headers)
    soup=BeautifulSoup(res.text.encode('utf-8'))
    name = soup.select('#latest_stats h2')[0].text.replace(' ','').split('\n')[0] #姓名
    birthDay = soup.select('#latest_stats > table > tbody > tr > td > table > tbody > tr > td')[1].text.split('-')#生日
    birthDay = '%04d%02d%02d' %(int(birthDay[2]),int(birthDay[0]),int(birthDay[1])) #重新整理格式的生日
    fileName = name + str(birthDay)#用人名和生日當檔名

    ###For loop###
    tableList=soup.select('table[id*=_datagrid]')#包含 standard, Advanced, Statistics For All Levels, Plate Discipline, Injury History, Compensation, 共6種
    for n in range(0,6):
        folderName = soup.select('h2')[n+1].text.replace('\n','').strip() #資料夾名稱, 放csv檔用
        if not os.path.exists(folderName): #資料夾不存在,則製造資料夾
            os.mkdir(folderName)

        fod=open(folderName+'\\'+fileName+'.csv','w')
        #標題
        for row in tableList[n].select('thead tr'):
            fod.write(row.text[1:-1].replace('\n',',')+'\n')
        #內容
        for row in tableList[n].select('tbody tr'):
            fod.write(row.text[1:-1].replace('\n',',')+'\n')    
        fod.close()

###########################################################
headers={
    'User-Agent':'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36'
}
url='http://www.baseballprospectus.com/sortable/index.php?cid=1754950'
res=requests.get(url,headers=headers)
soup=BeautifulSoup(res.text.encode('utf-8'))

substr='http://www.baseballprospectus.com/player_search.php?search_name='
trList=soup.select('#TTdata tr')[1:]
count=0
for tr in trList:
    #第一步 找出網址, 出賽數 
    name = tr.select('td')[2].text
    url = substr+name.replace(' ','+').encode('utf8')
    G = tr.select('td')[3].text.replace(',','').encode('utf8')
    
    #第二步 findRealURL(網址,出賽數)
    urlReal = findRealURL(url,G)
    if urlReal==None:#將沒爬到的網站寫進 urlError.txt
        fod=open('urlRepeatNotMatch.txt','w')
        fod.write('')
        fod.close()
        fod=open('urlRepeatNotMatch.txt','a')
        fod.write(url+'\n')
        fod.close()

    #第三步 playerCrawler()
    try:
        playerCrawler(urlReal)#爬蟲
    except:
        print str(count)+' '+name+' error'#印爬蟲的進度
        fod=open('urlError.txt','w')
        fod.write('')
        fod.close()
        fod=open('urlError.txt','a')
        fod.write(url+'\n')
        fod.close()
        continue
    
    #第四步 善後
    count+=1
    print str(count)+' '+name#印爬蟲的進度
    del(name)#記憶體控管
    del(url)
    del(G)
    del(urlReal)
    time.sleep(1)

del(trList)

