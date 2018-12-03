productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

# Parte 1 Imprimir todos los productos.
productos.each { |producto, valor| puts producto }
puts ''

# Parte 2 Agregar un producto nuevo llamado cereal.
productos['cereal'] = 2200
productos.each { |producto, valor| puts 'El producto ' + producto + ' cuesta ' + valor.to_s}
puts ''

# Parte 3 Cambiar el valor del producto bebida.
productos['bebida'] = 2000
productos.each { |producto, valor| puts 'El producto ' + producto + ' cuesta ' + valor.to_s}
