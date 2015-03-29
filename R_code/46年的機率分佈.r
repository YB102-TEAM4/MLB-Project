#46年的分差機率分佈
e = factor(f$R.diff) #f為46年的gamelog表格
eT = table(e)
plot(e)

r = factor(f$R)
rT = table(r)
plot(rT)


