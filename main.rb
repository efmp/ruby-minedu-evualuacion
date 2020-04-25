require_relative "control/cTutor.rb"
require_relative "control/cColegio.rb"
require_relative "control/cAlumno.rb"
#tutores
vtutor = Tutor_Vista.new
mtutor = Tutor_Modelo.new
ctutor = Tutor_Controlador.new(vtutor,mtutor)
ctutor.registrarTutor("t1", "8855447711", "Jimenez Peralta", "Pedro", "Padre")
ctutor.registrarTutor("t2", "8855447711", "Rosas Pinedo", "Liliana", "Madre")
ctutor.registrarTutor("t3", "8855447711", "Casas Escobar", "Piero", "Padre")
ctutor.listarTutores

#colegios
vcolegio = Colegio_Vista.new
mcolegio = Colegio_Modelo.new
ccolegio = ControladorColegio.new(vcolegio,mcolegio)
ccolegio.registrarColegio("Nacional","col001", "Villareal","Rural")
ccolegio.registrarColegio("Particular","col002", "Jose Galvez",300)
ccolegio.listarColegios

#alumnos
valumno = Alumno_Vista.new
malumno = Alumno_Modelo.new
calumno = Alumno_Controlador.new(valumno,malumno)
calumno.registrarAlumnos("a1", "Jimenez Caceres", "Eduardo", "14", "M")
calumno.registrarAlumnos("a2", "Morales Salvatierra", "Eva", "14", "F")
calumno.listarAlumnos
