*** Settings ***
Resource         ../steps/CadastroSteps.robot
Resource         ../resources/BDDpt-br.robot
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Cadastrar usuário
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário
    Entao devo receber a mensagem "Your registration completed"

Cenário 02: Cadastrar endereço
    [Tags]  cadastro_endereco

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E vou até a página de endereços
    E clico em Add new
    Quando envio o formulário com meus dados
    Entao devo visualizar o título "My account - Addresses"

Cenário 03: Cadastrar email na Newsletter
    [Tags]  cadastro_newsletter

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E preencho meu email no campo newsletter
    Entao devo visualizar uma mensagem "Thank you for signing up!"

Cenário 04: Fazer login com dados válidos
    [Tags]  cadastro_login

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    Entao devo visualizar "bruno.santos@hotmail.com" no cabeçalho

Cenário 05: Fazer logout
    [Tags]  cadastro_logout

    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E clico em Log out
    Entao devo visualizar a opção Login no cabeçalho