# Parte1: Algoritmos, Programación Orientada a Objetos

## Función `letra_faltante`

La función `letra_faltante` tiene como objetivo identificar una letra del alfabeto que no esté presente en una cadena dada.

### Descripción

```ruby
def letra_faltante(cadena)
    alfabeto = ("a".."z").to_a
    faltantes = alfabeto - cadena.chars
    faltantes.first
end
```

### Detalles

1. **Creación del alfabeto**
```ruby
alfabeto = ("a".."z").to_a
```
- Aquí se crea un rango que va de la letra "a" a la letra "z" y luego se convierte en un array. Esto nos da un arreglo con todas las letras del alfabeto.
2. **Identificación de letras faltantes**
```ruby
faltantes = alfabeto - cadena.chars
```

- La cadena se descompone en caracteres individuales con el método `chars`.
- Luego, se realiza una operación de resta entre el array `alfabeto` y el array de caracteres de la cadena. Como resultado, obtenemos un array `faltantes` con las letras del alfabeto que no están presentes en la cadena.

3. **Devolución de la letra faltante**

```ruby
faltantes.first
```
-Finalmente, se devuelve la primera letra del array faltantes. Esta es la primera letra del alfabeto que no está presente en la cadena dada.

## BinaryTree

Un árbol binario ordenado es aquel en el que cada nodo tiene un valor y hasta 2 hijos, cada uno de los cuales es también un árbol binario ordenado. Además, el valor de cualquier elemento del subárbol izquierdo de un nodo es menor que el valor de cualquier elemento en el subárbol derecho del nodo.

### Clase Node

Antes de definir la clase principal `BinaryTree`, es necesario definir una clase `Node` que representa un nodo individual en el árbol.

```ruby
class Node
    attr_accessor :left, :right, :value
  
    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end
end
```
### Métodos de BinaryTree
La clase BinaryTree ofrece los siguientes métodos:

### `<<(value)`

Este método permite insertar un nuevo valor en el árbol.
```ruby
def <<(value)
  @root = insert(@root, value)
end
```


### `empty?`

Devuelve true si el árbol no tiene ningún nodo y false en caso contrario.
```ruby
def empty?
  @root.nil?
end
```

### `each`

Es un iterador estándar que devuelve un elemento cada vez.
```ruby
def each(&block)
  traverse(@root, &block)
end
```

## Extensión de BinaryTree
La clase `BinaryTree` ha sido extendida para proporcionar métodos adicionales que permiten realizar operaciones más avanzadas con el árbol binario.

### `include?(elt)`

Este método evalúa si un elemento específico se encuentra dentro del árbol.

```ruby
def include?(value)
  search(@root, value)
end
```
### `all? & any?`

Estos métodos toman un bloque y devuelven true o false dependiendo de si todos o alguno de los nodos del árbol cumplen con la condición especificada en el bloque, respectivamente.
```ruby
def all?(&block)
  traverse_all?(@root, &block)
end

def any?(&block)
  traverse_any?(@root, &block)
end
```

### `sort`

Este método devuelve un array con todos los valores del árbol en orden ascendente.
```ruby
def sort
  arr = []
  each { |val| arr << val }
  arr
end
```

Estos métodos adicionales ofrecen una mayor flexibilidad y eficiencia al trabajar con la clase BinaryTree, permitiendo a los usuarios realizar consultas y operaciones más específicas en el árbol.

- Ejecutando la función main:

```ruby
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
```
```shell
ruby main.rb
```

- salida:
```shell
f
true
true
true
3
5
7
```

# Parte3: Rail 

