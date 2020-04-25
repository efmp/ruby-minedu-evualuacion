class Colegio
	attr_accessor :codigo, :nombre
	def initialize(codigo, nombre)
		@codigo = codigo
		@nombre = nombre
	end

	def calcularCalificacionSocioEconomica()
	end
end
class ColegioNacional < Colegio
		attr_accessor :zona
	def initialize(codigo, nombre, zona)
		super(codigo, nombre)
		@zona = zona
	end

	def calcularCalificacionSocioEconomica()
		if(zona.eql? "Rural") then 100
		elsif(zona.eql? "Urbana") then 80
		else 0
		end				
	end
end
class ColegioParticular < Colegio
	attr_accessor :montoPension
	def initialize(codigo, nombre, montoPension)
		super(codigo, nombre)
		@montoPension = montoPension
	end

	def calcularCalificacionSocioEconomica()
		if(montoPension<= 200) then 90
		elsif(montoPension<= 400) then 70
		elsif(montoPension<= 600) then 50
		else 40
		end				
	end
end


