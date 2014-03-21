A solution to the Caesar Cipher  cryptography problem.

def cipher(word, num)
alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
new_word = ""

word.each_char do |i|
  if !alphabet.include?(i)
    new_word +=i
  else
    new_word += alphabet[alphabet.index(i) - num]
  end
end

return new_word
end

puts cipher("Now This is a fun game to play!!!!!", 2)
