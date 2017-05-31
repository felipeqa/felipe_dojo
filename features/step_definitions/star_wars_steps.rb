
Dado(/^que eu esteja na página inicial do Star War$/) do

 visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform'
 
end

Quando(/^eu preencher todas as informações$/) do
  @Completo = FormularioCompletoMethod.new
  @Completo.preencher_completo
end

Quando(/^enviar o cadastro$/) do
  @Cadastro = Cadastro.new
  @Cadastro.enviar.click
end

Então(/^eu verifico que foi enviado com sucesso$/) do
  assert_text 'Obrigado por responder as perguntas! =)'
end

Quando(/^eu preencher algumas informações$/) do
  @Incompleto = FormularioIncompletoMethod.new
  @Incompleto.preencher_incompleto
end

Então(/^eu verifico que o cadastro não está completo$/) do
  assert_text 'Esta pergunta é obrigatória'
end

Quando(/^voltar a pagina inicial$/) do
	@Cadastro = Cadastro.new
 	@Cadastro.voltar.click
end

Então(/^eu verifico que o estou na pagina inicial$/) do
  assert_text 'Star Wars Questions' && 'Nunca envie senhas pelo Formulários Google.'
end

Quando(/^eu preecher o email invalido "([^"]*)"$/) do |email_invalido|
 	@Cadastro = Cadastro.new
  @Cadastro.proxima.click
 	@Cadastro.email.set email_invalido
end	

Então(/^verifico que o email não é valido$/) do
  assert_text 'Precisa ser um endereço de e-mail válido'
end