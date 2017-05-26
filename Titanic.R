
# Check out the structure of titanic
str(titanic)

# Using bar geometrics to find survival chances 
ggplot(titanic,aes(x=factor(pclass),fill = factor(sex)))+geom_bar(position = "dodge")


# Impossible in the above instruction without survival column so adding a facet_grid of survival
ggplot(titanic,aes(x=factor(pclass),fill = factor(sex)))+geom_bar(position = "dodge") + facet_grid(". ~ survived")

# Position jitter
posn.j <- position_jitter(0.5, 0)

# Improvising: using jitter and setting trasnperancy to overcome overlapping in the previous plot 
ggplot(titanic,aes(x=factor(pclass),y = age,col = factor(sex)))+geom_jitter(position = posn.j,size = 3,alpha = 0.5) + facet_grid(". ~ survived")


