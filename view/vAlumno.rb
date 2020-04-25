class Alumno_Vista 
	def listarAlumnos(alumnos)
		puts "LISTA DE ALUMNOS"
		for a in alumnos
		puts "#{a.codigo}  #{a.apellidos} #{a.nombre}"
		end
	end
end