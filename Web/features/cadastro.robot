*** Settings ***
Resource         ../resources/config.robot
Test Teardown    Close Browser

*** Test Cases ***
Cenário 01: Cadastrar usuário
    [Tags]  CT-001
    Dado que esteja na tela HOME do site Demo Web Shop
    E clico em Register
    Quando envio o formulário
    Então devo receber a mensagem "Your registration completed"

Cenário 02: Cadastrar endereço
    [Tags]  CT-002
    Dado que esteja na tela HOME do site Demo Web Shop
    Quando realizo login com minhas credenciais            ${dados_usuario.email_abdoul}    ${dados_usuario.senha}
    E sigo o fluxo para cadastro de endereço               ${dados_usuario.email_abdoul}
    Então devo receber a mensagem "My account - Addresses"

Cenário 03: Cadastrar email na Newsletter
    [Tags]  CT-003
    Dado que esteja na tela HOME do site Demo Web Shop
    Quando realizo login com minhas credenciais               ${dados_usuario.email_angela}    ${dados_usuario.senha}
    E preencho meu email no campo newsletter                  ${dados_usuario.email_angela}
    Então devo receber a mensagem "Thank you for signing up!"

Cenário 04: Fazer login com dados válidos
    [Tags]  CT-004
    Dado que esteja na tela HOME do site Demo Web Shop
    Quando realizo login com minhas credenciais            ${dados_usuario.email_corporativo}    ${dados_usuario.senha}
    Então devo visualizar "${dados_usuario.email_corporativo}" no cabeçalho

Cenário 05: Fazer logout
    [Tags]  CT-005
    Dado que esteja na tela HOME do site Demo Web Shop
    Quando realizo login com minhas credenciais            ${dados_usuario.email_abdoul}    ${dados_usuario.senha}
    E clico em Log out
    Então devo visualizar a opção Login no cabeçalho
