#encoding: utf-8
#language: pt

Funcionalidade: Cadastro de Fans de Star Wars
Eu como fan de star wars
Quero acessar a página Star Wars 
Para realizar o meu cadastro


Contexto: Visitar pagina de cadastro de Fan 
	Dado que eu esteja na página inicial do Star War

@completo @regressivo
Cenário: Preencher Cadastro Completo de fan de Star War
	Quando eu preencher todas as informações
	E enviar o cadastro
	Então eu verifico que foi enviado com sucesso
@incompleto @regressivo
Cenário: Preencher Cadastro incompleto de fan de Star War
	Quando eu preencher algumas informações
	E enviar o cadastro
	Então eu verifico que o cadastro não está completo
@voltar @regressivo
Cenário: Preencher Cadastro Completo e voltar a página inicial
	Quando eu preencher todas as informações
	E voltar a pagina inicial
	Então eu verifico que o estou na pagina inicial
@emailInvalido  @regressivo
Cenário: Preencher Email invalido 
	Quando eu preecher o email invalido "Teste@ teste.br@com"
	Então verifico que o email não é valido