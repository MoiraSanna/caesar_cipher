def caesar_cipher (phrase, key)
    txt = phrase.split("")
    txt.map! do |letter|
        if (97..122) === letter.ord
            if letter.ord + key <= 122
                letter = (letter.ord + key).chr
            else letter = (96 + letter.ord + key - 122).chr
            end
        elsif (65..90) === letter.ord
            if letter.ord + key <= 90
                letter = (letter.ord + key).chr
            else letter = (64 + letter.ord + key - 90).chr
            end
        else letter
        end
    end
    txt.join("")
end

puts "Tell me a secret and we are going to encrypt it"
phrase = gets.chomp
puts "Great! What level of encryption do you want from 1 to 5?"
key = gets.chomp.to_i
puts caesar_cipher(phrase, key)