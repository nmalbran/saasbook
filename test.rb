# rx = {:fox=>/^arm/, 'fox'=>[%r{AN(DO)$}, /an(dO)/i]}

# puts "armando" =~ rx[:fox]

# puts rx[:fox][1]

# s = "Hello: I`m a l33t programmer!!"

# puts s.split(/[^a-zA-Z]/).reject{|e| e == "I" || e.empty?}
# puts s.split(/[^a-zA-Z]/).reject{|e| e == "I"}
# puts s.scan(/[a-zA-Z]/).reject{|e| e == "I" || e.empty?}
# puts s.split(/[^a-z^A-Z]/).reject{|e| e == "I"}

# def mystery_sequence(start1, start2, limit=4)
#   yield start1
#   yield start2
#   nextval = start1 + start2
#   1.upto(limit) do
#     yield nextval
#     nextval, start2 = nextval + start2, nextval
#   end
# end

# s = []

# mystery_sequence(2,3).each do |elt| ; s<<elt; end
# mystery_sequence(2,3) do |elt| ; s<<elt; end
# mystery_sequence(2,3).do |elt| ; s<<elt; end
# puts s

class C
    def initialize()

    end


end


class B < C
    def initialize()

    end


end


class A < B
    def initialize()

    end
end

a = A.new
b = B.new

puts b.respond_to?('class')
# puts a.superclass == b.class
puts A.superclass == B
puts a.class.ancestors.include?(C)