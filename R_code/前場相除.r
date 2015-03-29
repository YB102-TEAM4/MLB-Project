b_PA.d = round(box$b_PA3 / box$b_PA2a,digit=10)
b_AB.d = round(box$b_AB3 / box$b_AB2a,digit=10)
b_H.d = round(box$b_H3 / box$b_H2a,digit=10)
b_1B.d = round(box$b_1B3 / box$b_1B2a,digit=10)
b_2B.d = round(box$b_2B3 / box$b_2B2a,digit=10)
b_3B.d = round(box$b_3B3 / box$b_3B2a,digit=10)
b_HR.d = round(box$b_HR3 / box$b_HR2a,digit=10)
b_RBI.d = round(box$b_RBI3 / box$b_RBI2a,digit=10)
b_BB.d = round(box$b_BB3 / box$b_BB2a,digit=10)
b_IBB.d = round(box$b_IBB3 / box$b_IBB2a,digit=10)
b_SO.d = round(box$b_SO3 / box$b_SO2a,digit=10)
b_HBP.d = round(box$b_HBP3 / box$b_HBP2a,digit=10)
b_SH.d = round(box$b_SH3 / box$b_SH2a,digit=10)
b_SF.d = round(box$b_SF3 / box$b_SF2a,digit=10)
b_ROE.d = round(box$b_ROE3 / box$b_ROE2a,digit=10)
b_GDP.d = round(box$b_GDP3 / box$b_GDP2a,digit=10)
b_SB.d = round(box$b_SB3 / box$b_SB2a,digit=10)
b_CS.d = round(box$b_CS3 / box$b_CS2a,digit=10)
b_BA.d = round(box$b_BA3 / box$b_BA2a,digit=10)
b_OBP.d = round(box$b_OBP3 / box$b_OBP2a,digit=10)
b_SLG.d = round(box$b_SLG3 / box$b_SLG2a,digit=10)
b_OPS.d = round(box$b_OPS3 / box$b_OPS2a,digit=10)
b_LOB.d = round(box$b_LOB3 / box$b_LOB2a,digit=10)
b_TB.d = round(box$b_TB3 / box$b_TB2a,digit=10)
p_IP.d = round(box$p_IP3 / box$p_IP2a,digit=10)
p_H.d = round(box$p_H3 / box$p_H2a,digit=10)
p_R.d = round(box$p_R3 / box$p_R2a,digit=10)
p_ER.d = round(box$p_ER3 / box$p_ER2a,digit=10)
p_UER.d = round(box$p_UER3 / box$p_UER2a,digit=10)
p_BB.d = round(box$p_BB3 / box$p_BB2a,digit=10)
p_SO.d = round(box$p_SO3 / box$p_SO2a,digit=10)
p_HR.d = round(box$p_HR3 / box$p_HR2a,digit=10)
p_HBP.d = round(box$p_HBP3 / box$p_HBP2a,digit=10)
p_ERA.d = round(box$p_ERA3 / box$p_ERA2a,digit=10)
p_BF.d = round(box$p_BF3 / box$p_BF2a,digit=10)
p_Pit.d = round(box$p_Pit3 / box$p_Pit2a,digit=10)
p_Str.d = round(box$p_Str3 / box$p_Str2a,digit=10)
p_IR.d = round(box$p_IR3 / box$p_IR2a,digit=10)
p_IS.d = round(box$p_IS3 / box$p_IS2a,digit=10)
p_SB.d = round(box$p_SB3 / box$p_SB2a,digit=10)
p_CS.d = round(box$p_CS3 / box$p_CS2a,digit=10)
p_AB.d = round(box$p_AB3 / box$p_AB2a,digit=10)
p_1B.d = round(box$p_1B3 / box$p_1B2a,digit=10)
p_2B.d = round(box$p_2B3 / box$p_2B2a,digit=10)
p_3B.d = round(box$p_3B3 / box$p_3B2a,digit=10)
p_IBB.d = round(box$p_IBB3 / box$p_IBB2a,digit=10)
p_SH.d = round(box$p_SH3 / box$p_SH2a,digit=10)
p_SF.d = round(box$p_SF3 / box$p_SF2a,digit=10)
p_ROE.d = round(box$p_ROE3 / box$p_ROE2a,digit=10)
p_GDP.d = round(box$p_GDP3 / box$p_GDP2a,digit=10)
p_H9.d = round(box$p_H3 / box$p_H92a,digit=10)
p_WHIP.d = round(box$p_WHIP3 / box$p_WHIP2a,digit=10)
b_BIP.d = round(box$b_BIP.3 / box$b_BIP.2a,digit=10)
b_RBIp.d = round(box$b_RBIp3 / box$b_RBIp2a,digit=10)
b_IsoP.d = round(box$b_IsoP3 / box$b_IsoP2a,digit=10)

