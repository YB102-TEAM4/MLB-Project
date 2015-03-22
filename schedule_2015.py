# -*- coding: utf-8 -*-
import requests

from bs4 import BeautifulSoup

sch_2015 = open ('sch_2015.csv','w') #開啟名為sch_2015.csv的檔案


#四月的賽程表###################################################################
add4 ='http://espn.go.com/mlb/schedule?date=201504%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(6,31):#range第一個數字寫開始的數字，第二個寫結束的數字減一
	# print add4%(day)
	url = requests.get(add4%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/04/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)#
		sch_2015.write('\n')
	print '2015/04/'+ str(day) + 'finished'
#五月的賽程表###################################################################
add5 ='http://espn.go.com/mlb/schedule?date=201505%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(1,32):#range第一個數字寫開始的數字，第二個寫結束的數字減一

	url = requests.get(add5%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/05/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)#
		sch_2015.write('\n')
	print '2015/05/'+ str(day) + 'finished'
#六月的賽程表###################################################################
add6 ='http://espn.go.com/mlb/schedule?date=201506%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(1,31):#range第一個數字寫開始的數字，第二個寫結束的數字減一

	url = requests.get(add6%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/06/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)#
		sch_2015.write('\n')
	print '2015/06/'+ str(day) + 'finished'
#七月的賽程表###################################################################
add7 ='http://espn.go.com/mlb/schedule?date=201507%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(1,32):#range第一個數字寫開始的數字，第二個寫結束的數字減一

	url = requests.get(add7%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/07/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)#
		sch_2015.write('\n')
	print '2015/07/'+ str(day) + 'finished'
#八月的賽程表###################################################################
add8 ='http://espn.go.com/mlb/schedule?date=201508%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(1,32):#range第一個數字寫開始的數字，第二個寫結束的數字減一

	url = requests.get(add8%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/08/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)
		sch_2015.write('\n')
	print '2015/08/'+ str(day) + 'finished'
#九月的賽程表###################################################################
add9 ='http://espn.go.com/mlb/schedule?date=201509%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(1,31):#range第一個數字寫開始的數字，第二個寫結束的數字減一

	url = requests.get(add9%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/09/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)
		sch_2015.write('\n')
	print '2015/09/'+ str(day) + 'finished'
#十月的賽程表###################################################################
add10 ='http://espn.go.com/mlb/schedule?date=201510%02d'#02代表需要兩位數字，若不足兩位則補零
for day in range(1,5):#range第一個數字寫開始的數字，第二個寫結束的數字減一

	url = requests.get(add10%(day))
	soup = BeautifulSoup(url.text)
	sch = soup.select('.mod-table table')[1].select('tr')[2:]
	for m in sch:
		date = '2015/10/'+ str(day)
		teams = m.select('td')[0].text.replace(' at ',',')
		# print date+','+teams
		
		sch_2015.write(date+','+teams)#
		sch_2015.write('\n')
	print '2015/10/'+ str(day) + 'finished'
sch_2015.close()