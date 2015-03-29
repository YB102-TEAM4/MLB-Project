b_PA.d = box$b_PA3 - box$b_PA2a
b_AB.d = box$b_AB3 - box$b_AB2a
b_H.d = box$b_H3 - box$b_H2a
b_1B.d = box$b_1B3 - box$b_1B2a
b_2B.d = box$b_2B3 - box$b_2B2a
b_3B.d = box$b_3B3 - box$b_3B2a
b_HR.d = box$b_HR3 - box$b_HR2a
b_RBI.d = box$b_RBI3 - box$b_RBI2a
b_BB.d = box$b_BB3 - box$b_BB2a
b_IBB.d = box$b_IBB3 - box$b_IBB2a
b_SO.d = box$b_SO3 - box$b_SO2a
b_HBP.d = box$b_HBP3 - box$b_HBP2a
b_SH.d = box$b_SH3 - box$b_SH2a
b_SF.d = box$b_SF3 - box$b_SF2a
b_ROE.d = box$b_ROE3 - box$b_ROE2a
b_GDP.d = box$b_GDP3 - box$b_GDP2a
b_SB.d = box$b_SB3 - box$b_SB2a
b_CS.d = box$b_CS3 - box$b_CS2a
b_BA.d = box$b_BA3 - box$b_BA2a
b_OBP.d = box$b_OBP3 - box$b_OBP2a
b_SLG.d = box$b_SLG3 - box$b_SLG2a
b_OPS.d = box$b_OPS3 - box$b_OPS2a
b_LOB.d = box$b_LOB3 - box$b_LOB2a
b_TB.d = box$b_TB3 - box$b_TB2a
p_IP.d = box$p_IP3 - box$p_IP2a
p_H.d = box$p_H3 - box$p_H2a
p_R.d = box$p_R3 - box$p_R2a
p_ER.d = box$p_ER3 - box$p_ER2a
p_UER.d = box$p_UER3 - box$p_UER2a
p_BB.d = box$p_BB3 - box$p_BB2a
p_SO.d = box$p_SO3 - box$p_SO2a
p_HR.d = box$p_HR3 - box$p_HR2a
p_HBP.d = box$p_HBP3 - box$p_HBP2a
p_ERA.d = box$p_ERA3 - box$p_ERA2a
p_BF.d = box$p_BF3 - box$p_BF2a
p_Pit.d = box$p_Pit3 - box$p_Pit2a
p_Str.d = box$p_Str3 - box$p_Str2a
p_IR.d = box$p_IR3 - box$p_IR2a
p_IS.d = box$p_IS3 - box$p_IS2a
p_SB.d = box$p_SB3 - box$p_SB2a
p_CS.d = box$p_CS3 - box$p_CS2a
p_AB.d = box$p_AB3 - box$p_AB2a
p_1B.d = box$p_1B3 - box$p_1B2a
p_2B.d = box$p_2B3 - box$p_2B2a
p_3B.d = box$p_3B3 - box$p_3B2a
p_IBB.d = box$p_IBB3 - box$p_IBB2a
p_SH.d = box$p_SH3 - box$p_SH2a
p_SF.d = box$p_SF3 - box$p_SF2a
p_ROE.d = box$p_ROE3 - box$p_ROE2a
p_GDP.d = box$p_GDP3 - box$p_GDP2a
p_H9.d = box$p_H3 - box$p_H92a
p_WHIP.d = box$p_WHIP3 - box$p_WHIP2a
b_BIP.d = box$b_BIP.3 - box$b_BIP.2a
b_RBIp.d = box$b_RBIp3 - box$b_RBIp2a
b_IsoP.d = box$b_IsoP3 - box$b_IsoP2a

 

comp_minus = cbind(b_PA.d, b_AB.d, b_H.d, b_1B.d, b_2B.d, b_3B.d, b_HR.d, b_RBI.d, b_BB.d, b_IBB.d, b_SO.d, b_HBP.d, b_SH.d, b_SF.d, b_ROE.d, b_GDP.d, b_SB.d, b_CS.d, b_BA.d, b_OBP.d, b_SLG.d, b_OPS.d, b_LOB.d, b_TB.d, p_IP.d, p_H.d, p_R.d, p_ER.d, p_UER.d, p_BB.d, p_SO.d, p_HR.d, p_HBP.d, p_ERA.d, p_BF.d, p_Pit.d, p_Str.d, p_IR.d, p_IS.d, p_SB.d, p_CS.d, p_AB.d, p_1B.d, p_2B.d, p_3B.d, p_IBB.d, p_SH.d, p_SF.d, p_ROE.d, p_GDP.d, p_H9.d, p_WHIP.d, b_BIP.d, b_RBIp.d, b_IsoP.d)

rm(b_PA.d, b_AB.d, b_H.d, b_1B.d, b_2B.d, b_3B.d, b_HR.d, b_RBI.d, b_BB.d, b_IBB.d, b_SO.d, b_HBP.d, b_SH.d, b_SF.d, b_ROE.d, b_GDP.d, b_SB.d, b_CS.d, b_BA.d, b_OBP.d, b_SLG.d, b_OPS.d, b_LOB.d, b_TB.d, p_IP.d, p_H.d, p_R.d, p_ER.d, p_UER.d, p_BB.d, p_SO.d, p_HR.d, p_HBP.d, p_ERA.d, p_BF.d, p_Pit.d, p_Str.d, p_IR.d, p_IS.d, p_SB.d, p_CS.d, p_AB.d, p_1B.d, p_2B.d, p_3B.d, p_IBB.d, p_SH.d, p_SF.d, p_ROE.d, p_GDP.d, p_H9.d, p_WHIP.d, b_BIP.d, b_RBIp.d, b_IsoP.d)

comp_minus = cbind(testModel$W.L,testModel$R,testModel$RA,testModel$R.diff,comp_minus)
colnames(comp_minus) = c('W.L','R','RA','R.diff','b_PA.d', 'b_AB.d', 'b_H.d', 'b_1B.d', 'b_2B.d', 'b_3B.d', 'b_HR.d', 'b_RBI.d', 'b_BB.d', 'b_IBB.d', 'b_SO.d', 'b_HBP.d', 'b_SH.d', 'b_SF.d', 'b_ROE.d', 'b_GDP.d', 'b_SB.d', 'b_CS.d', 'b_BA.d', 'b_OBP.d', 'b_SLG.d', 'b_OPS.d', 'b_LOB.d', 'b_TB.d', 'p_IP.d', 'p_H.d', 'p_R.d', 'p_ER.d', 'p_UER.d', 'p_BB.d', 'p_SO.d', 'p_HR.d', 'p_HBP.d', 'p_ERA.d', 'p_BF.d', 'p_Pit.d', 'p_Str.d', 'p_IR.d', 'p_IS.d', 'p_SB.d', 'p_CS.d', 'p_AB.d', 'p_1B.d', 'p_2B.d', 'p_3B.d', 'p_IBB.d', 'p_SH.d', 'p_SF.d', 'p_ROE.d', 'p_GDP.d', 'p_H9.d', 'p_WHIP.d', 'b_BIP.d', 'b_RBIp.d', 'b_IsoP.d')
