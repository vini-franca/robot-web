*** Settings ***
Resource         ../resources/config.robot
Test Teardown    Close Browser

*** Test Cases ***
Cenário 01: Cadastrar usuário sem inserir first name
    [Tags]  CT-001
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário sem preencher o first name
    Então devo receber a mensagem "First name is required."

Cenário 02: Cadastrar usuário sem inserir last name
    [Tags]  CT-002
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário sem preencher o last name
    Então devo receber a mensagem "Last name is required."

Cenário 03: Cadastrar usuário sem inserir o email
    [Tags]  CT-003
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário sem preencher o email
    Então devo receber a mensagem "Email is required."

Cenário 04: Cadastrar usuário inserindo um email inválido
    [Tags]  CT-004
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário com um email inválido
    Então devo receber a mensagem "Wrong email"

Cenário 05: Cadastrar usuário com senhas divergentes
    [Tags]  CT-005
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário com senhas divergentes
    Então devo receber a mensagem "The password and confirmation password do not match."
