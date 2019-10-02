# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
  node = TreeNode.new(nil)

  preorder.each do |val|
    insert_node(val, node)
  end
  node
end

def insert_node(val, node)
  current = node

  loop do
    if current.val.nil?
      current.val = val
      break
    elsif val < current.val && current.left.nil?
      current.left = TreeNode.new(val)
      break
    elsif val > current.val && current.right.nil?
      current.right = TreeNode.new(val)
      break
    elsif val < current.val
      current = current.left
    elsif val > current.val
      current = current.right
    else
      break
    end
  end
end
