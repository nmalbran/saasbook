class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(cur)
    singular_currency = cur.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end
  end
end

class String
  def palindrome?()
    nospaced_str = self.downcase.gsub(/\W+/,"")
    reversed_str = nospaced_str.reverse
    return nospaced_str == reversed_str
  end
end

module Enumerable
  def palindrome?()
    temp1 = []
    temp2 = []
    self.each do |item|
        temp1 = [item] + temp1
        temp2 = temp2 + [item]
    end
    return temp2 == temp1
  end
end

# puts 1.dollars.in(:rupees)
# puts [1,2,3,2,1].palindrome?