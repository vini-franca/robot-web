*** Settings ***
Resource         ../resources/config.robot
Test Teardown    Close Browser

*** Test Cases ***
Cenário 01: Adicionar um computador
    [Tags]  CT-001
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_ficticio}    ${dados_usuario.senha}
    Quando seleciono um computador
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 02: Adicionar um livro
    [Tags]  CT-002
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_corporativo}    ${dados_usuario.senha}
    Quando seleciono um livro
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 03: Adicionar um celular
    [Tags]  CT-003
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_pessoal}    ${dados_usuario.senha}
    Quando seleciono um celular
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 04: Adicionar peças de vestuário
    [Tags]  CT-004
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_novo}    ${dados_usuario.senha}
    Quando seleciono peças de vestuário
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 05: Adicionar arquivo de download digital
    [Tags]  CT-005
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_ficticio}    ${dados_usuario.senha}
    Quando seleciono arquivo de download digital
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 06: Adicionar jóias
    [Tags]  CT-006
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_corporativo}    ${dados_usuario.senha}
    Quando seleciono jóias
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 07: Adicionar gift cards
    [Tags]  CT-007
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_pessoal}    ${dados_usuario.senha}
    Quando seleciono um gift card
    E clico em add to cart
    Então devo receber a mensagem "The product has been added to your shopping cart"

Cenário 08: Limpar carrinho
    [Tags]  CT-008
    Dado que esteja na tela HOME do site Demo Web Shop
    E faço login com minhas credenciais    ${dados_usuario.email_ficticio}    ${dados_usuario.senha}
    Quando vou até Shoping cart
    E seleciono todos os produtos
    E clico em Update shopping cart
    Então devo receber a mensagem "Your Shopping Cart is empty!"