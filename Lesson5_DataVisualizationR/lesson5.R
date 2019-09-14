library(ggplot2)
gapminder <- read.table("gapminder.txt", header = TRUE)
head(gapminder)
ggplot(data=gapminder, aes(x=gdpPercap,y=lifeExp))+geom_point()

ggplot(data=gapminder, aes(x=year,y=lifeExp, by=country))+
  geom_point()+
  geom_line(color = "blue")

ggplot(data=gapminder, aes(x=gdpPercap,y=lifeExp, color = continent))+
  geom_point(size=0.5, shape=17) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5)

az_row <- startsWith(as.vector(gapminder$country), c('A','Z'))
az_countries <- gapminder[az_row,]

lifeExp_plot <- ggplot(data = az_countries, aes(x=year, y=lifeExp, color=continent))+
  geom_line() +
  facet_wrap(~country) +
  labs(
    x = "Year", ## x axis title
    y = "Life Expectancy", ## y axis title
    title = "Figure 1", ## main title
    color = "Continent"
  ) +
  theme(axis.text.x=element_text(angle=45),axis.ticks.x=element_blank())

ggsave(filename = "lifeExp.png", plot = lifeExp_plot, width = 12, height = 10, dpi = 300, units="cm")
ggsave("myPlot.pdf")

# Challenge 6
ggplot(data = gapminder[gapminder$country=="Sweden",], aes(x=year, y=lifeExp)) +
  geom_bar(fill='orange', stat = "identity")
e_rows <- startsWith(as.vector(gapminder$country), c('E'))
e_countries <- gapminder[e_rows,]
ggplot(data = e_countries, aes(x=year, y=pop/1000000, fill = continent))+
  geom_bar(stat = "identity")+
  facet_wrap(~country)+
  labs(
    x = "Year",
    y = "Population (millions)",
    title = "Figure 2",
    fill = "Continent"
  )+
  theme(axis.text.x=element_text(angle=45), axis.ticks.x=element_blank()) +
  theme_bw()
