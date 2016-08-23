# arquivo tc_namateam.rb

require_relative "namateam"
require "test/unit"

class TesteJogoDoPim < Test::Unit::TestCase
 
 
  def teste_pim
		assert_equal(1, JogoDoPim.new.pim(1) )
    assert_equal("nama", JogoDoPim.new.pim(5) )
		assert_equal("team", JogoDoPim.new.pim(7) )
		assert_equal("namateam", JogoDoPim.new.pim(35) )
		assert_equal("maikon", JogoDoPim.new(1, 100, 5, 7, "mai", "kon").pim(35))
  end
	
	def teste_tipagem
		#minimo
		exception = assert_raises(RuntimeError) { JogoDoPim.new(minimo='a') }
		assert_equal( "minimo precisa ser um número", exception.message )
		
		#maximo
		exception = assert_raises(RuntimeError) { JogoDoPim.new(minimo=1, maximo='a') }
		assert_equal( "maximo precisa ser um número", exception.message )
		
		#nro1
		exception = assert_raises(RuntimeError) { JogoDoPim.new(minimo=1, maximo=100, nro1='a') }
		assert_equal( "nro1 precisa ser um número", exception.message )
		
		#nro2
		exception = assert_raises(RuntimeError) { JogoDoPim.new(minimo=1, maximo=100, nro1=5, nro2='a') }
		assert_equal( "nro2 precisa ser um número", exception.message )
		
		#texto1
		exception = assert_raises(RuntimeError) { JogoDoPim.new(minimo=1, maximo=100, nro1=5, nro2=7, texto1=1) }
		assert_equal( "texto1 precisa ser um texto", exception.message )
		
		#texto2
		exception = assert_raises(RuntimeError) { JogoDoPim.new(minimo=1, maximo=100, nro1=5, nro2=7, texto1='nama', texto2=1) }
		assert_equal( "texto2 precisa ser um texto", exception.message )
  end
  
end