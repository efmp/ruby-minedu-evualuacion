class Colegio_Vista 
	def mostrarColegios(colegios)
		puts "LISTA DE COLEGIOS"
		for c in colegios
		puts "#{c.codigo}	#{c.nombre} #{c.class.name}"
		end
	end
end