meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }

def generar_hash(arr1, arr2)
  i = 0
  hash = {}
  arr1.each do |mes|
    hash[mes.to_sym] = arr2[i]
    i += 1
  end
  hash
end

hash = generar_hash(meses, ventas)
hash.each {|mes, venta| puts 'El mes es ' + mes.to_s + ' y su ventas son ' + venta.to_s}
