class FormularioIncompletoMethod < SitePrism::Page

	def preencher_incompleto

		@Cadastro = Cadastro.new
		@Cadastro.proxima.click
		@Cadastro.nome.set BlaBla::Pessoa.nome
		@Cadastro.email.set Faker::Internet.email
		@Cadastro.like_no.click
		@Cadastro.nenhum.click
		@Cadastro.ep_um.click
		@Cadastro.ep_dois.click
		@Cadastro.ep_tres.click
		@Cadastro.ep_quatro.click
		@Cadastro.ep_cinco.click
		@Cadastro.ep_seis.click
		@Cadastro.ep_sete.click
		@Cadastro.outro_filme.click
		@Cadastro.outro_qual.set 'O novo'
		@Cadastro.personagem.set Faker::StarWars.character
	end

end	