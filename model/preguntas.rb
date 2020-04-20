require_relative "respuestas.rb"
class Pregunta
	attr_accessor :codigo, :enunciado, :respuesta
	def initialize(codigo, descripcion)
		@codigo = codigo
		@descripcion = descripcion
		@respuesta = []
	end

	def registrarRespuesta(nuevaRespuesta)
		respuesta.push(nuevaRespuesta)
	end
end

p1 = Pregunta.new(1, "Cuanto es 1+1")
r1=Respuesta.new(1,"3",false)
r2=Respuesta.new(2,"4",false)
r3=Respuesta.new(3,"2",true)
r4=Respuesta.new(4,"1",false)
r5=Respuesta.new(4,"0",false)

p1.registrarRespuesta(r1)
p1.registrarRespuesta(r2)
p1.registrarRespuesta(r3)
p1.registrarRespuesta(r4)
p1.registrarRespuesta(r5)


for rpta in p1.respuesta
	if(rpta.respuestaValida)
		puts "La respuesta correcta es: #{rpta.descripcion}"
	end
end
