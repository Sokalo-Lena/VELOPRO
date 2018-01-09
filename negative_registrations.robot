*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***

#Negative test
#    Click Element  css=div.auth-wrap > div.reg > a
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.message > p:nth-child(1)  Поле емейл є обов'язковим для заповнення.
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.message > p:nth-child(2)  Поле ім`я є обов'язковим для заповнення.
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.message > p:nth-child(3)  Поле пароль є обов'язковим для заповнення.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(3)  qawsed@cvf
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p:nth-child(1)  Поле емейл повинне містити коректну електронну адресу.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(1)  11111111114321@
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p:nth-child(2)  Поле ім`я має хибний формат.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(1)  Лолазаза
#    Input text  css=div.owl-item.active > div > form > input:nth-child(3)  1234@gmail.com
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p  Поле пароль є обов'язковим для заповнення.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(9)  123
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p  Текст в полі пароль повинен містити не менше 6 символів.,Поле пароль не збігається з підтвердженням.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(9)  1q2w3e
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p  Поле пароль не збігається з підтвердженням.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(10)  1q
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p  Поле пароль не збігається з підтвердженням.
#    Input text  css=div.owl-item.active > div > form > input:nth-child(10)  1q2w3e
#    Input text  css=div.owl-item.active > div > form > input:nth-child(4)  1qqwwe123  #telefon
#    Click Element  css=div.owl-item.active > div > div.next-btn > a
#    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div.owl-item.active > div > div.message > p  Поле телефон має хибний формат.

Positive test
    Click Element  css=div.auth-wrap > div.reg > a
    Element Should Contain  css=div:nth-child(1) > div > div.step-title.step-green  Крок 1
    Element Should Contain  css=div:nth-child(1) > div > div.step-desc  Заповни інформацію про себе
    Input text  css=div.owl-item.active > div > form > input:nth-child(1)  Олена
    Input text  css=div.owl-item.active > div > form > input:nth-child(3)  777sok+13@rambler.ru
#     при кожному тестуванні міняти мейл
    Input text  css=div.owl-item.active > div > form > input:nth-child(9)  0987654321
    Input text  css=div.owl-item.active > div > form > input:nth-child(10)  0987654321
    Click Element  css=div.owl-item.active > div > div.next-btn > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=div:nth-child(2) > div > div.step-title.step-green  Крок 2
    Element Should Contain  css=div:nth-child(2) > div > div.step-desc  Заповни інформацію про велосипед
    Input text  css=#add-bicycle > input:nth-child(1)  Китай
    Click Element  css=#colorselector > div:nth-child(7)
    Input text  css=#add-bicycle > input:nth-child(6)  Орленок
    Input text  css=#add-bicycle > input:nth-child(7)  123qwe-nj67
    Click Element  css=#add-bicycle > label.dropzone.dz-clickable > div > span
