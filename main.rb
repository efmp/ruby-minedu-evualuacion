require_relative "control/cTutor.rb"
require_relative "control/cColegio.rb"
require_relative "control/cAlumno.rb"
#tutores
vtutor = Tutor_Vista.new
mtutor = Tutor_Modelo.new
ctutor = Tutor_Controlador.new(vtutor,mtutor)
ctutor.registrarTutor("tutor1", "8855447711", "Jimenez Peralta", "Pedro", "Padre")
ctutor.registrarTutor("tutor2", "8855447711", "Rosas Pinedo", "Liliana", "Madre")
ctutor.registrarTutor("tutor3", "8855447711", "Casas Escobar", "Piero", "Padre")
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
#registrar tutores
tutor1 = ctutor.obtenerTutor("tutor1")
tutor2 = ctutor.obtenerTutor("tutor2")
tutor3 = ctutor.obtenerTutor("tutor3")
calumno.registrarTutor("a1", tutor1) #registrar <codigo de alumno>, <class tutor>
calumno.registrarTutor("a1", tutor2)
calumno.registrarTutor("a1", tutor3)
calumno.registrarTutor("a2", tutor3)
calumno.listarAlumnos
#calificacion alumno -detalle alumno
colegio1 = ccolegio.obtenerColegio("col001")
colegio2 = ccolegio.obtenerColegio("col002")
alumno1 = calumno.obtenerAlumno("a1")
alumno2 = calumno.obtenerAlumno("a2")
calumno.registrarDetalleAlumno(alumno1, colegio1, "2", 16, nil)
calumno.registrarDetalleAlumno(alumno2, colegio2, "2", nil, 5)
calumno.listarAlumnosConDetalle


