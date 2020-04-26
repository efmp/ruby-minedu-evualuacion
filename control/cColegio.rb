require_relative "../model/colegio/colegios.rb"
require_relative "../view/vColegio.rb"
require_relative "../model/colegio/modeloColegio.rb"

class ControladorColegio
	attr_accessor :vista, :modelo
	def initialize(vista, modelo)
		@vista = vista
		@modelo = modelo
	end

	def registrarColegio(tipo, *arg)	
		if(tipo == "Nacional") 
			then 
			colegio = ColegioNacional.new(*arg)
			modelo.registrarColegio(colegio)

		elsif (tipo == "Particular")
			then 
			colegio = ColegioParticular.new(*arg)
			modelo.registrarColegio(colegio)
		else nil	
		end
	end

	def obtenerColegio(codColegio)
		colegios = modelo.colegios
		for colegio in colegios
			if(colegio.codigo.eql? codColegio) then 
				return colegio
			end
		end
	end

	def listarColegios
		vista.mostrarColegios(modelo.colegios)
	end
end



