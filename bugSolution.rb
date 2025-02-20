```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def some_method(*args)
    puts "some_method called with args: #{args.inspect}"
  end

  def another_method
    puts "another_method called"
  end

  def method_missing(method_name, *args, &block)
    raise NoMethodError, "Undefined method '#{method_name}' called"
  end
end

object = MyClass.new(10)
object.some_method(1, 2, 3)
object.another_method
#object.nonexistent_method #This will now raise a NoMethodError
```