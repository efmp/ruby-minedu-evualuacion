require_relative "../control/cAlumno.rb"
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

	def listarAlumnosConDetalle(alumnos, detalles)
		puts "DETALLE"
		puts "cod apellidos		nombre	puntaje"
		detalle = []
		for a in alumnos
			for d in detalles
				if(d.alumno.codigo.eql? a.codigo) 
					then detalle = d 					
					break
				end
			end

			if(detalle != nil)
				promedio = detalle.promedioPonderado
				puesto = detalle.puesto
				if(promedio  == nil) then promedio = "null" end
				if(puesto == nil) then puesto = "null" end
				puts "#{a.codigo}  #{a.apellidos}	#{a.nombre}	#{promedio} #{puesto} #{detalle.calcularPuntajeRendimiento} "
			end
			detalle = nil
		end
	end
end