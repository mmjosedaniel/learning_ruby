# frozen_string_literal: true
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
    max_val = nums.max
    val_index = nums.index(max_val)
    node = TreeNode.new(max_val)
    
    if val_index > 0
        node.left = construct_maximum_binary_tree(nums[0...val_index])
    end
    if val_index < (nums.length - 1)
        node.right = construct_maximum_binary_tree(nums[(val_index + 1)..-1])
    end
    node
  end
  