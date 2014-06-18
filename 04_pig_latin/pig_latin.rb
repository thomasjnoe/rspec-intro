$vowels = ["a","e","i","o","u"]
def translate(str)
    words = []
	str.split(" ").each do |word|
		while $vowels.include?(word[0].downcase) == false
			if word[0..1] == "qu"
				word = word[2..-1] + word[0..1]
			else
				word = word[1..-1] + word[0]
			end
		end
		word = word + "ay"
        words.push(word)
	end
    words.join(" ")
end