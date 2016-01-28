=begin
Binary search tree
=end

class TreeNode
  attr_accessor :value, :left, :right
  
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

class BinarySearchTree
  def initialize(value)
    puts "Initializing with #{value}"
    @root = TreeNode.new(value)
  end
  
  def preOrderTraversal(node = @root)
    return if node.nil?
    puts "#{node.value}"
    preOrderTraversal(node.left)
    preOrderTraversal(node.right)
  end
  
  def inOrderTraversal(node = @root)
    return if node.nil?
    inOrderTraversal(node.left)
    puts "#{node.value}"
    inOrderTraversal(node.right)
  end
  
  def postOrderTraversal(node = @root)
    return if node.nil?
    postOrderTraversal(node.left)
    postOrderTraversal(node.right)
    puts "#{node.value}"
  end
  
  def insert(value, node=@root)
    if node.nil?
      node = TreeNode.new(value) 
    else
      if(value <= node.value)
        node.left = insert(value, node.left)
        else
        node.right = insert(value, node.right)
        end
    end
    return node
  end
  
  def minValue(current_node = @root)
    current_node = current_node.left until(current_node.left.nil?)
    current_node.value
  end
  
  def maxValue(current_node = @root)
    current_node = current_node.right until(current_node.right.nil?)
    current_node.value
  end
  
  def maxDepth(current_node = @root)
    return 0 if current_node.nil?
    lmax = maxDepth(current_node.left)
    rmax = maxDepth(current_node.right)
    return [lmax, rmax].max + 1
  end
  
  def isSameTree?(node1, node2=@root)
    return true if(node1.nil? == node2.nil?)
    if not node1.nil? and not node2.nil?
      return (node1.value == node2.value) && (isSameTree?(node1.left, node2.left)) && (isSameTree?(node1.right == node2.right))
    else
      return false
    end
  end
  
  def lookup?(value, node=@root)
    return false if node.nil?
    until node.nil?
      return true if node.value == value
      if value <= node.value
        node = node.left
      else
        node = node.right
      end
    end
    return false
  end
  
end

bst = BinarySearchTree.new(10)
puts "Inserting 11"
bst.insert(11)
puts "Inserting 9"
bst.insert(9)
puts "Inserting 5"
bst.insert(5)
puts "Inserting 7"
bst.insert(7)
puts "Inserting 18"
bst.insert(18)
puts "Inserting 17"
bst.insert(17)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.inOrderTraversal
puts "Pre-Order Traversal:"
bst.preOrderTraversal
puts "Post-Order Traversal:"
bst.postOrderTraversal
puts "Min value: "
puts bst.minValue()
puts "Max value: "
puts bst.maxValue()
puts "Max Depth of tree:"
puts bst.maxDepth
puts "If same tree?"
puts bst.isSameTree?(bst)
puts "Lookup: 13"
puts bst.lookup?(13)
puts "Lookup: 7"
puts bst.lookup?(7)