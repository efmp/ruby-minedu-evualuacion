require_relative "control/cTutor.rb"
require_relative "control/cColegio.rb"
require_relative "control/cAlumno.rb"
require_relative "control/cPregunta.rb"
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
calumno.registrarAlumnos("a3", "Jimenez Caceres", "Ivan", "13", "M")
#registrar tutores
tutor1 = ctutor.obtenerTutor("tutor1")
tutor2 = ctutor.obtenerTutor("tutor2")
tutor3 = ctutor.obtenerTutor("tutor3")
calumno.registrarTutor("a1", tutor1) #registrar <codigo de alumno>, <class tutor>
calumno.registrarTutor("a1", tutor2)
calumno.registrarTutor("a1", tutor3)
calumno.registrarTutor("a2", tutor3)
calumno.registrarTutor("a3", tutor1) #registrar <codigo de alumno>, <class tutor>
calumno.registrarTutor("a3", tutor2)
calumno.listarAlumnos
#calificacion alumno -detalle alumno
colegio1 = ccolegio.obtenerColegio("col001")
colegio2 = ccolegio.obtenerColegio("col002")
alumno1 = calumno.obtenerAlumno("a1")
alumno2 = calumno.obtenerAlumno("a2")
alumno3 = calumno.obtenerAlumno("a3")
calumno.registrarDetalleAlumno(alumno1, colegio1, "2", 16, nil)
calumno.registrarDetalleAlumno(alumno2, colegio2, "2", nil, 5)
calumno.registrarDetalleAlumno(alumno3, colegio1, "2", 18, nil)
calumno.listarAlumnosConDetalle


##################################################################################
#Preguntas
vpregunta = Pregunta_Vista.new
mpregunta = Pregunta_Modelo.new
cpregunta = Pregunta_Controlador.new(vpregunta,mpregunta)

cpregunta.registarPreguntas("p1","¿Cuanto es 1 + 1?")
cpregunta.registrarRespuestas("p1", "rpta1", "0", false)
cpregunta.registrarRespuestas("p1", "rpta2", "1", false)
cpregunta.registrarRespuestas("p1", "rpta3", "2", true)
cpregunta.registrarRespuestas("p1", "rpta4", "3", false)
cpregunta.registrarRespuestas("p1", "rpta5", "4", false)

cpregunta.registarPreguntas("p2","¿Cual es la capital de Peru?")
cpregunta.registrarRespuestas("p2", "rpta1", "Bogota", false)
cpregunta.registrarRespuestas("p2", "rpta2", "Arequipa", false)
cpregunta.registrarRespuestas("p2", "rpta3", "Chimbote", false)
cpregunta.registrarRespuestas("p2", "rpta4", "Lima", true)
cpregunta.registrarRespuestas("p2", "rpta5", "Ayacucho", false)

cpregunta.registarPreguntas("p3","¿Cuanto es 3 x 9?")
cpregunta.registrarRespuestas("p3", "rpta1", "21", false)
cpregunta.registrarRespuestas("p3", "rpta2", "25", false)
cpregunta.registrarRespuestas("p3", "rpta3", "27", true)
cpregunta.registrarRespuestas("p3", "rpta4", "29", false)
cpregunta.registrarRespuestas("p3", "rpta5", "32", false)
cpregunta.listarPregunta