#310KM####
library(geosphere)

distHaversine(c(126.853900 ,35.159500),c(126.830100,37.642699))



#wktmo####
library(wktmo)
library(writexl)
library(readxl)

listdata0 <- read_excel("C:/Users/ChenJunru/Desktop/公共数据库新数据/listdata.xlsx", 
           sheet = "Sheet1")


monthlyDataSt <- weekToMonth(listdata0$Case, year = 2017, wkIndex = 1, wkMethod = "ISO")
monthlyDataSt$Value <- round(monthlyDataSt$value)
write_xlsx(monthlyDataSt,"monthlyDataSt.xlsx")
getwd()

T58 <- read_excel("C:/Users/ChenJunru/Desktop/2022+ 文献筛选.xlsx", sheet = "58")
View(T58)

monthlyData58_2 <- weekToMonth(T58$Case_2, year = 2018, wkIndex = 29, wkMethod = "ISO")
monthlyData58_2$Value <- round(monthlyData58_2$value)
merged_df <- merge(monthlyData58_1, monthlyData58_2, by = "yearMonth", all = TRUE)

write_xlsx(merged_df,"monthlyData58.xlsx")

公共数据库1110 <- read_excel("C:/Users/ChenJunru/Desktop/公共数据库新数据/公共数据库1110.xlsx", 
                        sheet = "HK")

公共数据库1110
colnames(公共数据库1110)

monthlyData_1<- weekToMonth(公共数据库1110$`Parainfluenza 1`, year = 2014, wkIndex = 1, wkMethod = "ISO")
monthlyData_1$Value <- round(monthlyData_1$value)

monthlyData_2<- weekToMonth(公共数据库1110$`Parainfluenza 2`, year = 2014, wkIndex = 1, wkMethod = "ISO")
monthlyData_2$Value <- round(monthlyData_2$value)


monthlyData_3<- weekToMonth(公共数据库1110$`Parainfluenza 3`, year = 2014, wkIndex = 1, wkMethod = "ISO")
monthlyData_3$Value <- round(monthlyData_3$value)


monthlyData_4<- weekToMonth(公共数据库1110$`Parainfluenza 4`, year = 2014, wkIndex = 1, wkMethod = "ISO")
monthlyData_4$Value <- round(monthlyData_4$value)

merged_HK <- merge(monthlyData_1, monthlyData_2, by = "yearMonth", all = TRUE)
merged_HK <- merge(merge(merge(monthlyData_1, monthlyData_2, by = "yearMonth"), monthlyData_3, by = "yearMonth"), monthlyData_4, by = "yearMonth")


write_xlsx(merged_HK,"merged_HK.xlsx")

Can <- read_excel("C:/Users/ChenJunru/Desktop/公共数据库新数据/公共数据库1110.xlsx", 
                        sheet = "Can")
monthlyData_Can <- weekToMonth(Can$ParaInfluenza, year = 2013, wkIndex = 35, wkMethod = "ISO")
monthlyData_Can$Value <- round(monthlyData_Can$value)
write_xlsx(monthlyData_Can,"monthlyData_Can.xlsx")
getwd()

Scotland <- read_excel("C:/Users/ChenJunru/Desktop/公共数据库新数据/公共数据库1110.xlsx", 
                  sheet = "Scotland")
ScotlandData <- weekToMonth(Scotland$NumberCasesPerWeek, datStart = "03-10-2016", wkMethod = "startDat")
write_xlsx(ScotlandData,"ScotlandData.xlsx")

Argentina <- read_excel("C:/Users/ChenJunru/Desktop/PAHO_Full_Data.xlsx", 
                        sheet = "Argentina")

colnames(Argentina)
ArgentinaData<- weekToMonth(Argentina$Parainfluenza, year = 2018, wkIndex = 1, wkMethod = "ISO")
ArgentinaData$Value <- round(ArgentinaData$value)
sum(ArgentinaData$Value)
write_xlsx(ArgentinaData,"ArgentinaDataa.xlsx")

Barbados <- read_excel("C:/Users/ChenJunru/Desktop/PAHO_Full_Data.xlsx", 
                        sheet = "Barbados")
BarbadosData<- weekToMonth(Barbados$`Parainfluenza*`, year = 2018, wkIndex = 1, wkMethod = "ISO")
BarbadosData$Value <- round(BarbadosData$value)
sum(BarbadosData$Value)


Bolivia <- read_excel("C:/Users/ChenJunru/Desktop/PAHO_Full_Data.xlsx", 
                       sheet = "Bolivia - CENETROP")
BoliviaData<- weekToMonth(Bolivia$`Parainfluenza*`, year = 2018, wkIndex = 1, wkMethod = "ISO")
BoliviaData$Value <- round(BoliviaData$value)
sum(BoliviaData$Value)

Chile <- read_excel("C:/Users/ChenJunru/Desktop/PAHO_Full_Data.xlsx", 
                      sheet = "Chile")
ChileData<- weekToMonth(Chile$`Parainfluenza*`, year = 2018, wkIndex = 1, wkMethod = "ISO")
ChileData$Value <- round(ChileData$value)
sum(ChileData$Value)
write_xlsx(ChileData,"ChileData.xlsx")


Sheet1 <- read_excel("C:/Users/ChenJunru/Desktop/PAHO_Full_Data.xlsx", 
                    sheet = "Sheet1")

sheetdata<- weekToMonth(Sheet1$Venezuela, year = 2017, wkIndex = 1, wkMethod = "ISO")
sheetdata$Value <- round(sheetdata$value)
