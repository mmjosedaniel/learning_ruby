# frozen_string_literal: true

container = [[0, 2, 1], [1, 1, 1], [2, 0, 0]]

def organizingContainers(container)
  containers_capacity = container.map { |arr| arr.sum }.sort
  balls_type_quantity = container.transpose.map { |arr| arr.sum }.sort

  if containers_capacity == balls_type_quantity
    p 'Possible'
  else
    p 'Impossible'
  end
end

 organizingContainers(container)
