*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/CarrinhoPage.robot
Resource    ../resources/config.robot

*** Keywords ***
#### DADO
Que esteja na tela HOME do site Demo Web Shop
    Open Browser                    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${CABEÇALHO}
    Title Should Be                 Demo Web Shop

#### E
Faço login com minhas credenciais
    Click Element                   ${BOTAO_LOGIN}
    Input Text                      ${CAMPO_EMAIL}          roberto.justuss@gmail.com
    Input Text                      ${CAMPO_PASSWORD}       teste123
    Click Element                   ${BOTAO_SUBMIT_LOGIN}

Clico em add to cart
     Click Element                   ${BOTAO_ADD_CART}

#### QUANDO
Seleciono um computador
    Click Element                   ${BOTAO_COMPUTER}
    Click Element                   ${BOTAO_DESKTOPS}
    Click Element                   ${SET_COMPUTADOR}

Seleciono um livro
    Click Element                   ${BOTAO_BOOKS}
    Click Element                   ${SET_BOOK}

Seleciono um celular
    Click Element                   ${BOTAO_ELETRONICS}
    Click Element                   ${BOTAO_CELLPHONES}
    Click Element                   ${SET_SMARTPHONE}

Seleciono peças de vestuário
    Click Element                   ${BOTAO_APPAREL&SHOES}
    Click Element                   ${SET_SHOES}
    Click Element                   ${BOTAO_ADD_CART}
    Click Element                   ${BOTAO_APPAREL&SHOES}
    Click Element                   ${SET_JEANS}

Seleciono arquivo de download digital
    Click Element                   ${BOTAO_DIGITAL_DOWNLOADS}
    Click Element                   ${SET_ALBUM}
    Clear Element Text              ${QTY_ALBUM}
    Input Text                      ${QTY_ALBUM}                2

Seleciono jóias
    Click Element                   ${BOTAO_JEWELRY}
    Click Element                   ${SET_JEWELRY}
    Click Element                   ${SELECT_MATERIAL}
    Input Text                      ${SELECT_LENGHT}            18

Seleciono um gift card
    Click Element                   ${BOTAO_GIFT_CARDS}
    Click Element                   ${SET_GIFT_CARD}
    Input Text                      ${NOME_DESTINATARIO}        Isabella
    Input Text                      ${MENSAGEM_GIFT}            Teste QA - 2022




#### ENTÃO
Devo receber a mensagem "${CARRINHO_MSG}"
    Wait Until Page Contains        ${CARRINHO_MSG}


#### TEARDOWN
Fechar Navegador
    Close All Browsers
