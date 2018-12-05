restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

# rubocop:disable LineLength
# rubocop:disable AsciiComments
# rubocop:disable ConditionalAssignment

# 1. Obtener el plato mas caro.

def plato_mas_caro(menu)
  llave = menu.keys
  caro = menu[llave[0]]
  plate = llave[0]
  menu.each do |plato, valor|
    if valor > caro
      plate = plato
      caro = valor
    end
  end
  plate
end

puts plato_mas_caro(restaurant_menu)

# 2. Obtener el plato mas barato.

def plato_mas_barato(menu)
  llave = menu.keys
  barato = menu[llave[0]]
  plate = llave[0]
  menu.each do |plato, valor|
    if valor < barato
      plate = plato
      barato = valor
    end
  end
  plate
end

puts plato_mas_barato(restaurant_menu)

# 3. Sacar el promedio del valor de los platos.

def promedio(menu)
  valores = menu.values
  total = valores.inject(0) { |sum, x| sum + x }
  total / menu.length
end

puts promedio(restaurant_menu)

# 4. Crear un arreglo con solo los nombres de los platos.

platos = restaurant_menu.keys
print platos
puts ''

# 5. Crear un arreglo con solo los valores de los platos.

valores = restaurant_menu.values
print valores
puts ''

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).

def mod_hash(hash)
  modicado = {}
  hash.each { |plato, valor| modicado[plato] = valor.to_f * 1.19 }
  modicado
end

menu_iva = mod_hash(restaurant_menu)
menu_iva.each { |plato, valor| puts 'El plato es ' + plato.to_s + ' y su valor es ' + valor.to_s }

# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.

def descuento(menu)
  discount = {}
  menu.each do |plato, valor|
    if plato.length > 1
      discount[plato] = valor.to_f * 0.8
    else
      discount[plato] = valor
    end
  end
  discount
end

menu_descuento = descuento(restaurant_menu)
menu_descuento.each { |plato, valor| puts 'El plato es ' + plato.to_s + ' y su valor es ' + valor.to_s }

# rubocop:enable LineLength
# rubocop:enable AsciiComments
# rubocop:enable ConditionalAssignment
