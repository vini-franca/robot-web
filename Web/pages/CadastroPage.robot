*** Variables ***
${CABEÇALHO}                xpath=.//img[@alt='Tricentis Demo Web Shop']
${BOTAO_REGISTER}           xpath=//a[@href='/register']
${BOTAO_ADD}                xpath=.//input[@class='button-1 add-address-button']
${BOTAO_LOGIN}              class=ico-login
${BOTAO_LOGOUT}             class=ico-logout
${BOTAO_GENDER}             id=gender-male
${CAMPO_FIRSTNAME}          id=FirstName
${CAMPO_FIRSTNAME_ADDRESS}  id=Address_FirstName
${CAMPO_LASTNAME}           id=LastName
${CAMPO_LASTNAME_ADDRESS}   id=Address_LastName
${CAMPO_EMAIL}              id=Email
${CAMPO_EMAIL_ADDRESS}      id=Address_Email
${CAMPO_NEWSLETTER}         id=newsletter-email
${CAMPO_ZIP}                id=Address_ZipPostalCode
${USER_ZIP}                 04879456
${CAMPO_CITY}               id=Address_City
${USER_CITY}                Houston
${CAMPO_ADDRESS}            id=Address_Address1
${USER_ADDRESS}             Avenida Dona Belmira Marin
${CAMPO_PHONE}              id=Address_PhoneNumber
${USER_PHONE}               11932116547
${EMAIL_ERRO}               teste@teste
${CAMPO_PASSWORD}           id=Password
${PASSWORD_ERRO}            teste1234
${CAMPO_PASSWORD2}          id=ConfirmPassword
${BOTAO_SUBMIT_REGISTER}    id=register-button
${BOTAO_SUBSCRIBE}          id=newsletter-subscribe-button
${BOTAO_SUBMIT_LOGIN}       xpath=.//input[@value='Log in']
${BOTAO_SUBMIT_ADDRESS}     xpath=//input[@class='button-1 save-address-button']
${SELECT_COUNTRY}           xpath=.//select[@id='Address_CountryId']//option[2]
${SPAN_EMAIL}               xpath=//span[@for='Email']


