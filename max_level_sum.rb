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
# @return {Integer}
def max_level_sum(root)
  level = 0
  sums = []

  find_max_level(root, level, sums)

  sums.index(sums.max) + 1
end

def find_max_level(root, level, sums)
  if sums[level].nil?
    sums.push(root.val)
  else
    sums[level] += root.val
  end

  find_max_level(root.left, level + 1, sums) if root.left
  find_max_level(root.right, level + 1, sums) if root.right
end
