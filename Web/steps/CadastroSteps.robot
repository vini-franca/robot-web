*** Settings ***
Resource    ../resources/config.robot

*** Keywords ***
#### DADO
Dado que esteja na tela HOME do site Demo Web Shop
    ${chromedriver_path}=    Setup Chromedriver
    Open Browser    ${URL}    Chrome    executable_path=${chromedriver_path}
    Maximize Browser Window
    Wait Until Element Is Visible   ${CABEÇALHO}
    Title Should Be                 Demo Web Shop

#### E
E vou até a página de endereços
    Go To                           ${URL}/customer/addresses

E clico em Add new
    Click Element                   ${BOTAO_ADD}

E clico em Register
    Click Element                   ${BOTAO_REGISTER}

E clico em Login
     Click Element                  ${BOTAO_LOGIN}
     
E clico em Log out
    Click Element                   ${BOTAO_LOGOUT}

E preencho meu email no campo newsletter
    Input Text                      ${CAMPO_NEWSLETTER}        ${USER_EMAIL}
    Click Element                   ${BOTAO_SUBSCRIBE}
    Scroll Element Into View        locator
    Set Focus To Element    locator

#### QUANDO
Quando envio o formulário
    Click Element                   ${BOTAO_REGISTER}
    Click Element                   ${BOTAO_GENDER}
    Input Text                      ${CAMPO_FIRSTNAME}          ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME}           ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Input Text                      ${CAMPO_PASSWORD2}          ${USER_PASSWORD2}
    Click Element                   ${BOTAO_SUBMIT_REGISTER}

Quando envio o formulário com meus dados
    Input Text                      ${CAMPO_FIRSTNAME_ADDRESS}   ${USER_FIRSTNAME}
    Input Text                      ${CAMPO_LASTNAME_ADDRESS}    ${USER_LASTNAME}
    Input Text                      ${CAMPO_EMAIL_ADDRESS}       ${USER_EMAIL}
    Click Element                   ${SELECT_COUNTRY}
    Input Text                      ${CAMPO_CITY}                ${USER_CITY}
    Input Text                      ${CAMPO_ADDRESS}             ${USER_ADDRESS}
    Input Text                      ${CAMPO_PHONE}               ${USER_PHONE}
    Input Text                      ${CAMPO_ZIP}                 ${USER_ZIP}
    Click Element                   ${BOTAO_SUBMIT_ADDRESS}

Quando envio meu usuário e senha
    Input Text                      ${CAMPO_EMAIL}              ${USER_EMAIL}
    Input Text                      ${CAMPO_PASSWORD}           ${USER_PASSWORD}
    Click Element                   ${BOTAO_SUBMIT_LOGIN}

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
