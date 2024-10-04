*** Settings ***
Resource        ../resources/config.robot

*** Keywords ***
#### DADO

#### E

#### QUANDO
Quando envio o formulário sem preencher o first name
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário sem preencher o last name
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário sem preencher o email
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário com um email inválido
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${EMAIL_ERRO}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário com senhas divergentes
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${PASSWORD_ERRO}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

#### ENTÃO

