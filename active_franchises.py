# -*- coding: utf-8 -*-
import requests
import csv
import string
from bs4 import BeautifulSoup

f = open("active_franchises.csv","wb") #用wb而非w的原因是使用w會產生空行,要使用二進位的wb來寫入檔案避免產生空行

url = "http://www.baseball-reference.com/teams/"
response = requests.get(url)
soup = BeautifulSoup(response.text)
title = soup.select('#div_active #active thead tr th')
arr = []
for x in title[0:22]:
    arr.append(x.text)

w = csv.writer(f)
w.writerow(arr)

#以上已將各數據名稱存入csv檔

record = soup.select('#div_active #active tbody tr')
mat = []
i = 0
for row in record:
    mat.append([])
    if 'no_mobile' not in row['class']:
        table = row.select('td')
        for stamp in table[0:22]:
            mat[i].append(stamp.text)
        i = i + 1
print mat

for rock in range(len(mat)):
    b= []
    for x in mat[rock][0:22]:
        b.append(x.encode('utf-8'))
    w.writerow(b)

f.close()
#...