
#1.Multiple linear regression based on Bl,Ga,Gl, and Gn.
fit <- lm(Bl ~ Ga + Gl + Gn, data = leaf)
summary(fit)
fit_step<-step(fit)
summary(fit_step)
#2.Multiple linear regression based on Ba,Ga,Gl, and Gn.
fit <- lm(Ba ~ Ga + Gl + Gn, data = leaf)
summary(fit)
fit_step<-step(fit)
summary(fit_step)
#3. regression based on Ga and [miR156]
fit <- lm(Ga ~I(miR156^4),data = leaf )
summary(fit)
#4. regression based on Gn and [miR156]
fit <- lm(Gn ~I(miR156^-1),data = leaf )
summary(fit)
