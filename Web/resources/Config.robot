*** Variables ***
${BROWSER}              chrome
${URL}                  http://demowebshop.tricentis.com/

*** Settings ***
Resource       ../steps/cadastroSteps.robot
Resource       ../steps/carrinhoSteps.robot
Resource       ../steps/checkoutSteps.robot
Resource       ../steps/validarCadastroSteps.robot
Resource       ../pages/carrinhoPage.robot
Resource       ../pages/cadastroPage.robot
Resource       ../pages/checkoutPage.robot
Library        SeleniumLibrary
Library        FakerLibrary  locale=pt_BR
Library        ../resources/open_chrome.py
Variables      qa.yaml

*** Keywords ***
Então devo receber a mensagem "${VALIDACAO_MSG}"
    Page Should Contain             ${VALIDACAO_MSG}

Clicar no botão
    [Arguments]                      ${ELEMENTO}
    Wait Until Element Is Visible    ${ELEMENTO}
    Click Element                    ${ELEMENTO}

Inserir texto
   [Arguments]                       ${ELEMENTO}    ${TEXTO}
    Wait Until Element Is Visible    ${ELEMENTO}
    Input Text                       ${ELEMENTO}    ${TEXTO} 