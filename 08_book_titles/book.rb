class Book
    def title=(title)
    	lowercase = ['a','an','the','at','by','for','in','of','on','to','up',
		'and','as','but','it','or','nor','over']
		words = title.split(" ")
		words[0] = words[0].capitalize
		words.map! { |word| lowercase.include?(word) == false ? word.capitalize : word }
		@title = words.join(" ")
	end

	def title
		@title
	end
end
