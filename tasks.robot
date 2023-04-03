*** Settings ***
Documentation       Teste de sessão da área logada

Library             RPA.Browser.Selenium
Library             RPA.JavaAccessBridge


*** Variables ***
${URL}=     http://zepalheta-web:3000/


*** Tasks ***
Acessar área logada com sucesso
    Deve acessar a área logada 5 vezes


*** Keywords ***
Deve acessar a área logada 5 vezes
    FOR    ${i}    IN RANGE    5
        Open Browser    ${URL}    chrome
        Sleep    2s

        Input Text    css=#txtEmail    admin@zepalheta.com.br
        Input Password    css=input[placeholder='Senha']    pwd123
        Sleep    3s

        Click Button    xpath=(//button[normalize-space()='Entrar'])[1]
        Sleep    6s
        Wait Until Element Contains    xpath=//h1[normalize-space()='Aluguéis']    Aluguéis
    END

    Close Browser
