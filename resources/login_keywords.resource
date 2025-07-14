*** Settings ***
Library           SeleniumLibrary
Resource    ./login_variables.resource

*** Keywords ***
Iniciar Ambiente de Teste
    [Documentation]    Configura o ambiente de teste inicial
    Log To Console    Definindo o diretório de screenshots para: ${PASTA_SCREENSHOTS}
    Set Screenshot Directory    ${PASTA_SCREENSHOTS}
    Open Browser    ${URL}    chrome
    Maximize Browser Window
Realizar Login
    [Arguments]    ${USUARIO}    ${SENHA}
    Sleep    10s
    Select From List By Label    xpath://select[@class='form-control ng-valid ng-dirty ng-touched']    ENTIDADE REGULADORA
    Preencher o Campo de Usuário    ${USUARIO}
    Preencher o Campo de Senha    ${SENHA}
    Clicar no Botão de Login
    Sleep    5s
    Capture Page Screenshot    filename=Login_Sucesso.png
Verificar Logout
    Page Should Contain Element    xpath://div[@class='login_logo']
    Capture Page Screenshot    filename=Logout_Sucesso.png

Preencher o Campo de Usuário 
    [Arguments]    ${USUARIO}
    Input Text      xpath://input[@id='cnpj']      ${USUARIO}
Preencher o Campo de Senha
    [Arguments]    ${SENHA}
    Input Text      xpath://input[@type='password']       ${SENHA}
Clicar no Botão de Login
    Click Button    xpath://button[normalize-space()='Acessar']