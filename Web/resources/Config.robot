*** Variable ***
${BROWSER}              chrome
${URL}                  http://demowebshop.tricentis.com/

*** Settings ***
Resource       ../steps/CadastroSteps.robot
Resource       ../steps/CarrinhoSteps.robot
Resource       ../steps/CheckoutSteps.robot
Resource       ../steps/ValidarCadastroSteps.robot
Resource       ../pages/DadosUserPage.robot
Resource       ../pages/CarrinhoPage.robot
Resource       ../pages/CadastroPage.robot
Resource       ../pages/CheckoutPage.robot
Library        SeleniumLibrary
Library        ../resources/open_chrome.py
Variables      qa.yaml

*** Keywords ***
Então devo receber a mensagem "${VALIDACAO_MSG}"
    Page Should Contain             ${VALIDACAO_MSG}