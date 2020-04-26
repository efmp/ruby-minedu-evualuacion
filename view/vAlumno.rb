class Alumno_Vista 
	def listarAlumnos(alumnos)
		puts "LISTA DE ALUMNOS"
		for a in alumnos
			if(a.tutor.length() >0) then
				puts "#{a.codigo}  #{a.apellidos} #{a.nombre}"	
				for t in a.tutor
					puts "-	#{t.codigo}	#{t.dni}	#{t.apellidos}	#{t.nombre}	#{t.parentesco}"
				end
			else 
				puts "#{a.codigo}  #{a.apellidos} #{a.nombre}"
			end
		end
	end
end