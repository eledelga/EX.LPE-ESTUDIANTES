Dts<- read.csv("DatasetEstudiantes.csv")
DTsEstudiantes <- read.csv(file.choose(),header = TRUE, sep = ',')
names(DTsEstudiantes)

names (DTsEstudiantes) = c("Time", "Email", "Description", "Hyflex", "Name", "Month",
                           "Year", "Surname", "MyFriend", "Repeater", "Expedient", 
                           "GitHub", "ProgramingLevel", "Presented", "DigitalBlock")
names(DTsEstudiantes)
attach(DTsEstudiantes)

##ALUMNO MÁS VIEJO####
min(Year)
which.min(Year) 
mayor <- subset(DTsEstudiantes, Year == 1977, "Name")
mayor

##ALUMNOS QUE CUMPLEN AÑOS ESTE MES####
birthday <- subset(DTsEstudiantes, Month ==11, "Name" ) 
birthday
birthdayJulio <- subset(DTsEstudiantes, Month ==7, "Name" ) 
birthdayJulio
sum(DTsEstudiantes$Month == "11")

##ALUMNOS CON EXPEDIENTE PAR O IMPAR####
expar <- subset(DTsEstudiantes, Expedient%%2 == 0, "Name")
expar
sum(DTsEstudiantes$Expedient%%2 == 0)

eximpar <- subset(DTsEstudiantes, Expedient%%2 != 0, "Name")
eximpar
sum(DTsEstudiantes$Expedient%%2 != 0)
percent(sum(DTsEstudiantes$Expedient%%2 != 0)/length(Expedient))

##PALABRA MÁS USADA####
nov_mat <- as.matrix(Description)
nov_mat
dim(nov_mat)
nov_mat[1:5, ]


##ESTUDIANTES QUE PRESENTARON####
expo <- subset(DTsEstudiantes, Presented == 0, "Name")
expo
sum(DTsEstudiantes$Presented == 0)
percent(sum(DTsEstudiantes$Presented == 0)/length(Presented))
        
##ESTUDIANTES PRESENTES EN CLASE####
presencial <- subset(DTsEstudiantes, Hyflex == 0, "Name")
presencial
sum(DTsEstudiantes$Hyflex == 0)

hyflex <- subset(DTsEstudiantes, Hyflex == 1, "Name")
hyflex
sum(DTsEstudiantes$Hyflex == 1)


