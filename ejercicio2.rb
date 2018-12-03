productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

# 1. Imprimir todos los productos.
productos.each { |producto, valor| puts producto }
puts ''

# 2. Agregar un producto nuevo llamado cereal.
productos['cereal'] = 2200
productos.each { |producto, valor| puts 'El producto ' + producto + ' cuesta ' + valor.to_s}
puts ''

# 3. Cambiar el valor del producto bebida.
productos['bebida'] = 2000
productos.each { |producto, valor| puts 'El producto ' + producto + ' cuesta ' + valor.to_s}
puts ''

# 4. Convertir el hash en un array y guardarlo en una nueva variable.
productos1 = productos.to_a
print productos1
puts "\n\n"

#5 Eliminar el producto 'galletas' del hash.
productos.delete('galletas')
productos.each { |producto, valor| puts 'El producto ' + producto + ' cuesta ' + valor.to_s}
