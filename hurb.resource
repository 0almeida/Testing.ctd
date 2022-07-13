*** Variables ***
${SITE}                  https://www.hurb.com/br
${NAVEGADOR}             Chrome 
${PACOTES}               xpath=//*[@id="__next"]/div[1]/div[2]/div/div/div[1]/div/div/button[2] 
${ROMA}                  xpath=//*[@id="__next"]/div[2]/section[1]/div/div/a[1]/img
${SELECIONAR_PACOTE}     xpath=//*[@id="__next"]/div/main/div[3]/aside/div/div/div[2]
${PARTIDA_1}             xpath=/html/body/div[14]/div/div/div/section/div/div/ul/li[3]/label/div[2]/div[2]
${PRE_FINALIZAÇÃO}       xpath=/html/body/div[14]/div/div/div/footer/button
${PRE_FINALIZAÇÃO_2}     xpath=/html/body/div[14]/div/div/div/footer/button[2]
${CONFIRMAR}             xpaath=/html/body/div[14]/div/div/div/footer/button[2]
${FORMA_PAG}             xpath=//*[@id="paymentMethods"]/ul/li[3]
${AC_TERM}               xpath=//*[@id="user-agreement"]/section
${PAGAMENTO}             xpath=//*[@id="purchase-confirmation"]/div[2]
${COOKIES}               xpath=//*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]

***Keywords***          
Abrir o novo site da hurb
  Open Browser          ${SITE}     ${NAVEGADOR}
  Maximize Browser Window

Clicar em aceitar cookies 
Execute Javascript window.scroll() 
 wait and Click   ${COOKIES}

Clicar em “Pacotes”
 Execute Javascript    window.scroll()
  Wait and Click        ${PACOTES}

Clicar em "Pacote de Viagem - Roma + Paris + Amsterdam - 20240"
 Execute Javascript    window.scroll()
 Wait and Click        ${ROMA}

Selecionar Pacote 
 Execute Javascript  window.scroll()
 wait and Click     ${SELECIONAR_PACOTE}
 Execute Javascript  window.scroll() 
 wait and Click     ${PARTIDA_1}
 Execute Javascript  window.scroll()
 wait and Click     ${PRE_FINALIZAÇÃO}
 Wait and Click     ${PRE_FINALIZAÇÃO_2}
 wait and Click     ${CONFIRMAR}

Finalização de Pagamento
 Execute Javascript  window.scroll()
 wait and Click       ${FORMA_PAG} 
 Execute Javascript  window.scroll()
 wait and Click       ${AC_TERM}
 Execute Javascript  window.scroll() 
 wait and Click       ${PAGAMENTO}


 