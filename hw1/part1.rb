#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
    downcased_str = str.downcase
    nospaced_str = downcased_str.gsub(/\W+/,"")
    reversed_str = nospaced_str.reverse
    return nospaced_str == reversed_str
end

def count_words(str)
    fin = Hash.new(0)
    words = str.downcase.scan(/\w+/)
    words.each do |s|
        fin[s] = fin[s] + 1
    end
    return fin
end
