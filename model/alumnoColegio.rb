require_relative "colegios.rb"
require_relative "alumnos.rb"
class AlumnoColegio
	attr_accessor  :alumno, :colegio, :nivel, :promedioPonderado, :puesto
	def initialize(codigoAlumno, codigoColegio,nivel, promedioPonderado, puesto)
		@alumno = codigoAlumno
		@colegio = codigoColegio
		@nivel = nivel
		@promedioPonderado = promedioPonderado
		@puesto = puesto
	end

	def calcularPuntajeRendimiento
		if(colegio.tipo.eql? "Nacional") then 
			if(promedioPonderado >=19) then 100
			elsif (promedioPonderado >=18) then 80
			elsif (promedioPonderado >=16) then 60
			elsif (promedioPonderado >=14) then 40
			elsif (promedioPonderado >=11) then 20
			else 0;
			end	
		elsif (colegio.tipo.eql?  "Particular")
			if(puesto <= 3) then 100
			elsif(puesto <= 5) then 80
			elsif(puesto <= 10) then 60
			elsif(puesto <= 20) then 40
			else 0;
			end						
		end
	end
end

#TUTORES

#COLEGIOS
c1 = ColegioNacional.new("col001", "Villareal","Nacional","Rural")
c2 = ColegioParticular.new("col001", "Jose Galvez","Particular",300)

#ALUMNOS
a1 = Alumno.new("a1", "Jimenez Caceres", "Eduardo", "14", "M")
a1.registrarTutor(t1)
a1.registrarTutor(t2)
a1.registrarTutor(t3)

a2 = Alumno.new("a2", "Morales Salvatierra", "Eva", "14", "F")
a2.registrarTutor(t3)

ac1 = AlumnoColegio.new(a1,c1,"2do", 18.22, nil)
ac2 = AlumnoColegio.new(a2,c2,"2do", nil, 2)
puts "nombre alumno #{ac1.alumno.nombre}"
puts "nombre tutor #{ac1.alumno.tutor[0].nombre}"
puts "nombre colegio #{ac1.colegio.nombre}"

puts a1.tutor[1].nombre

puts ac2.colegio.calcularCalificacionSocioEconomica

puts "Alumno 1:  #{ac1.alumno.nombre} #{ac1.alumno.apellidos} #{ac1.colegio.tipo} #{ac1.colegio.calcularCalificacionSocioEconomica} #{ac1.calcularPuntajeRendimiento}"
puts "Alumno 2:  #{ac2.alumno.nombre} #{ac2.alumno.apellidos} #{ac2.colegio.tipo} #{ac2.colegio.calcularCalificacionSocioEconomica} #{ac2.calcularPuntajeRendimiento}"


