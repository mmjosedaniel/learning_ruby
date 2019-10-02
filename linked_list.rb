# frozen_string_literal: true

class Node
  attr_accessor :value, :next

  def initialize(val)
    @value = val
  end
end

class LinkedList
  attr_accessor :node

  def initialize
    @node = nil
  end

  def push(val)
    if node.nil?
      @node = Node.new(val)
    else
      current = node
      current = current.next until current.next.nil?
      current.next = Node.new(val)
    end
  end
  
  def unshift(val)
    temp = node
    @node = Node.new(val)
    node.next = temp
  end

  def print_linked_list
    current = node
    until current.nil?
      puts current.value
      current = current.next
    end
  end

  def delete_node(val)
    node = @node
    if node.nil?
      node
    elsif val == node.value
      @node = node.next
    else
      loop do
        if node.next.nil?
          break
        elsif val != node.next.value
          node = node.next
        elsif val == node.next.value
          node.next = node.next.next
          break
        else
          break
        end
      end
    end
  end
end

linked_list = LinkedList.new

linked_list.push(2)
linked_list.push(3)
linked_list.push(4)
linked_list.push(5)
linked_list.delete_node(2)


linked_list.unshift(1)
linked_list.print_linked_list
