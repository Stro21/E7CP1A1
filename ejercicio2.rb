productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

# Parte 1
productos.each { |producto, valor| puts producto }

# Parte 2
productos['cereal'] = 2200
productos.each { |producto, valor| puts 'El producto ' + producto + ' cuesta ' + valor.to_s}
