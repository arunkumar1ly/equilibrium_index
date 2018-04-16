require "rubygems"

## method 1
def equili_indices(list)
  left = 0
  right = list.inject(0, :+)
  equilibrium_indices = []

  list.each_with_index do |val, i|
    right -= val
    equilibrium_indices << i if right == left
    left += val
  end

  equilibrium_indices
end

## method 2
def equili_indices_with_inject(list)
  list.each_index.select do |i|
    list[0...i].inject(0, :+) == list[i+1..-1].inject(0, :+)
  end
end

## calling method with sample array method 
sample_array = [-7, 1, 5, 2, -4, 3, 0]
## calling method 1
puts equili_indices(sample_array)
## calling method 2
puts equili_indices_with_inject(sample_array)