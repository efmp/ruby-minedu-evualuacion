class Colegio
	attr_accessor :codigo, :nombre, :tipo
	def initialize(codigo, nombre, tipo)
		@codigo = codigo
		@nombre = nombre
		@tipo = tipo
	end

	def calcularCalificacionSocioEconomica()
	end
end
class ColegioNacional < Colegio
		attr_accessor :zona
	def initialize(codigo, nombre,tipo, zona)
		super(codigo, nombre, tipo)
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
	def initialize(codigo, nombre,tipo , montoPension)
		super(codigo, nombre, tipo)
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


