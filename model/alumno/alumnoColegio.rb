require_relative "../../control/cTutor.rb"
require_relative "../../control/cColegio.rb"
class AlumnoDetalle
	attr_accessor  :alumno, :colegio, :nivel, :promedioPonderado, :puesto
	def initialize(codigoAlumno, codigoColegio,nivel, promedioPonderado, puesto)
		@alumno = codigoAlumno
		@colegio = codigoColegio
		@nivel = nivel
		@promedioPonderado = promedioPonderado
		@puesto = puesto
	end

	def calcularPuntajeRendimiento
		if(colegio.class.name.eql? "ColegioNacional") then 
			if(promedioPonderado >=19) then 100
			elsif (promedioPonderado >=18) then 80
			elsif (promedioPonderado >=16) then 60
			elsif (promedioPonderado >=14) then 40
			elsif (promedioPonderado >=11) then 20
			else 0;
			end	
		elsif (colegio.class.name.eql?  "ColegioParticular")
			if(puesto <= 3) then 100
			elsif(puesto <= 5) then 80
			elsif(puesto <= 10) then 60
			elsif(puesto <= 20) then 40
			else 0;
			end						
		end
	end
end


