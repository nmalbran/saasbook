
class String
    def anagram_key()
        return self.downcase.split('').sort.join('')
    end
end


def combine_anagrams(words)
    anagrams = Hash.new([])
    words.each do |w|
        anagrams[w.anagram_key] = anagrams[w.anagram_key] + [w]
    end
    return anagrams.values
    # final = []
    # anagrams.each_pair do |k,g|
    #     final << g
    # end
    # return final
end
