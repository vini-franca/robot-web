*** Settings ***
Resource        ../resources/config.robot

*** Keywords ***
#### DADO

#### E

#### QUANDO
Quando envio o formulário sem preencher o first name
    ${NOME_ALEATORIO}                  FakerLibrary.First Name
    ${EMAIL_ALEATORIO}                 FakerLibrary.Email
    ${SENHA_ALEATORIA}                 FakerLibrary.Password
    Set Global Variable                ${NOME_ALEATORIO}
    Set Global Variable                ${EMAIL_ALEATORIO}
    Set Global Variable                ${SENHA_ALEATORIA}
    Clicar no botão                    ${BOTAO_GENDER}
    Inserir Texto                      ${CAMPO_LASTNAME}           ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_EMAIL}              ${EMAIL_ALEATORIO}
    Inserir Texto                      ${CAMPO_PASSWORD}           ${SENHA_ALEATORIA}
    Inserir Texto                      ${CAMPO_PASSWORD2}          ${SENHA_ALEATORIA}
    Clicar no botão                    ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário sem preencher o last name
    Clicar no botão                    ${BOTAO_GENDER}
    Inserir Texto                      ${CAMPO_FIRSTNAME}          ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_EMAIL}              ${EMAIL_ALEATORIO}
    Inserir Texto                      ${CAMPO_PASSWORD}           ${SENHA_ALEATORIA}
    Inserir Texto                      ${CAMPO_PASSWORD2}          ${SENHA_ALEATORIA}
    Clicar no botão                    ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário sem preencher o email
    Clicar no botão                    ${BOTAO_GENDER}
    Inserir Texto                      ${CAMPO_FIRSTNAME}          ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_LASTNAME}           ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_PASSWORD}           ${SENHA_ALEATORIA}
    Inserir Texto                      ${CAMPO_PASSWORD2}          ${SENHA_ALEATORIA}
    Clicar no botão                    ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário com um email inválido
    Clicar no botão                    ${BOTAO_GENDER}
    Inserir Texto                      ${CAMPO_FIRSTNAME}          ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_LASTNAME}           ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_EMAIL}              ${EMAIL_ERRO}
    Inserir Texto                      ${CAMPO_PASSWORD}           ${SENHA_ALEATORIA}
    Inserir Texto                      ${CAMPO_PASSWORD2}          ${SENHA_ALEATORIA}
    Clicar no botão                    ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário com senhas divergentes
    Clicar no botão                    ${BOTAO_GENDER}
    Inserir Texto                      ${CAMPO_FIRSTNAME}          ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_LASTNAME}           ${NOME_ALEATORIO}
    Inserir Texto                      ${CAMPO_EMAIL}              ${EMAIL_ALEATORIO}
    Inserir Texto                      ${CAMPO_PASSWORD}           ${SENHA_ALEATORIA}
    Inserir Texto                      ${CAMPO_PASSWORD2}          ${PASSWORD_ERRO}
    Clicar no botão                    ${BOTAO_SUBMIT_REGISTER}

#### ENTÃO

