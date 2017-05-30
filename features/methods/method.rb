class FormularioCompletoMethod < SitePrism::Page

	def preencher_completo

		@Cadastro = Cadastro.new
		@Cadastro.proxima.click
		@Cadastro.nome.set 'felipe'

		
	end

end	