comp_division = cbind(b_PA.d, b_AB.d, b_H.d, b_1B.d, b_2B.d, b_3B.d, b_HR.d, b_RBI.d, b_BB.d, b_IBB.d, b_SO.d, b_HBP.d, b_SH.d, b_SF.d, b_ROE.d, b_GDP.d, b_SB.d, b_CS.d, b_BA.d, b_OBP.d, b_SLG.d, b_OPS.d, b_LOB.d, b_TB.d, p_IP.d, p_H.d, p_R.d, p_ER.d, p_UER.d, p_BB.d, p_SO.d, p_HR.d, p_HBP.d, p_ERA.d, p_BF.d, p_Pit.d, p_Str.d, p_IR.d, p_IS.d, p_SB.d, p_CS.d, p_AB.d, p_1B.d, p_2B.d, p_3B.d, p_IBB.d, p_SH.d, p_SF.d, p_ROE.d, p_GDP.d, p_H9.d, p_WHIP.d, b_BIP.d, b_RBIp.d, b_IsoP.d)

rm(b_PA.d, b_AB.d, b_H.d, b_1B.d, b_2B.d, b_3B.d, b_HR.d, b_RBI.d, b_BB.d, b_IBB.d, b_SO.d, b_HBP.d, b_SH.d, b_SF.d, b_ROE.d, b_GDP.d, b_SB.d, b_CS.d, b_BA.d, b_OBP.d, b_SLG.d, b_OPS.d, b_LOB.d, b_TB.d, p_IP.d, p_H.d, p_R.d, p_ER.d, p_UER.d, p_BB.d, p_SO.d, p_HR.d, p_HBP.d, p_ERA.d, p_BF.d, p_Pit.d, p_Str.d, p_IR.d, p_IS.d, p_SB.d, p_CS.d, p_AB.d, p_1B.d, p_2B.d, p_3B.d, p_IBB.d, p_SH.d, p_SF.d, p_ROE.d, p_GDP.d, p_H9.d, p_WHIP.d, b_BIP.d, b_RBIp.d, b_IsoP.d)

comp_division = cbind(testModel$W.L,testModel$R,testModel$RA,testModel$R.diff,comp_division)
colnames(comp_division) = c('W.L','R','RA','R.diff','b_PA.d', 'b_AB.d', 'b_H.d', 'b_1B.d', 'b_2B.d', 'b_3B.d', 'b_HR.d', 'b_RBI.d', 'b_BB.d', 'b_IBB.d', 'b_SO.d', 'b_HBP.d', 'b_SH.d', 'b_SF.d', 'b_ROE.d', 'b_GDP.d', 'b_SB.d', 'b_CS.d', 'b_BA.d', 'b_OBP.d', 'b_SLG.d', 'b_OPS.d', 'b_LOB.d', 'b_TB.d', 'p_IP.d', 'p_H.d', 'p_R.d', 'p_ER.d', 'p_UER.d', 'p_BB.d', 'p_SO.d', 'p_HR.d', 'p_HBP.d', 'p_ERA.d', 'p_BF.d', 'p_Pit.d', 'p_Str.d', 'p_IR.d', 'p_IS.d', 'p_SB.d', 'p_CS.d', 'p_AB.d', 'p_1B.d', 'p_2B.d', 'p_3B.d', 'p_IBB.d', 'p_SH.d', 'p_SF.d', 'p_ROE.d', 'p_GDP.d', 'p_H9.d', 'p_WHIP.d', 'b_BIP.d', 'b_RBIp.d', 'b_IsoP.d')
