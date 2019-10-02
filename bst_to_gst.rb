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
def bst_to_gst(root)
    sum = [0]
    
    helper(root, sum)
    root
  end
  
  def helper(root, sum)
    helper(root.right, sum) if root.right
    sum[0] += root.val
    root.val = sum[0]
    helper(root.left, sum) if root.left
  end
  