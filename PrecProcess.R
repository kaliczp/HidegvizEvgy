GHalomraw <- read.table("HABP_1RD_20020101_20071231_13601.csv", sep = ";", dec = ".", head = TRUE)
GHalomraw <- rbind(GHalomraw,read.table("HABP_1RD_20080101_20231231_13600.csv", sep = ";", dec = ".", head = TRUE))

plot(GHalomraw[,"r"], type = "h")

GHtime <- as.Date(paste(substr((GHalomraw[,"Time"]),1,4), substr((GHalomraw[,"Time"]),5,6), substr((GHalomraw[,"Time"]),7,8), sep = "-"))
diff(GHtime)
GHtime[7059:7061] ## Hiányzik 2021-04-30 és 2022-01-01 között

library(xts)
GHalom <- xts(GHalomraw[,"r"], GHtime)
plot(GHalom, type = "h")

write.zoo(GHalom, "GHalom.csv", sep = ";", dec = ",")
