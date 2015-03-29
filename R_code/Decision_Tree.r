library(tree)
predset = na.exclude(testModel) #�h����|��
np = ceiling(0.1*nrow(predset)) #�p��10%�����ƼƥءA�Y���p���I�h�L����i��
test.index = sample(1:nrow(predset),np) #�H����10%������
pred.test = predset[test.index,] #�V�m�˥�
pred.train = predset[-test.index,] #���ռ˥�
predset.tree = tree(diff.iv ~ pred.diff + b_IsoP + b_RBIp + p_WHIP ,data=pred.train) # �]�M����
plot(predset.tree) ; text(predset.tree)
predset.tree
