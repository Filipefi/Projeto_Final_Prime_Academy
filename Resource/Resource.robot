
*** Settings ***
Library     SeleniumLibrary
 

*** Variables ***
${URL}          http://automationpractice.com/index.php?
${BROWSER}      chrome



*** Keywords ***

Abrir Navegador
    Open Browser        about:blank   ${BROWSER}
    
Acessar a página home do site Automation Pratice
    [Documentation]     Essa Keyword é responsável por abrir o site que será automatizado
    Go To               http://automationpractice.com/index.php?
    Title Should Be     My Store
    Log to Console      \n\nAcessar o site Automation Pratice\n

Digitar o nome do produto "${produto}" no campo de Pesquisa
    Wait Until Element Is Visible   name=search_query
    Input Text     name=search_query      ${produto}

Clicar no botão Pesquisar
    Click Element  name=submit_search

Conferir mensagem "${mensagem_erro_pesquisa}" "${produto}"
   Wait Until Element Is Visible   css=#center_column > p

Fechar Navegador 
    Sleep   3
    Close Browser 

Acessar a página home do site
    Go To               http://automationpractice.com/index.php?
    Title Should Be     My Store

Passar o mouse por cima da categoria ${categoria_woman} no menu principal superior de categorias
    Mouse Over          css=#block_top_menu > ul > li:nth-child(1) > a

    
Clicar na sub categoria ${sub_categoria}
    Click Element       xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
    

Conferir se os produtos da sub-categoria ${sub_categoria} foram mostrados na página
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]/ul/li[1]//img[@src="http://automationpractice.com/img/p/1/2/12-home_default.jpg"]    
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]//a[1]/img[@src="http://automationpractice.com/img/p/1/6/16-home_default.jpg"]       
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]//a[1]/img[@src="http://automationpractice.com/img/p/2/0/20-home_default.jpg"]       

    Page Should Contain Image           xpath=//*[@id="center_column"]/ul/li[1]//img[@src="http://automationpractice.com/img/p/1/2/12-home_default.jpg"]     
    Page Should Contain Image           xpath=//*[@id="center_column"]//a[1]/img[@src="http://automationpractice.com/img/p/1/6/16-home_default.jpg"]
    Page Should Contain Image           xpath=//*[@id="center_column"]//a[1]/img[@src="http://automationpractice.com/img/p/2/0/20-home_default.jpg"] 
    

    
Acessar a página home
    Go To               http://automationpractice.com/index.php?
    Title Should Be     My Store

Clicar em ${Cadastro}
    Wait Until Element Is Visible   xpath=//a[@class='login']
    Click Element                   xpath=//a[@class='login']

# Informar em e-mail válido
#     Wait Until Element Is Visible    css=email_create
#     Input Text  css=email_create     fb.santosq@gmail.com

# Clicar em ${Criar_conta}
#     Click Element   name=SubmitCreate
# # Preencher os dados obrigatórios
#     Wait Until Element Is Visible
# # Submeter cadastro
# # Conferir se o cadastro foi efetuado com sucesso
#     Wait Until Element Is Visible   
        
    
