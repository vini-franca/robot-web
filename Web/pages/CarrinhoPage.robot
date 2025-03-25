*** Variables ***
${CABEÇALHO}                xpath=.//img[@alt='Tricentis Demo Web Shop']
${BOTAO_LOGIN}              class=ico-login
${CAMPO_EMAIL}              id=Email
${CAMPO_PASSWORD}           id=Password
${BOTAO_SUBMIT_LOGIN}       xpath=.//input[@value='Log in']
${BOTAO_SHOPPING_CART}      class=cart-label
${BOTAO_COMPUTER}           xpath=.//a[@href='/computers']
${BOTAO_BOOKS}              xpath=.//a[@href='/books']
${BOTAO_GIFT_CARDS}         xpath=.//a[@href='/gift-cards']
${BOTAO_ELETRONICS}         xpath=.//a[@href='/electronics']
${BOTAO_JEWELRY}            xpath=.//a[@href='/jewelry']
${BOTAO_DIGITAL_DOWNLOADS}  xpath=.//a[@href='/digital-downloads']
${BOTAO_APPAREL&SHOES}      xpath=.//a[@href='/apparel-shoes']
${BOTAO_CELLPHONES}         xpath=.//a[@title='Show products in category Cell phones']
${BOTAO_DESKTOPS}           xpath=.//a[@title='Show products in category Desktops']
${BOTAO_ADD_CART}           xpath=.//input[@class='button-1 add-to-cart-button']
${BOTAO_UPDATE_CART}        xpath=.//input[@name='updatecart']
${QTY_ALBUM}                class=qty-input
${SET_COMPUTADOR}           xpath=.//a[@href='/build-your-cheap-own-computer']
${SET_BOOK}                 xpath=.//a[@href='/fiction']
${SET_GIFT_CARD}            xpath=.//a[@href='/100-physical-gift-card']
${SET_SMARTPHONE}           xpath=.//a[@href='/smartphone']
${SET_SHOES}                xpath=.//a[@href='/blue-and-green-sneaker']
${SET_JEWELRY}              xpath=.//a[@href='/create-it-yourself-jewelry']
${SET_JEANS}                xpath=.//a[@href='/blue-jeans']
${SET_ALBUM}                xpath=.//a[@href='/album-3']
${SELECT_MATERIAL}          xpath=.//select[@id='product_attribute_71_9_15']//option[3]
${SELECT_LENGHT}            id=product_attribute_71_10_16
${NOME_DESTINATARIO}        id=giftcard_4_RecipientName
${MENSAGEM_GIFT}            id=giftcard_4_Message
${CHECKBOX_REMOVE_PC}       xpath=(//input[@name='removefromcart'])[1]
${CHECKBOX_REMOVE_BOOK}     xpath=(//input[@name='removefromcart'])[2]
${CHECKBOX_REMOVE_CELL}     xpath=(//input[@name='removefromcart'])[3]
${CHECKBOX_REMOVE_SHOES}    xpath=(//input[@name='removefromcart'])[4]
${CHECKBOX_REMOVE_JEANS}    xpath=(//input[@name='removefromcart'])[5]
${CHECKBOX_REMOVE_DIGITAL}  xpath=(//input[@name='removefromcart'])[6]
${CHECKBOX_REMOVE_JEWELRY}  xpath=(//input[@name='removefromcart'])[7]
${CHECKBOX_REMOVE_GIFT}     xpath=(//input[@name='removefromcart'])[8]

