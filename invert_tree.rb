# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return nil if root.nil?

  helper(root)
  root
end

def helper(root)
  helper(root.left) if root.left
  helper(root.right) if root.right
  temp_left = root.left
  temp_right = root.right
  root.left = nil
  root.right = nil
  root.left = temp_right
  root.right = temp_left
end
