class Tutor_Vista 
	def initialize
	end
	def mostrarTutores(tutores)
		puts "LISTA DE TUTORES"
		for t in tutores
		puts "#{t.codigo}	#{t.dni}	#{t.apellidos}	#{t.nombre}	#{t.parentesco}"
		end
	end
end