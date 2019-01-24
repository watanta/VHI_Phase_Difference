library(tidyverse)

data <- read.csv("rawdata.csv")

model <- glm(magnitude ~ phase_diff ,family = gaussian(link="identity") , data = data)
model
summary(model)

data$magnitude <- data$magnitude + 1.0e-9

gamma_log <- glm(magnitude ~ phase_diff ,family = Gamma() , data = data)
gamma_log
summary(gamma_log)
