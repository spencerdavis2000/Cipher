require 'pry'

# 
# cipher ==> regular function f(x) = (x+5) mod 26
# decipher ==> inverse f-(x) = (x-5) mod 26
#
# one-to-one relationship between the key and value of a hash data structure
# a gets mapped to 0, b gets mapped to 1, c gets mapped to 3 and so on
# since we have a one to one relationship, we can do an inverse function 
# and therefore create a cipher and decipher function

@alphabet = {'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 
			 'h' => 7, 'i' => 8, 'j' => 9, 'k' => 10, 'l' => 11, 'm' => 12, 'n' =>13, 
			 'o' => 14,'p' => 15,'q' => 16,'r' => 17,'s' => 18, 't' => 19, 'u' => 20, 
			 'v' => 21,'w' => 22,'x' => 23,'y' => 24,'z' => 25}

@fake_message = ""
@real_message = ""

def cipher(char)
	return (char+ 5) % 26
end
def decipher(char)
	return (char - 5) % 26
end

def scramble(message)
	@fake_message = ""
	message.each_byte do |i|
		real_letter = i.chr.downcase
		if real_letter == ' '
			@fake_message += real_letter
		elsif real_letter != ' '
			real_index = @alphabet[real_letter]
			fake_index = cipher(real_index)
			fake_letter = @alphabet.key(fake_index)
			@fake_message += fake_letter
		end
	end
	return @fake_message
end

def descramble(message)
	@real_message = ""
	message.each_byte do |i|
		fake_letter = i.chr.downcase
		if fake_letter == ' '
			@real_message += fake_letter
		elsif fake_letter != ' '
			fake_index = @alphabet[fake_letter]
			real_index = decipher(fake_index)
			real_letter = @alphabet.key(real_index)
			@real_message += real_letter
		end
	end
	return @real_message
end

binding.pry