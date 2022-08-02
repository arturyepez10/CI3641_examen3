# CLASE PADRE
class Secuencia
  attr_accessor :secuencia

  # Constructor
  def initialize
    @secuencia = []
  end

  # Agregamos un elemento
  def agregar(elemento)
    raise "Implementar metodo"
  end

  # Removemos el primer elemento
  def remover(elemento)
    raise "Implementar metodo"
  end

  # Verificamos si la secuencia esta vacia
  def vacio
    @secuencia.empty?
  end
end

# CLASE HIJA: Pila
class Pila < Secuencia
  # Agregamos un elemento al final
  def agregar(elemento)
    @secuencia.push(elemento)
  end

  # Removemos el ultimo elemento
  def remover
    if vacio
      raise "Secuencia vacia"
    else
      @secuencia.pop
    end
  end
end

# CLASE HIJA: Cola
class Cola < Secuencia
  # Agregamos un elemento al inicio
  def agregar(elemento)
    @secuencia.unshift(elemento)
  end

  # Removemos el primer elemento
  def remover
    if vacio
      raise "Secuencia vacia"
    else
      @secuencia.shift
    end
  end
end
