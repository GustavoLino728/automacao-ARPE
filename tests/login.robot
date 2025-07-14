*** Settings ***
Documentation     Test suite for login functionality
Resource          ../resources/login_keywords.resource
Resource          ../resources/login_variables.resource
Suite Setup      Iniciar Ambiente de Teste
Suite Teardown    Close Browser


*** Test Cases ***
Cenário 1: Login com Credenciais Válidas
    [Documentation]    Testa o login com credenciais válidas
    [Tags]    login_sucesso    critico
    Realizar Login    ${VALID_USER}    ${VALID_PASSWORD}
