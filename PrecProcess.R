GHalomraw <- read.table("HABP_1RD_20020101_20071231_13601.csv", sep = ";", dec = ".", head = TRUE)
GHalomraw <- rbind(GHalomraw,read.table("HABP_1RD_20080101_20231231_13600.csv", sep = ";", dec = ".", head = TRUE))

plot(GHalomraw[,"r"], type = "h")
