class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      @#{attr_name}_history = Array.new

      def #{attr_name}= (val)
        if @#{attr_name}_history == nil
            @#{attr_name}_history = [nil, val]
        else
            @#{attr_name}_history = @#{attr_name}_history + [val]
        end
        @#{attr_name} = val
      end
    }

  end

end

# class Foo
#     attr_accessor_with_history :bar
# end

# f = Foo.new
# puts f.bar = 1
# puts f.bar = 2
# puts f.bar_history