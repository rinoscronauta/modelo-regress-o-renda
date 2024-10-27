# install.packages("PNADcIBGE")

library(PNADcIBGE)
library(dplyr)
library(survey)

# dadosPNADc_2024 <- get_pnadc(year=2024, quarter=1)
# saveRDS(dadosPNADc_2024, 'dadosPNADc_2024.rds')

dadosPNADc_2024 <- readRDS('dadosPNADc_2024.rds')

df_variables = dadosPNADc_2024$variables
