# arquivo namateam.rb

class JogoDoPim # Sílvio Santos vem aí, lará lará lará...

	def initialize(minimo = 1, maximo = 100, nro1 = 5, nro2 = 7, texto1 = 'nama', texto2 = 'team')
    raise "minimo precisa ser um número" unless minimo.is_a?(Numeric)
		raise "maximo precisa ser um número" unless maximo.is_a?(Numeric)
		raise "nro1 precisa ser um número" unless nro1.is_a?(Numeric)
		raise "nro2 precisa ser um número" unless nro2.is_a?(Numeric)
		raise "texto1 precisa ser um texto" unless texto1.is_a?(String)
		raise "texto2 precisa ser um texto" unless texto2.is_a?(String)
    @minimo = minimo
		@maximo = maximo
		@nro1 = nro1
		@nro2 = nro2
		@texto1 = texto1
		@texto2 = texto2
		
		jogo
  end
	
	def jogo()
			retorno = ""
			@minimo.upto(@maximo) do |i|
			  retorno += pim(i).to_s + (i == @maximo ? "" : ", ")
			end
			puts retorno
	end
	
	def pim(i, nro1 = @nro1, nro2 = @nro2, texto1 = @texto1, texto2 = @texto2)
		if i % @nro2 == 0 and i % @nro1 == 0
			@texto1 + @texto2
		elsif i % @nro2 == 0
			@texto2
		elsif i % @nro1 == 0
			@texto1
		else
			i
		end
	end
	
	private :jogo
	
end

#descomente para testar
#JogoDoPim.new
#JogoDoPim.new(1, 100, 3, 5, "fizz", "buzz")
#JogoDoPim.new(1, 100, 3, 7, "mai", "kon")
