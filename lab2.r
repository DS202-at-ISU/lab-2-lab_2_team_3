library(dbplyr)
library(ggplot2)
library(classdata)
head(ames)
View(ames)
#what variables are there?
head(ames)
#of what type are the variables?
typeof(ames)
#what does each variable mean?
ames$`Parcel ID` #parcel ID = randomized 10 digit code
ames$Address #address = house number, street name, & city
ames$Style #style = house style / how many stories the house is
ames$Occupancy #occupancy = people living in the house
ames$`Sale Date` #sale date = date of sale
ames$`Sale Price` #sale price = price of the number upon selling
range(ames$`Sale Price`) #(0, 795000)
ames$`Multi Sale` #multi sale = been sold more than once? / mostly NAs
ames$YearBuilt #year built

ames$Acres #acres = how many acres the house is on
range(ames$Acres, na.rm = TRUE)

ames$`TotalLivingArea (sf)`#total living area
my_df_no_na <- na.omit(ames)
range(my_df_no_na$`TotalLivingArea (sf)`) #range = (352, 3780)

ames$Bedrooms #bedrooms = number of bedrooms in the house
range(my_df_no_na$Bedrooms) #range = (1,4)

ames$`FinishedBsmtArea (sf)`#finished basements
range(my_df_no_na$`FinishedBsmtArea (sf)`) #range = (125,2079)

ames$`LotArea(sf)` #lot area
ames$AC #AC = reports if there is AC or not

ames$FirePlace #fireplace = reports if there is a fireplace

ames$Neighborhood #neighborhood

#is there a variable of special interest or focus?
#sale price
ames$`Sale Price`
my_df_no_na <- na.omit(ames)
range(my_df_no_na$`Sale Price`) #range = (0,795000)

ggplot(ames, aes(x = `Sale Price`)) +
  geom_histogram(binwidth = 10000) +
  labs(title = "Histogram of Sale Price",
       x = "Sale Price", y = "Count")

ames |> ggplot(aes(x = `Sale Price`, y = count)) +
  geom_point()



