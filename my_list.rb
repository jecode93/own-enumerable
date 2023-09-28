require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end

# TESTS:
# Test all?
list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

# Test any?
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

# Test filter
list = MyList.new(1, 2, 3, 4, 5)
filtered_list = list.filter(&:even?)
puts filtered_list.inspect
