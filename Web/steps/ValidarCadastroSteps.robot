*** Settings ***
Library         SeleniumLibrary
Resource        ../pages/CadastroPage.robot
Resource        ../resources/config.robot
Resource        ../pages/DadosUserPage.robot


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

#### QUANDO
Envio o formulário sem preencher o first name
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário sem preencher o last name
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário sem preencher o email
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário com um email inválido
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${EMAIL_ERRO}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário com senhas divergentes
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${PASSWORD_ERRO}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

#### ENTÃO
Devo receber a mensagem "${VALIDACAO_MSG}"
    Page Should Contain             ${VALIDACAO_MSG}

#### TEARDOWN
Fechar Navegador
    Close Browser
