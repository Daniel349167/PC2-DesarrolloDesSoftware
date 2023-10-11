
require_relative 'node'

class BinaryTree
    attr_accessor :root
  
    def initialize
      @root = nil
    end
  
    def <<(value)
      @root = insert(@root, value)
    end
  
    def empty?
      @root.nil?
    end
  
    def each(&block)
      traverse(@root, &block)
    end
  
    def include?(value)
      search(@root, value)
    end
  
    def all?(&block)
      traverse_all?(@root, &block)
    end
  
    def any?(&block)
      traverse_any?(@root, &block)
    end
  
    def sort
      arr = []
      each { |val| arr << val }
      arr
    end
  
    private
  
    def insert(node, value)
      return Node.new(value) if node.nil?
  
      if value < node.value
        node.left = insert(node.left, value)
      else
        node.right = insert(node.right, value)
      end
      node
    end
  
    def traverse(node, &block)
      return if node.nil?
  
      traverse(node.left, &block)
      yield(node.value)
      traverse(node.right, &block)
    end
  
    def search(node, value)
      return false if node.nil?
  
      return true if node.value == value
  
      if value < node.value
        search(node.left, value)
      else
        search(node.right, value)
      end
    end
  
    def traverse_all?(node, &block)
      return true if node.nil?
  
      return false unless yield(node.value)
  
      traverse_all?(node.left, &block) && traverse_all?(node.right, &block)
    end
  
    def traverse_any?(node, &block)
      return false if node.nil?
  
      return true if yield(node.value)
  
      traverse_any?(node.left, &block) || traverse_any?(node.right, &block)
    end
  end
