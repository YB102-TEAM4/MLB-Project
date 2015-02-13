# -*- coding: utf-8 -*-
import requests
import csv
import string
from bs4 import BeautifulSoup

f = open('teams_2014_split.cgi_total_extra.csv','wb')

url = 'http://www.baseball-reference.com/teams/split.cgi?t=p&team=ATL&year=2014'
response = requests.get(url)
soup = BeautifulSoup(response.text)

nullmat = []
w = csv.writer(f)
w.writerow(nullmat)  #因為從網站下載的csv檔中一律第一列是空白列，所以為了統一才寫入一行空白列


mat = []
bid = soup.select("#div_total_extra #total_extra thead tr th")
for row in bid[0:25]:
    mat.append(row.text.encode('utf-8'))

print mat

w.writerow(mat)


bid = soup.select('#div_total_extra #total_extra tbody tr')
mat2 = []
i = 0
for year in bid[0:4]:
    mat2.append([])
    record = year.select('td')
    for x in record[0:25]:
        mat2[i].append(x.text)
    i += 1

print mat2

for y in range(0,len(mat2)):
    arr = []
    for z in mat2[y][0:25]:
        arr.append(z.encode('utf-8'))
    w.writerow(arr)

f.close()