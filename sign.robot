*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Sign positive
    Click Element  css=#navbarSupportedContent > ul > li:nth-child(5) > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=#exampleModalLongTitle  АВТОРИЗАЦІЯ
    Input text  css=#fgEmail  777sok+10@rambler.ru
    Input text  css=#fgPass  0987654321
    Click Element  css=#signup > div > div > div.modal-body > form > div.reg > button