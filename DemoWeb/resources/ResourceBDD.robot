*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/BlogPage.robot

*** Keywords ***
#### DADO
Que esteja na tela HOME do blog robotizando testes
    Open Browser    ${URL}  ${BROWSER}
    Wait Until Element Is Visible   ${CABEÇALHO}
    Title Should Be     Robotizando Testes

Que esteja na tela de resultado da pesquisa pela postagem "${TITULO_POSTAGEM}"
    Page Should Contain     ${TITULO_POSTAGEM}

#### QUANDO
Pesquisar pela palavra "${BUSCA}"
    Click Element   ${BOTAO_LUPA}
    Input Text      ${CAMPO_PESQUISAR}    ${BUSCA}
    Sleep  2s
    Click Element   ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible   ${LINK_POST}

Clicar no link da postagem
    Click Element    ${LINK_POST}
    Sleep   2s

#### ENTÃO
A postagem "${TITULO_POSTAGEM}" deve ser listada no resultado da pesquisa
    Page Should Contain     ${TITULO_POSTAGEM}

A tela da postagem "${TITULO_POSTAGEM}" deve ser mostrada
    Wait Until Element Is Visible  ${TITULO}
    Title Should Be  ${TITULO_POSTAGEM}
    Sleep   2s

#### TEARDOWN
Fechar Navegador
    Close Browser
