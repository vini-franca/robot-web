*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/CheckoutPage.robot
Resource    ../resources/config.robot

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
    Input Text                      ${CAMPO_EMAIL}           sergio.ramos@gmail.com
    Input Text                      ${CAMPO_PASSWORD}        teste123
    Click Element                   ${BOTAO_SUBMIT_LOGIN}

Clico em Shopping cart
    Click Element                   ${BOTAO_SHOPPING_CART}

Configuro os dados para finalizar a compra
    Select Checkbox                 ${CHECKBOX_TERMS}
    Click Element                   ${BOTAO_CHECKOUT}
    Click Element                   ${SELECT_COUNTRY}
    Input Text                      ${CAMPO_CITY}             Houston
    Input Text                      ${CAMPO_ADDRESS}          Avenida Dona Belmira Marin
    Input Text                      ${CAMPO_PHONE}            11932116547
    Input Text                      ${CAMPO_ZIP}              04879456
    Wait Until Element Is Enabled   ${BOTAO_CONTINUE_ADDRESS}
    Click Element                   ${BOTAO_CONTINUE_ADDRESS}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_SHIPPING}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_METHOD}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
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
    Click Element                   ${SET_CHEQUE}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
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
    Click Element                   ${SET_CREDITO}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Input Text                      ${CAMPO_CARDHOLDER}         Sergio A Ramos
    Input Text                      ${CAMPO_CARDNUMBER}         4532 4213 7891 0274
    Input Text                      ${CAMPO_CARDCODE}           478
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
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
    Click Element                   ${SET_ORDEMPGTO}
    Click Element                   ${BOTAO_CONTINUE_PAYMENT}
    Sleep                           3s
    Click Element                   ${BOTAO_CONTINUE_INFO}
    Sleep                           3s
    Click Element                   ${BOTAO_CONFIRM}

#### QUANDO
Adiciono um PC ao carrinho
    Click Element                   ${SET_COMPUTADOR}

#### ENTÃO
Devo receber a mensagem "${CHECKOUT_MSG}"
    Wait Until Page Contains        ${CHECKOUT_MSG}

#### TEARDOWN
Fechar Navegador
    Close All Browsers
