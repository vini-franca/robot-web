*** Settings ***
Resource       ../resources/config.robot

*** Keywords ***
#### DADO

#### E
E Faço login com minhas credenciais
    [Arguments]                     ${EMAIL_USUARIO}    ${SENHA_USUARIO}
    Click Element                   ${BOTAO_LOGIN}
    Input Text                      ${CAMPO_EMAIL}              ${EMAIL_USUARIO}
    Input Text                      ${CAMPO_PASSWORD}           ${SENHA_USUARIO}
    Click Element                   ${BOTAO_SUBMIT_LOGIN}

E Clico em add to cart
     Click Element                  ${BOTAO_ADD_CART}

E Seleciono todos os produtos
    Select Checkbox                 ${CHECKBOX_REMOVE_PC}
    Select Checkbox                 ${CHECKBOX_REMOVE_BOOK}
    Select Checkbox                 ${CHECKBOX_REMOVE_CELL}
    Select Checkbox                 ${CHECKBOX_REMOVE_SHOES}
    Select Checkbox                 ${CHECKBOX_REMOVE_JEANS}
    Select Checkbox                 ${CHECKBOX_REMOVE_DIGITAL}
    Select Checkbox                 ${CHECKBOX_REMOVE_JEWELRY}
    Select Checkbox                 ${CHECKBOX_REMOVE_GIFT}


E clico em Update shopping cart
    Click Element                   ${BOTAO_UPDATE_CART}

#### QUANDO
Quando seleciono um computador
    Click Element                   ${BOTAO_COMPUTER}
    Click Element                   ${BOTAO_DESKTOPS}
    Click Element                   ${SET_COMPUTADOR}

Quando seleciono um livro
    Click Element                   ${BOTAO_BOOKS}
    Click Element                   ${SET_BOOK}

Quando seleciono um celular
    Click Element                   ${BOTAO_ELETRONICS}
    Click Element                   ${BOTAO_CELLPHONES}
    Click Element                   ${SET_SMARTPHONE}

Quando seleciono peças de vestuário
    Click Element                   ${BOTAO_APPAREL&SHOES}
    Click Element                   ${SET_SHOES}
    Click Element                   ${BOTAO_ADD_CART}
    Click Element                   ${BOTAO_APPAREL&SHOES}
    Click Element                   ${SET_JEANS}

Quando seleciono arquivo de download digital
    Click Element                   ${BOTAO_DIGITAL_DOWNLOADS}
    Click Element                   ${SET_ALBUM}
    Clear Element Text              ${QTY_ALBUM}
    Input Text                      ${QTY_ALBUM}                2

Quando seleciono jóias
    Click Element                   ${BOTAO_JEWELRY}
    Click Element                   ${SET_JEWELRY}
    Click Element                   ${SELECT_MATERIAL}
    Input Text                      ${SELECT_LENGHT}            18

Quando seleciono um gift card
    Click Element                   ${BOTAO_GIFT_CARDS}
    Click Element                   ${SET_GIFT_CARD}
    Input Text                      ${NOME_DESTINATARIO}        Isabella
    Input Text                      ${MENSAGEM_GIFT}            Teste QA - 2022

Quando vou até Shoping cart
    Click Element                   ${BOTAO_SHOPPING_CART}

#### ENTÃO


