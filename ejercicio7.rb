# rubocop:disable LineLength
# rubocop:disable AsciiComments
# rubocop:disable MethodLength
# rubocop:disable NegatedWhile

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

def esta(arr, word)
  esta = false
  arr.each do |str|
    if str == word
      esta = true
      break
    end
  end
  esta
end

def suma_inventario(hash)
  suma = 0
  hash.each { |_key, value| suma += value }
  suma.to_s
end

def mayor_stock(hash)
  llave = hash.keys
  mayor = llave[0]
  valor = hash[llave[0]]
  hash.each do |key, val|
    if valor < val
      mayor = key
      valor = val
    end
  end
  mayor.to_s
end

def res_6(hash, sym)
  if !esta(hash, sym)
    'Esta el item ' + sym.to_s + '.'
  else
    'No esta el item ' + sym.to_s + '.'
  end
end

def ingresar_respuesta
  puts 'Ingrese opción siendo números del 1 al 7 (el 7 es para salir).'
  respuesta = gets.chomp.to_i
  while respuesta_incorrecta(respuesta)
    puts 'Ingrese opción siendo números del 1 al 7 (el 7 es para salir).'
    respuesta = gets.chomp.to_i
  end
  respuesta
end

respuesta = ingresar_respuesta
while respuesta_correcta(respuesta)
  # Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash.
  if respuesta == 1
    puts 'Ingresar nuevo item en un solo string como "Pendrives, 100".'
    res = gets.chomp.to_s
    item = item(res)
    cant = cantidad(res)
    inventario[item] = cant
    print inventario
    puts ''
    respuesta = ingresar_respuesta
  # Si el usuario ingresa 2, podrá eliminar un item.
  elsif respuesta == 2
    puts 'Escriba el item que quiere eliminar'
    res = gets.chomp.to_sym
    inventario.delete(res)
    print inventario
    puts ''
    respuesta = ingresar_respuesta
  # Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
  elsif respuesta == 3
    puts 'Ingresar item a modificar'
    print inventario
    puts ''
    res = gets.chomp.to_sym
    while !esta(inventario, res)
      puts 'Ingresar item a modificar'
      print inventario
      puts ''
      res = gets.chomp.to_sym
    end
    puts 'Ingresar el nuevo nombre del item'
    res = gets.chomp.to_sym
    puts 'Ingresar a modificar.'
    cant = gets.chomp.to_i
    inventario[res] = cant
    print inventario
    puts ''
    respuesta = ingresar_respuesta
  elsif respuesta == 4
    puts 'El total del inventario es ' + suma_inventario(inventario)
    respuesta = ingresar_respuesta
  # Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
  elsif respuesta == 5
    puts 'El item que tiene el mayor inventario es ' + mayor_stock(inventario)
    respuesta = ingresar_respuesta
  elsif respuesta == 6
    puts 'Ingrese un item para ver si esta en el inventario.'
    res = gets.chomp.to_sym
    puts res_6(inventario, res)
    respuesta = ingresar_respuesta
  elsif respuesta == 7
    break
  end
end
# rubocop:enable LineLength
# rubocop:enable AsciiComments
# rubocop:enable MethodLength
# rubocop:enable NegatedWhile
