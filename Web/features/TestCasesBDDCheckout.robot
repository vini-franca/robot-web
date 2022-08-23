*** Settings ***
Resource         ../steps/CheckoutSteps.robot
Resource         ../resources/BDDpt-br.robot

Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Finalizar compra com pagamento em dinheiro
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para finalizar a compra
    Entao devo receber a mensagem "Your order has been successfully processed!"

Cenário 02: Finalizar compra com pagamento em cheque
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para realizar a compra por cheque
    Entao devo receber a mensagem "Your order has been successfully processed!"

Cenário 03: Finalizar compra com pagamento em cartão de crédito
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para realizar a compra por cartão de crédito
    Entao devo receber a mensagem "Your order has been successfully processed!"

Cenário 04: Finalizar compra com pagamento em ordem de pagamento
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais
    Quando adiciono um PC ao carrinho
    E clico em Shopping cart
    E configuro os dados para realizar a compra por ordem de pagamento
    Entao devo receber a mensagem "Your order has been successfully processed!"