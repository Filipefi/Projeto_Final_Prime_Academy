*** Settings ***
Resource            ../Resource/Resource.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador   


*** Test Case ***
  
Caso de teste 01: Pesquisar produto não existente   
    Acessar a página home do site Automation Pratice
    Digitar o nome do produto "itemNãoExistente" no campo de Pesquisa
    Clicar no botão Pesquisar
    Conferir mensagem "No results were found for your search" "itemNãoExistente"
    [Teardown]       Fechar Navegador

Caso de teste 02: Listar Produtos
    Acessar a página home do site
    Passar o mouse por cima da categoria "woman" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    

Caso de teste 03: Adicionar Cliente
    Acessar a página home
    Clicar em "Sign in"
    
    Informar em e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso








