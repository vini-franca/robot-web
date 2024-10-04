*** Settings ***
Resource         ../resources/config.robot
Test Teardown    Close Browser

*** Test Cases ***
Cenário 01: Cadastrar usuário
    [Tags]  cadastro_usuario
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário
    Então devo receber a mensagem "Your registration completed"

Cenário 02: Cadastrar endereço
    [Tags]  cadastro_endereco

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E vou até a página de endereços
    E clico em Add new
    Quando envio o formulário com meus dados
    Então devo receber a mensagem "My account - Addresses"

Cenário 03: Cadastrar email na Newsletter
    [Tags]  cadastro_newsletter

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E preencho meu email no campo newsletter
    Então devo receber a mensagem "Thank you for signing up!"

Cenário 04: Fazer login com dados válidos
    [Tags]  cadastro_login

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    Então devo visualizar "vinicius.franca1@teste.com.br" no cabeçalho

Cenário 05: Fazer logout
    [Tags]  cadastro_logout

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E clico em Log out
    Então devo visualizar a opção Login no cabeçalho
