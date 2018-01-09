*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Search
    Click Element  css=#navbarSupportedContent > ul > li:nth-child(2) > a
    Element Should Contain  css=#content > div.inside-page-header > div.container > div > div.title  Знайди велосипед на карті
    Input text  css=div.search-form > div > div > form > div > input  123-321qwe
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