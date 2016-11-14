library(tidyverse)
library(plotly)
dm <- diamonds
dm1 <- dm[sample(nrow(dm), 1000), ]
dm2 <- dm[-(sample(nrow(dm), 1000)), ]
ggplotly(ggplot(dm1) + geom_point(aes(price, carat, color = clarity)))
ggplotly(ggplot(dm1) + geom_point(aes(price, carat, color = clarity)) + facet_wrap(~cut))
ggplotly(ggplot(dm1) + geom_point(aes(price, carat, color = clarity)) + facet_wrap(~cut), scales = 'free')
