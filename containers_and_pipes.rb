# frozen_string_literal: true

class Vertex
  attr_accessor :name, :neighbors, :capacity, :lv, :flow, :temp

  def initialize(name, capacity, flow)
    @name = name
    @neighbors = []
    @capacity = capacity
    @lv = 0
    @flow = flow
    @temp = 0
  end
  end

class Graph
  attr_accessor :vertices

  def initialize
    @vertices = []
  end

  def add_vertex(name, capacity, flow)
    vertices << Vertex.new(name, capacity, flow)
  end

  def add_dege(start_name, end_name)
    from = vertices.index { |val| val.name == start_name }
    to = vertices.index { |val| val.name == end_name }

    vertices[from].neighbors[to] = true
  end

  def fill_containers(time)
    time.times do
      vertices[0].lv += vertices[0].temp
      vertices[0].temp = vertices[0].flow
      let_the_water_flow
    end
    if vertices[0].lv + vertices[0].temp > vertices[0].capacity
      vertices[0].lv = vertices[0].capacity
      vertices[0].temp = 0
    end
    puts humanice_response
  end

  def let_the_water_flow(container = vertices[0])
    container.neighbors.each_with_index do |val, i|
      next unless val == true

      vertices[i].lv += vertices[i].temp
      vertices[i].temp = 0

      vertices[i].flow.times do
        break if container.lv <= 0 ||
                 vertices[i].lv + vertices[i].temp >= vertices[i].capacity

        container.lv -= 1
        vertices[i].temp += 1
      end

      let_the_water_flow(vertices[i])
    end
  end

  private

  def humanice_response
    str = ''
    vertices.each do |val|
      litre = if val.lv + val.temp == 1
                'litre'
              else
                'litres'
              end
      str += "The container #{val.name} has #{val.lv + val.temp} #{litre} of liquid \n"
    end
    str
  end
end

containers = Graph.new

containers.add_vertex('A', 10, 4)
containers.add_vertex('B', 25, 1)
containers.add_vertex('C', 30, 4)
containers.add_vertex('D', 53, 8)

containers.add_dege('A', 'B')
containers.add_dege('A', 'C')
containers.add_dege('C', 'D')

containers.fill_containers(29)

# pp containers
