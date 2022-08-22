*** Settings ***
Resource         ../steps/CadastroSteps.robot
Resource         ../resources/BDDpt-br.robot

Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Cadastrar usuário
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário
    Entao devo receber a mensagem "Your registration completed"

Cenário 02: Fazer login com dados válidos
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    Entao devo visualizar "sergio.ramos@gmail.com" no cabeçalho

Cenário 03: Cadastrar email na Newsletter
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E preencho meu email no campo newsletter
    Entao devo visualizar uma mensagem "Thank you for signing up!"

Cenário 04: Fazer logout
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Login
    Quando envio meu usuário e senha
    E clico em Log out
    Entao devo visualizar a opção Login no cabeçalho