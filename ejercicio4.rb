personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

# 1. Se pide generar un hash con la información:
#personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}

def crear_hash(arr1, arr2)
  i = 0
  hash = {}
  arr1.each do |nombre|
    hash[nombre.to_sym] = arr2[i]
    i += 1
  end
  hash
end

hash = crear_hash(personas, edades)
hash.each {|nombre, edad| puts 'El nombre es ' + nombre.to_s + ' y su edad ' + edad.to_s}
puts ''

# 2. Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.
