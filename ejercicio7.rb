# rubocop:disable LineLength
# rubocop:disable AsciiComments
# rubocop:disable MethodLength

inventario = { "Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6 }
print inventario
puts ''
# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
#   Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, podrá eliminar un item.
# Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
# Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).

def respuesta_correcta(respuesta)
  respuesta >= 1 && respuesta <= 7
end

def respuesta_incorrecta(respuesta)
  respuesta < 1 && respuesta > 7
end

def item(str)
  str1 = ''
  str.each_char { |chr| str1 += chr unless chr == ',' }
  str1.to_sym
end

def cantidad(str)
  str1 = ''
  coma = false
  i = 0
  i = str.each_char { |chr| i += 1 unless chr == ',' }
  str.each_char do |var|
    if coma
      str1 += var if var != ' '
    elsif var == ','
      coma = true
    end
  end
  str1.to_i
end

puts 'Ingrese opción siendo números del 1 al 7.'
respuesta = gets.chomp.to_i
while respuesta_incorrecta(respuesta)
  puts 'Ingrese opción siendo números del 1 al 7.'
  respuesta = gets.chomp.to_i
end
while respuesta_correcta(respuesta)
  if respuesta == 1
    puts 'Ingresar nuevo item en un solo string como "Pendrives, 100".'
    res = gets.chomp.to_s
    item = item(res)
    cant = cantidad(res)
    inventario[item] = cant
  end
end
# rubocop:enable LineLength
# rubocop:enable AsciiComments
# rubocop:enable MethodLength
