*** Settings ***
Library          SeleniumLibrary
Resource        ../pages/CadastroPage.robot
Resource        ../resources/config.robot


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
    Input Text                      ${CAMPO_LASTNAME}           Ramos
    Input Text                      ${CAMPO_EMAIL}              charles.xavier@gmail.com
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Input Text                      ${CAMPO_PASSWORD2}          teste123
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário sem preencher o last name
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          Charles
    Input Text                      ${CAMPO_EMAIL}              charles.xavier@gmail.com
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Input Text                      ${CAMPO_PASSWORD2}          teste123
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário sem preencher o email
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          Charles
    Input Text                      ${CAMPO_LASTNAME}           Xavier
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Input Text                      ${CAMPO_PASSWORD2}          teste123
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário com um email inválido
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          Charles
    Input Text                      ${CAMPO_LASTNAME}           Xavier
    Input Text                      ${CAMPO_EMAIL}              charles.xavier@gmail
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Input Text                      ${CAMPO_PASSWORD2}          teste123
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Envio o formulário com senhas divergentes
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          Charles
    Input Text                      ${CAMPO_LASTNAME}           Xavier
    Input Text                      ${CAMPO_EMAIL}              charles.xavier@gmail.com
    Input Text                      ${CAMPO_PASSWORD}           teste123
    Input Text                      ${CAMPO_PASSWORD2}          teste1234
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

#### ENTÃO
Devo receber a mensagem "${VALIDACAO_MSG}"
    Page Should Contain             ${VALIDACAO_MSG}

#### TEARDOWN
Fechar Navegador
    Close Browser
