library(readxl)
data_xl<- read_excel(file.choose(), na="NA")

library(ggplot2)

ggplot(data = data_xl, aes(x=Jahr))+
  geom_line(aes(y=Berlin, color="1"), linetype=1, linewidth=1)+
  geom_point(aes(y=Berlin, color="1"), size=2)+
  geom_line(aes(y=Deutschland, color="2"), linetype=1, linewidth=1)+
  geom_point(aes(y=Deutschland, color="2"), size=2)+
  labs(y="Income in €", x="Year", title="Disposable income of private households including private non-profit institutions in Berlin and all of Germany")+
  theme(plot.title = element_text(hjust = 0.5))+
  scale_x_continuous(breaks = seq(1995,2020, by=5))+
  scale_y_continuous(expand = c(0,0), limits = c(0, 25000))+
  scale_color_manual(values = c("darkgreen", "steelblue"), name="Legend:", labels=c("Berlin","Germany"))+
  theme(legend.position = "bottom")

