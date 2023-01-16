
#read in study pop and create plot

library('tidyverse')

df_input <- read_csv(
  here::here("output", "input.csv"),
  col_types = cols(patient_id = col_integer(),ageVar = col_double())
)

plot_age <- ggplot(data=df_input, aes(df_input$ageVar)) + 
    geom_histogram() +
    labs(title = "Age Distribution",
    x = "Age (years)")

ggsave(
  plot= plot_age,
  filename="descriptive.png", path=here::here("output"),
)
