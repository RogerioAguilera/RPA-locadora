*** Settings ***
Documentation       Teste de sessão da área logada

Library    RPA.Browser.Selenium

*** Variables ***
${URL}=        http://zepalheta-web:3000/


*** Tasks ***
Deve acessar a área logada
    Open Browser        ${URL}        chrome
    Close Browser
    

