
require_relative 'binary_tree'

def letra_faltante(cadena)
    alfabeto = ("a".."z").to_a
    faltantes = alfabeto - cadena.chars
    faltantes.first
  end

# Pruebas
puts letra_faltante("the quick brown box jumps over a lazy dog") # Debería devolver "f"

arbol = BinaryTree.new
arbol << 5
arbol << 3
arbol << 7

puts arbol.include?(3) # true
puts arbol.all? { |val| val > 2 } # true
puts arbol.any? { |val| val == 3 } # true
puts arbol.sort # [3, 5, 7]
