# rubocop:disable LineLength

h = { "x": 1, "y": 2 }

# 1. Agregar el string z con el valor 3.
h['z'] = 3
h.each { |variable, valor| puts 'valor de variable ' + variable.to_s + ' es ' + valor.to_s }
puts ''

# 2. Cambiar el valor de x por 5.
h[:x] = 5
h.each { |variable, valor| puts 'valor de variable ' + variable.to_s + ' es ' + valor.to_s }
puts ''

# 3. Eliminar la clave y.
h.delete(:y)
h.each { |variable, valor| puts 'valor de variable ' + variable.to_s + ' es ' + valor.to_s }
puts ''

# 4. Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
h.each { |variable, _valor| puts 'yeeah' if variable == 'z' }
puts ''

# 5. Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores

invertido = h.invert
invertido.each { |variable, valor| puts 'valor de variable ' + variable.to_s + ' es ' + valor.to_s }

# rubocop:enable LineLength
