*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/CheckoutPage.robot
Resource    ../resources/config.robot
Resource    ../pages/DadosUserPage.robot


*** Keywords ***
#### DADO
Que esteja na tela HOME do site Demo Web Shop
    Open Browser                    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${CABEÇALHO}
    Title Should Be                 Demo Web Shop

#### E
Faço login com minhas credenciais
    Click Element                   ${BOTAO_LOGIN}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_LOGIN}

Clico em Shopping cart
    Click Element                   ${BOTAO_SHOPPING_CART}

Configuro os dados para finalizar a compra
    Select Checkbox                 ${CHECKBOX_TERMS}
    Click Element                   ${BOTAO_CHECKOUT}
    Click Element                   ${BOTAO_CONTINUE_ADDRESS}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_SHIPPING}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_METHOD}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONTINUE_PAYMENT}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONTINUE_INFO}
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONFIRM}
    Click Element                   ${BOTAO_CONFIRM}

Configuro os dados para realizar a compra por cheque
    Select Checkbox                 ${CHECKBOX_TERMS}
    Click Element                   ${BOTAO_CHECKOUT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_ADDRESS}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_SHIPPING}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_METHOD}
    Sleep                           3s
    Scroll Element Into View        ${SET_CHEQUE}
    Click Element                   ${SET_CHEQUE}
    Scroll Element Into View        ${BOTAO_CONTINUE_PAYMENT}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONTINUE_INFO}
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONFIRM}
    Click Element                   ${BOTAO_CONFIRM}

Configuro os dados para realizar a compra por cartão de crédito
    Select Checkbox                 ${CHECKBOX_TERMS}
    Click Element                   ${BOTAO_CHECKOUT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_ADDRESS}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_SHIPPING}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_METHOD}
    Sleep                           3s
    Scroll Element Into View        ${SET_CREDITO}
    Click Element                   ${SET_CREDITO}
    Scroll Element Into View        ${BOTAO_CONTINUE_PAYMENT}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Input Text                      ${CAMPO_CARDHOLDER}           ${USER_FIRSTNAME} ${USER_LASTNAME}
    Input Text                      ${CAMPO_CARDNUMBER}           ${USER_CARDNUMBER}
    Input Text                      ${CAMPO_CARDCODE}             ${USER_CARDCODE}
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONFIRM}
    Click Element                   ${BOTAO_CONFIRM}

Configuro os dados para realizar a compra por ordem de pagamento
    Select Checkbox                 ${CHECKBOX_TERMS}
    Click Element                   ${BOTAO_CHECKOUT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_ADDRESS}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_SHIPPING}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_METHOD}
    Sleep                           3s
    Scroll Element Into View        ${SET_ORDEMPGTO}
    Click Element                   ${SET_ORDEMPGTO}
    Scroll Element Into View        ${BOTAO_CONTINUE_PAYMENT}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
    Scroll Element Into View        ${BOTAO_CONFIRM}
    Click Element                   ${BOTAO_CONFIRM}

#### QUANDO
Adiciono um PC ao carrinho
    Click Element                   ${SET_COMPUTADOR}

#### ENTÃO
Devo receber a mensagem "${CHECKOUT_MSG}"
    Wait Until Page Contains        ${CHECKOUT_MSG}

#### TEARDOWN
Fechar Navegador
    Close Browser