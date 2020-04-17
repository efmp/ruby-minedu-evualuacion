class Tutor
	attr_accessor :codigo, :dni, :apellidos, :nombre, :parentesco
	def initialize(codigo, dni, apellidos, nombre, parentesco)
		@codigo = codigo
		@dni = dni
		@apellidos = apellidos
		@nombre = nombre
		@parentesco = parentesco
	end
end