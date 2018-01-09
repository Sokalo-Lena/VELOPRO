*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Main Page
    Element Should Contain  css=div > div.title  Захисти свій велосипед від крадіжки
    Element Should Contain  css=div.find > a  ЗНАЙТИ
    Element Should Contain  css=div.reg > a  ЗАРЕЄСТРУВАТИ
    Element Should Contain  css=#content > div.container > div > div > div  Як це працює?
    Element Should Contain  css=div.btn-police > a  Перевірити велосипед у базі
    Click Element  css=#navbarSupportedContent > ul > li:nth-child(2) > a  #пошук
    Click Element  css=#navbarSupportedContent > ul > li.logo > a > img  #logotyp
    Click Element  css=#navbarSupportedContent > ul > li:nth-child(4) > a  #викрадені
    Go Back
    Click Element  css=#navbarSupportedContent > ul > li:nth-child(5) > a  #Увійти
#    Mouse Over  css=#signup > div > div > div.modal-header > button > span
#    Wait Until Keyword Succeeds	 3x	 2000ms  Mouse Down  css=#signup > div > div > div.modal-header > button > span
