era.diff <- f$p_ERA - f$lg.ERA

gpa.diff <- round((1.8*f$b_OBP+f$b_TB)/4,digit=3)-f$lg.GPA

f = cbind(f[,1:83],gpa.diff,era.diff)
