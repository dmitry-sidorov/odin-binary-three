require_relative 'Node.rb'

class Tree
  attr_accessor :root

  def initialize
    self.root = nil
  end

  def insert_node(node, new_node)
    if new_node.data < node.data
      if node.left.nil?
        node.left = new_node
      else
        self.insert_node(node.left, new_node)
      end
    else
      if node.right.nil?
        node.right = new_node
      else
        self.insert_node(node.right, new_node)
      end
    end
  end

  def insert(data)
    new_node = Node.new(data)

    if self.root.nil?
      self.root = new_node
    else
      self.insert_node(self.root, new_node)
    end
  end

  def build_tree(nodes_list)
    nodes_list.each { |data| self.insert(data)}
  end

  def inorder(node)
    result = []
    unless node.nil?
      result.push(self.inorder(node.left))
      result.push(node.data)
      result.push(self.inorder(node.right))
    end
    result unless result.empty?
  end

  def print_inorder
    inorder = self.inorder(self.root).flatten.reject { |item| item.nil? }
    puts 'inorder: ' + inorder.to_s
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  # function to be implemented 
  # remove(data) 
                

  # Helper function 
  # findMinNode() 
  # getRootNode() 
  # inorder(node) 
  # preorder(node)                
  # postorder(node) 
  # search(node, data) 
end


