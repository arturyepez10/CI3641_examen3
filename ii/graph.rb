# -------------------------- GRAFO -------------------------- #
# DECLARACION DE NODOS
class Nodo
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

class Grafo
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def add_node(node)
    @nodes << node
  end
end

# -------------------------- BUSQUEDA -------------------------- #

class Busqueda
  attr_accessor :grafo, :nodos_explorados

  def initialize(grafo)
    @grafo = grafo
    @nodos_explorados = 0
  end

  def buscar(nodo_inicial, nodo_final)
    raise "Implementar metodo"
  end
end

class DFS < Busqueda
  def buscar(nodo_inicial, nodo_final)
    p nodo_inicial.val
    children = [node.left, node.right].compact
    children.each do |child|
      buscar(child, nodo_final)
    end
  end
end

class BFS < Busqueda
  def buscar(nodo_inicial, nodo_final)
    queue = []
    queue.push(nodo_inicial)
    while(queue.size != 0 or node.val == nodo_final.val)
      node = queue.shift
      p node.val
      children = [node.left, node.right].compact
      children.each do |child|
        queue.push(child)
      end
    end
  end
end