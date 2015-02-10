# -*- coding: utf-8 -*-
import requests
import csv
import string
from bs4 import BeautifulSoup

url = "http://www.baseball-reference.com/teams/ARI/"

f = open("ARI_hisory.csv","wb")

response = requests.get(url)
soup = BeautifulSoup(response.text.replace('&nbsp;', ' ')) #在soup之前把原始碼中的"&nbsp;"改成空格" ",不然最後"&nbsp;會經由soup轉成\xa0,"而再存入csv檔中後,會變成亂碼
mat = []

bid = soup.select("#div_franchise_years thead tr th")
for row in bid[0:21]:
    mat.append(row.text)

w = csv.writer(f)
w.writerow(mat)

bid = soup.select('#div_franchise_years tbody tr')

mat2 = []
i = 0
for year in bid[0:17]:
    mat2.append([])
    record = year.select('td')
    for x in record[0:21]:
        mat2[i].append(x.text)
    i += 1

print mat2

for y in range(0,len(mat2)):
    arr = []
    for z in mat2[y][0:21]:
        arr.append(z.encode('utf-8'))
    w.writerow(arr)

f.close()    