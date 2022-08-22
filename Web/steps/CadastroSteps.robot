*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/CadastroPage.robot
Resource    ../resources/config.robot

*** Keywords ***
#### DADO
Que esteja na tela HOME do site Demo Web Shop
    Open Browser                    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${CABEÇALHO}
    Title Should Be                 Demo Web Shop

#### E
Clico em Register
    Click Element                   ${BOTAO_REGISTER}

Clico em Login
     Click Element                  ${BOTAO_LOGIN}
     
Clico em Log out
    Click Element                   ${BOTAO_LOGOUT}

Preencho meu email no campo newsletter
    Input Text                      ${CAMPO_NEWSLETTER}        sergio.ramos@gmail.com
    Click Element                   ${BOTAO_SUBSCRIBE}

#### QUANDO
Envio o formulário
    Click Element                   ${BOTAO_REGISTER}
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          Sergio
    Input Text                      ${CAMPO_LASTNAME}           Ramos
    Input Text                      ${CAMPO_EMAIL}              sergio.ramos@gmail.com
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Input Text                      ${CAMPO_PASSWORD2}          teste123
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio meu usuário e senha
    Input Text                      ${CAMPO_EMAIL}              sergio.ramos@gmail.com
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Click Element                   ${BOTAO_SUBMIT_LOGIN}

#### ENTÃO
Devo receber a mensagem "${CADASTRO_MSG}"
    Page Should Contain             ${CADASTRO_MSG}

Devo visualizar "${CONFIRM_LOGIN}" no cabeçalho
    Page Should Contain             ${CONFIRM_LOGIN}

Devo visualizar uma mensagem "${NEWSLETTER_MSG}"
    Wait Until Page Contains        ${NEWSLETTER_MSG}

Devo visualizar a opção Login no cabeçalho
    Wait Until Element Is Visible    ${BOTAO_LOGIN}

#### TEARDOWN
Fechar Navegador
    Close All Browsers
