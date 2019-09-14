gapminder <- read.table("gapminder.txt", header = TRUE)

fahrenheit_to_celsius <- function(temp){
  celsius <- (temp-32)*5/9
  return (celsius)
}
celsius_to_kelvin <- function(temp_c){
  kelvin <- temp_c+273.15
  return(kelvin)
}

fahrenheit_to_kelvin <- function(temp_f){
  celsius <- fahrenheit_to_celsius(temp_f)
  kelvin <- celsius_to_kelvin(celsius)
  return(kelvin)
}

MeanLifeExp <- function(Continent){
  Subset_Continent_LifeExp <- gapminder[gapminder$continent == Continent,"lifeExp"]
  lifeExp <- mean(Subset_Continent_LifeExp)
  return(lifeExp)
}
MeanLifeExp("Europe")

x <- 8
if(x>10){
  print("x is greater than 10")
}else if(x>5){
  print("x is greater than 5 and less than 10")
}else{
  print("x is smaller than 5")
}

# Challenge 2
AsiaLifeExp <- MeanLifeExp("Asia")
if(AsiaLifeExp >= 50){
  print("Life Expectancy of Asis is greater than or equal to 50")
}else{
  print("Life Expectancy of Asis is lower than 50")
}

for (i in 1:10){
  print(i)
}

menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99,2.99,3.29,1.89)
myorder_df <- data.frame(menuItems,menuType,menuCost)

for(items in myorder_df$menuItems){
  myorder_df_subset <- myorder_df[myorder_df$menuItems == items, ]
  print(items)
  print(myorder_df_subset$menuCost)
}

# Challenge 3
gapminder <- read.table("gapminder.txt", header = TRUE)
continent_list <- unique(gapminder$continent)
for(continent in continent_list){
  continent_subset <- gapminder[gapminder$continent == continent,"lifeExp"]
  tmp <- mean(continent_subset)
  if(tmp >= 50){
    print(paste0("Life expectancy in ", continent, " is greater than or equal to 50"))
  }else{
    print(paste0("Life expectancy in ", continent, " is less than 50"))
  }
}
