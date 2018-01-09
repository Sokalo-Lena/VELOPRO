*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Vikradeni
    Click Element  css=#navbarSupportedContent > ul > li:nth-child(4) > a  #викрадені
    Element Should Contain  css=div.container > div > div.title  Список викрадених велосипедів
    Element Should Contain  css=div.container > div > div.desc  Перед тим, як придбати велосипед, перевір його наявність у базі.
    Input text  css=div.search-wrap > div.search-form > div > div > form > div > input  Україна 1975
    Click Element  css=div.search-form > div > div > form > div > span > button
    Element Should Contain  css=div.search-wrap > div.search-count  Показано результатів:
    Click Element  css=div.search-wrap > div.detail-search > a  #Детальний пошук
    Element Should Contain  css=#collapseDetail > div > div > div  Введіть додаткову інформацію, щоб отримати більш чіткий результат
    Input text  css=#fgMmanufacturer  Китай
    Input text  css=#fgModel  колесо
    Input text  css=#fgSerial  N222-333qwe
    Click Element  css=#colorselector > div:nth-child(1)
    Click Element  css=#colorselector > div:nth-child(10)
    Click Element  css=#collapseDetail > div > div > form > div > div:nth-child(5)