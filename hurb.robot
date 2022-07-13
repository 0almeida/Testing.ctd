***Settings***

Library   SeleniumLibrary
Resource        .prova/hurb.resource
Test Setup      Abrir o novo site da hurb
Test Teardown   Closed Browser

***Test Cases***
validação de compra de pacote de viagens
 Permitir e aceitar cookies
 Clicar em “Pacotes”
 Clicar o "Pacote de Viagem - Roma + Paris + Amsterdam - 2024"
 Escolher pacote
 Selecionar Partida/cidade
 Selecionar Data escolhida + diarias

validação de pagamento
  Escolher metodo de pagamento
  Selecionar boleto parcelado
  Aceitar Termos
  Finalizar Compra