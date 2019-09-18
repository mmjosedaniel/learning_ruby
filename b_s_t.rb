# frozen_string_literal: true

class Node
  attr_accessor :value, :left, :right

  def initialize(val)
    @value = val
  end
end

class Tree
  attr_accessor :node

  def initialize
    @node = nil
  end

  def insert(val)
    if node.nil?
      @node = Node.new(val)
    else
      current = node

      loop do
        if val < current.value && current.left.nil?
          current.left = Node.new(val)
          break
        elsif val > current.value && current.right.nil?
          current.right = Node.new(val)
          break
        elsif val < current.value
          current = current.left
        elsif val > current.value
          current = current.right
        else
          break
        end
      end
    end
  end
end

tree = Tree.new

tree.insert(10)
tree.insert(11)
tree.insert(1)
tree.insert(2)
tree.insert(15)
tree.insert(13)
tree.insert(17)

def print_tree(node)
  print_tree(node.left) unless node.left.nil?
  puts node.value
  print_tree(node.right) unless node.right.nil?
end

def search_node(val, node)
  if val == node.value
    node
  elsif val < node.value
    search_node(val, node.left) if node.left
  elsif val > node.value
    search_node(val, node.right) if node.right
  end
end

def min_value_node(node)
  current = node
  current = current.left while current.left
  current
end

def delete_node(val, node)
  if node.nil?
    return node
  elsif val < node.value
    node.left = delete_node(val, node.left)
  elsif val > node.value
    node.right = delete_node(val, node.right)
  elsif node.left.nil?
    temp = node.right
    node = nil
    return temp
  elsif node.right.nil?
    temp = node.left
    node = nil
    return temp
  else
    temp = min_value_node(node.right)
    node.value = temp.value
    node.right = delete_node(temp.value, node.right)
  end

  node
end

delete_node(1, tree.node)

print_tree(tree.node)
p search_node(2, tree.node)
