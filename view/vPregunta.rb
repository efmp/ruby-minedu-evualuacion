class Pregunta_Vista
	def listarPreguntas(preguntas)
		puts "LISTA DE PREGUNTAS"
		for pregunta in preguntas
			puts "#{pregunta.codigo} #{pregunta.enunciado}"
			for respuesta in pregunta.respuestas
				puts "- #{respuesta.descripcion} #{respuesta.respuestaValida}"
			end
		end
	end
end