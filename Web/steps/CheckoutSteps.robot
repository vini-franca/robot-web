*** Settings ***

Resource    ../resources/config.robot

*** Keywords ***
#### DADO

#### E
E clico em Shopping cart
    Clicar no botão                   ${BOTAO_SHOPPING_CART}

E configuro os dados para finalizar a compra
    Select Checkbox                   ${CHECKBOX_TERMS}
    Clicar no botão                   ${BOTAO_CHECKOUT}
    Clicar no botão                   ${BOTAO_CONTINUE_ADDRESS}
    Clicar no botão                   ${BOTAO_CONTINUE_SHIPPING}
    Clicar no botão                   ${BOTAO_CONTINUE_METHOD}
    Scroll Element Into View          ${BOTAO_CONTINUE_PAYMENT}
    Clicar no botão                   ${BOTAO_CONTINUE_PAYMENT}
    Scroll Element Into View          ${BOTAO_CONTINUE_INFO}
    Clicar no botão                   ${BOTAO_CONTINUE_INFO}
    Scroll Element Into View          ${BOTAO_CONFIRM}
    Clicar no botão                   ${BOTAO_CONFIRM}

E configuro os dados para realizar a compra por cheque
    Select Checkbox                   ${CHECKBOX_TERMS}
    Clicar no botão                   ${BOTAO_CHECKOUT}
    Clicar no botão                   ${BOTAO_CONTINUE_ADDRESS}
    Clicar no botão                   ${BOTAO_CONTINUE_SHIPPING}
    Clicar no botão                   ${BOTAO_CONTINUE_METHOD}
    Scroll Element Into View          ${SET_CHEQUE}
    Clicar no botão                   ${SET_CHEQUE}
    Scroll Element Into View          ${BOTAO_CONTINUE_PAYMENT}
    Clicar no botão                   ${BOTAO_CONTINUE_PAYMENT}
    Scroll Element Into View          ${BOTAO_CONTINUE_INFO}
    Clicar no botão                   ${BOTAO_CONTINUE_INFO}
    Scroll Element Into View          ${BOTAO_CONFIRM}
    Clicar no botão                   ${BOTAO_CONFIRM}

E configuro os dados para realizar a compra por cartão de crédito
    ${NOME_ALEATORIO}               FakerLibrary.Name
    Select Checkbox                 ${CHECKBOX_TERMS}
    Clicar no botão                 ${BOTAO_CHECKOUT}
    Clicar no botão                 ${BOTAO_CONTINUE_ADDRESS}
    Clicar no botão                 ${BOTAO_CONTINUE_SHIPPING}
    Clicar no botão                 ${BOTAO_CONTINUE_METHOD}
    Scroll Element Into View        ${SET_CREDITO}
    Clicar no botão                 ${SET_CREDITO}
    Scroll Element Into View        ${BOTAO_CONTINUE_PAYMENT}
    Clicar no botão                 ${BOTAO_CONTINUE_PAYMENT}
    Inserir Texto                   ${CAMPO_CARDHOLDER}           ${NOME_ALEATORIO}
    Inserir Texto                   ${CAMPO_CARDNUMBER}           ${USER_CARDNUMBER}
    Inserir Texto                   ${CAMPO_CARDCODE}             ${USER_CARDCODE}
    Clicar no botão                 ${BOTAO_CONTINUE_INFO}
    Scroll Element Into View        ${BOTAO_CONFIRM}
    Clicar no botão                 ${BOTAO_CONFIRM}

E configuro os dados para realizar a compra por ordem de pagamento
    Select Checkbox                   ${CHECKBOX_TERMS}
    Clicar no botão                   ${BOTAO_CHECKOUT}
    Clicar no botão                   ${BOTAO_CONTINUE_ADDRESS}
    Clicar no botão                   ${BOTAO_CONTINUE_SHIPPING}
    Clicar no botão                   ${BOTAO_CONTINUE_METHOD}
    Scroll Element Into View          ${SET_ORDEMPGTO}
    Clicar no botão                   ${SET_ORDEMPGTO}
    Scroll Element Into View          ${BOTAO_CONTINUE_PAYMENT}
    Clicar no botão                   ${BOTAO_CONTINUE_PAYMENT}
    Clicar no botão                   ${BOTAO_CONTINUE_INFO}
    Scroll Element Into View          ${BOTAO_CONFIRM}
    Clicar no botão                   ${BOTAO_CONFIRM}

#### QUANDO
Quando adiciono um PC ao carrinho
    Clicar no botão                   ${SET_COMPUTADOR}

#### ENTÃO

#### TEARDOWN
Fechar Navegador
    Close Browser