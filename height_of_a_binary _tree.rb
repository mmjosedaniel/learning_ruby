# frozen_string_literal: true

# *Node
class Node
  attr_accessor :info, :left, :right, :level

  def initialize(info)
    @info = info
    @left = nil
    @right = nil
    @level = 0
  end

  def str
    str = @info
    str.to_s
  end
end

# *Tree
class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def create(val)
    if @root.nil?
      @root = Node.new(val)
    else
      current = @root

      loop do
        if val < current.info
          if current.left
            current = current.left
          else
            current.left = Node.new(val)
            break
          end
        elsif val > current.info
          if current.right
            current = current.right
          else
            current.right = Node.new(val)
          end
        else
          break
        end
      end
    end
  end
end

def height(root)
  num = 0
  arr_result = []
  find_result(root, num, arr_result)
  arr_result.max - 1
end

def find_result(root, num, arr_result)
  arr_result.push(num += 1)
  find_result(root.left, num, arr_result) unless root.left.nil?
  find_result(root.right, num, arr_result) unless root.right.nil?
end

arr = [3, 5, 2, 1, 4, 6, 7] # Expected 3
# arr = [15] # Expected # Espected 0
# arr = [3, 1, 7, 5, 4] # Espected 3

tree = BinarySearchTree.new

arr.each do |val|
  tree.create(val)
end

puts height(tree.root)
