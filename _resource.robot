*** Settings ***
Documentation    Suite description
Library           Selenium2Library

*** Variables ***
${HOST}  http://175201-vds-p2h.social.gmhost.pp.ua/
${BROWSER}  Chrome

*** Keywords ***
Prepare Test Environment
    Open Browser  ${HOST}  ${BROWSER}