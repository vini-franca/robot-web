*** Settings ***
Resource    ../resources/config.robot

*** Keywords ***
#### DADO
Dado que esteja na tela HOME do site Demo Web Shop
    # ${chromedriver_path}=    Setup Chromedriver
    # Create Webdriver    ${URL}   chrome    service=${chromedriver_path}
    ${chromedriver_service}=    Setup Chromedriver
    ${browser}=    Create Webdriver    Chrome    service=${chromedriver_service}
    Go To    ${URL}
    Maximize Browser Window
    Wait Until Element Is Visible   ${CABEÇALHO}
    Title Should Be                 Demo Web Shop

#### E
E sigo o fluxo para cadastro de endereço
    [Arguments]                     ${EMAIL_USUARIO}
    Go To                           ${URL}/customer/addresses
    Clicar no botão                 ${BOTAO_ADD}
    Inserir texto                   ${CAMPO_FIRSTNAME_ADDRESS}   ${dados_usuario.nome}
    Inserir texto                   ${CAMPO_LASTNAME_ADDRESS}    ${dados_usuario.sobrenome}
    Inserir texto                   ${CAMPO_EMAIL_ADDRESS}       ${EMAIL_USUARIO}
    Clicar no botão                 ${SELECT_COUNTRY}
    Inserir texto                   ${CAMPO_CITY}                ${dados_usuario.cidade}
    Inserir texto                   ${CAMPO_ADDRESS}             ${dados_usuario.endereco}
    Inserir texto                   ${CAMPO_PHONE}               ${dados_usuario.telefone}
    Inserir texto                   ${CAMPO_ZIP}                 ${dados_usuario.cep}
    Clicar no botão                 ${BOTAO_SUBMIT_ADDRESS}

E clico em Register
    Clicar no botão                   ${BOTAO_REGISTER}
     
E clico em Log out
    Clicar no botão                   ${BOTAO_LOGOUT}

E preencho meu email no campo newsletter
    [Arguments]                     ${EMAIL_USUARIO}
    Inserir texto                   ${CAMPO_NEWSLETTER}        ${EMAIL_USUARIO}
    Clicar no botão                 ${BOTAO_SUBSCRIBE}
    Scroll Element Into View        ${BOTAO_SUBSCRIBE}
    Set Focus To Element            ${BOTAO_SUBSCRIBE}

#### QUANDO
Quando envio o formulário
    ${EMAIL_ALEATORIO}              FakerLibrary.Email
    Clicar no botão                 ${BOTAO_REGISTER}
    Clicar no botão                 ${BOTAO_GENDER}
    Inserir texto                   ${CAMPO_FIRSTNAME}          ${dados_usuario.nome}
    Inserir texto                   ${CAMPO_LASTNAME}           ${dados_usuario.sobrenome}
    Inserir texto                   ${CAMPO_EMAIL}              ${EMAIL_ALEATORIO}
    Inserir texto                   ${CAMPO_PASSWORD}           ${dados_usuario.senha}
    Inserir texto                   ${CAMPO_PASSWORD2}          ${dados_usuario.senha}
    Clicar no botão                 ${BOTAO_SUBMIT_REGISTER}

Quando realizo login com minhas credenciais
    [Arguments]                     ${EMAIL_USUARIO}            ${SENHA}
    Clicar no botão                 ${BOTAO_LOGIN}
    Inserir texto                   ${CAMPO_EMAIL}              ${EMAIL_USUARIO}
    Inserir texto                   ${CAMPO_PASSWORD}           ${SENHA}
    Clicar no botão                 ${BOTAO_SUBMIT_LOGIN}    

#### ENTÃO
Então Devo visualizar "${CONFIRM_LOGIN}" no cabeçalho
    Page Should Contain             ${CONFIRM_LOGIN}

Então devo visualizar uma mensagem "Thank you for signing up!"
    Wait Until Page Contains        Thank you for signing up!

Então devo visualizar a opção Login no cabeçalho
    Wait Until Element Is Visible    ${BOTAO_LOGIN}

Então devo visualizar o título "My account - Addresses"
    Page Should Contain         My account - Addresses

#### TEARDOWN
Fechar Navegador
    Close Browser
