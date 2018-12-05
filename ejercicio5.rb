# rubocop:disable LineLength

meses = %w[Enero Febrero Marzo Abril Mayo]
ventas = [2000, 3000, 1000, 5000, 4000]

# 1. Generar un hash que contenga los meses como llave y las ventas como valor:
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
hash.each { |mes, venta| puts 'El mes es ' + mes.to_s + ' y su ventas son ' + venta.to_s }
puts ''

# 2. En base al hash generado:
# 2.1 Invertir las llaves y los valores del hash.

invertido = hash.invert
invertido.each { |venta, mes| puts venta.to_s + ' fueron las ventas del mes ' + mes.to_s }
puts ''
# 2.2 Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
# rubocop:disable MethodLength
def mayor_ventas(invertido)
  hash = invertido.invert
  llave = hash.keys
  sells = hash[llave[0]]
  month = llave[0]
  hash.each do |mes, venta|
    if venta > sells
      sells = venta
      month = mes
    end
  end
  puts 'El mes con mas ventas fue ' + month.to_s + ' y sus ventas fueron ' + sells.to_s
end

mayor_ventas(invertido)

# puts invertido.max_by { |k, _v| k }

# rubocop:enable LineLength
# rubocop:enable MethodLength
