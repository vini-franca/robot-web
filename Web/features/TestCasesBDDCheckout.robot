*** Settings ***
Resource         ../resources/config.robot
Test Teardown    Close Browser

*** Test Cases ***
Cenário 01: Finalizar compra com pagamento em dinheiro
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_novo}    ${dados_usuario.senha}
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para finalizar a compra
    Então devo receber a mensagem "Your order has been successfully processed!"

Cenário 02: Finalizar compra com pagamento em cheque
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_ficticio}    ${dados_usuario.senha}
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para realizar a compra por cheque
    Então devo receber a mensagem "Your order has been successfully processed!"

Cenário 03: Finalizar compra com pagamento em cartão de crédito
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_corporativo}    ${dados_usuario.senha}
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para realizar a compra por cartão de crédito
    Então devo receber a mensagem "Your order has been successfully processed!"

Cenário 04: Finalizar compra com pagamento em ordem de pagamento
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_pessoal}    ${dados_usuario.senha}
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para realizar a compra por ordem de pagamento
    Então devo receber a mensagem "Your order has been successfully processed!"