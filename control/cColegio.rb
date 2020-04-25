class ControladorColegio
	attr_accessor :vista, :modelo
	def initialize(vista, modelo)
		@vista = vista
		@moodelo = modelo
	end
end