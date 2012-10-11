class CartesianProduct
    include Enumerable

    def initialize(sec1, sec2)
        @sec1 = sec1
        @sec2 = sec2
    end

    def each()
        @sec1.each do |item1|
            @sec2.each do |item2|
                yield [item1, item2]
            end
        end
    end
end

# c = CartesianProduct.new([:a,:b], [4,5])
# c.each { |elt| puts elt.inspect }

# c = CartesianProduct.new([:a,:b], [])
# c.each { |elt| puts elt.inspect }
