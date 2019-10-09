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
def prune_tree(root)
  n_sum = [0]

  clear_tree(root, n_sum)
  root
end

def clear_tree(root, n_sum)
  n_sum[0] = 0
  if root.left
    sum_nodes(root.left, n_sum)

    root.left = nil if n_sum[0].zero?
  end

  n_sum[0] = 0
  if root.right
    sum_nodes(root.right, n_sum)

    root.right = nil if n_sum[0].zero?
  end

  clear_tree(root.left, n_sum) if root.left
  clear_tree(root.right, n_sum) if root.right
end

def sum_nodes(root, n_sum)
  n_sum[0] += root.val
  sum_nodes(root.left, n_sum) if root.left
  sum_nodes(root.right, n_sum) if root.right
end
