# install.packages("PNADcIBGE")

library(PNADcIBGE)
library(dplyr)
library(survey)
library(reactable)
library(pander)

# dadosPNADc_2024 <- get_pnadc(year=2024, quarter=1)
# saveRDS(dadosPNADc_2024, 'dadosPNADc_2024.rds')

dadosPNADc_2024 <- readRDS('dadosPNADc_2024.rds')

df_variables = dadosPNADc_2024$variables


dados_variaveis = tribble(
  ~Variável, ~Descrição,
  'UF', 'Unidade da Federação',
  'V2001', 'Número de pessoas no domicílio',
  'V2005', 'Condição no domicílio',
  'V2007', 'Sexo',
  'V2009', 'Idade do morador na data de referência',
  'V2010',	'Cor ou raça',
  'V3007',	'Já concluiu algum outro curso de graduação?',
  'VD3004',	'Nível de instrução mais elevado alcançado (pessoas de 5 anos ou mais de idade)',
  'VD4001',	'Condição em relação à força de trabalho na semana de referência para pessoas de 14 anos ou mais de idade',
  'VD4002',	'Condição de ocupação na semana de referência para pessoas de 14 anos ou mais de idade',
  'VD4020',	'Rendimento mensal efetivo de todos os trabalhos para pessoas de 14 anos ou mais de idade (apenas para pessoas que receberam em dinheiro, produtos ou mercadorias em qualquer trabalho)',
  'VD4035',	'Horas efetivamente trabalhadas na semana de referência em todos os trabalhos para pessoas de 14 anos ou mais de idade'
)

variaveis_selecionadas <- c("UF","V2001","V2005","V2007","V2009","V2010","V3007","VD3004","VD4001","VD4002","VD4020","VD4035")

df_variables = dadosPNADc_2024$variables %>% select(any_of(variaveis_selecionadas)) %>% as_tibble()
