*** Settings ***
Resource       ../resources/config.robot

*** Keywords ***
#### DADO

#### E
E Faço login com minhas credenciais
    [Arguments]                     ${EMAIL_USUARIO}    ${SENHA_USUARIO}
    Clicar no botão                 ${BOTAO_LOGIN}
    Inserir Texto                   ${CAMPO_EMAIL}              ${EMAIL_USUARIO}
    Inserir Texto                   ${CAMPO_PASSWORD}           ${SENHA_USUARIO}
    Clicar no botão                 ${BOTAO_SUBMIT_LOGIN}

E Clico em add to cart
     Clicar no botão                  ${BOTAO_ADD_CART}

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
    Clicar no botão                   ${BOTAO_UPDATE_CART}

#### QUANDO
Quando seleciono um computador
    Clicar no botão                   ${BOTAO_COMPUTER}
    Clicar no botão                   ${BOTAO_DESKTOPS}
    Clicar no botão                   ${SET_COMPUTADOR}

Quando seleciono um livro
    Clicar no botão                   ${BOTAO_BOOKS}
    Clicar no botão                   ${SET_BOOK}

Quando seleciono um celular
    Clicar no botão                   ${BOTAO_ELETRONICS}
    Clicar no botão                   ${BOTAO_CELLPHONES}
    Clicar no botão                   ${SET_SMARTPHONE}

Quando seleciono peças de vestuário
    Clicar no botão                   ${BOTAO_APPAREL&SHOES}
    Clicar no botão                   ${SET_SHOES}
    Clicar no botão                   ${BOTAO_ADD_CART}
    Clicar no botão                   ${BOTAO_APPAREL&SHOES}
    Clicar no botão                   ${SET_JEANS}

Quando seleciono arquivo de download digital
    Clicar no botão                 ${BOTAO_DIGITAL_DOWNLOADS}
    Clicar no botão                 ${SET_ALBUM}
    Clear Element Text              ${QTY_ALBUM}
    Inserir Texto                   ${QTY_ALBUM}                2

Quando seleciono jóias
    Clicar no botão                   ${BOTAO_JEWELRY}
    Clicar no botão                   ${SET_JEWELRY}
    Clicar no botão                   ${SELECT_MATERIAL}
    Inserir Texto                     ${SELECT_LENGHT}            18

Quando seleciono um gift card
    Clicar no botão                   ${BOTAO_GIFT_CARDS}
    Clicar no botão                    ${SET_GIFT_CARD}
    Inserir Texto                      ${NOME_DESTINATARIO}        Isabella
    Inserir Texto                      ${MENSAGEM_GIFT}            Teste QA - 2022

Quando vou até Shoping cart
    Clicar no botão                    ${BOTAO_SHOPPING_CART}

#### ENTÃO


