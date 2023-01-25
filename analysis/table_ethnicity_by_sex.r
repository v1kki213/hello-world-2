
#read in study pop and create plot

library('tidyverse')

df_input <- read_csv(
  here::here("output", "input.csv"),
  col_types = cols(ageVar = col_integer(), sex= col_factor(), region=col_factor(), ethnicity=col_factor())
)

df_ethSex <- as.data.frame(table(df_input$sex, df_input$ethnicity))

write_csv(df_ethSex, path=here::here("output","tab_ethSex.csv"))