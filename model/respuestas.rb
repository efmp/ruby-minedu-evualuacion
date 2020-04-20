class Respuesta #  <----- -Detalle de pregunta
	#deberia ir codigo de pregunta antes como propiedad
	attr_accessor :codigo, :descripcion, :respuestaValida
	def initialize(codigo, descripcion, respuestaValida)
		@codigo = codigo
		@descripcion = descripcion
		@respuestaValida = respuestaValida #true or false
	end
end