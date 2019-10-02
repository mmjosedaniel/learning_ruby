
# frozen_string_literal: true

class Node
  attr_accessor :value, :left, :right, :position

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
      node.position = 1
      puts node.position
    else
      current = node

      loop do
        if val < current.value && current.left.nil?
          current.left = Node.new(val)
          current.left.position = current.position * 2
          puts current.left.position
          break
        elsif val > current.value && current.right.nil?
          current.right = Node.new(val)
          current.right.position = (current.position * 2) + 1
          puts current.right.position
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

  def min_value_node
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
      puts node.position
      temp = node.right
      node = nil
      return temp
    elsif node.right.nil?
      puts node.position
      temp = node.left
      node = nil
      return temp
    else
      puts node.position
      temp = min_value_node
      node.value = temp.value
      node.right = delete_node(temp.value, node.right)
    end

    node
  end
end

tree = Tree.new

def position(acction, val, tree)
  if acction == 'i'
    tree.insert(val)
  else
    tree.delete_node(val, tree.node)
  end
end

n = 5
arr = [
  ['i', 1],
  ['i', 2],
  ['i', 0],
  ['d', 2],
  ['i', 3]
]

n.times do |i|
  query = arr
  position(query[i][0].to_s, query[i][1].to_i, tree)
end

pp tree
