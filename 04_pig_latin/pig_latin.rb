#write your code here
class String
    def is_capitalized?
        self == self.capitalize
    end
    def starts_with_consonants? 
        consonants = "bcdfghjklmnpqrstvwxyz"
        consonants += consonants.upcase
        consonants.index(self[0])
    end
    def ends_with_puntuation?
        if (".,:;".index(self[-1]))
            self[-1]
        end
    end
end

def translate phrase
    splittedPhrase = phrase.split
    translatedPhrase = ""
    splittedPhrase.each do |word|
        capitalized = word.is_capitalized?
        puntuation = word.ends_with_puntuation?
        if(puntuation)
            word[-1] = ""
        end
        if("Qq".index(word[0]) && word[1] == "u")
            2.times do
                word += word[0].downcase
                word[0] = ""
            end
        end
        if(word.starts_with_consonants? && word[1] == "q" && word[2] == "u")
            3.times do
                word += word[0].downcase
                word[0] = ""
            end
        end
        while (word.starts_with_consonants?)
            word += word[0].downcase
            word[0] = ""
        end
        word += "ay"
        if (capitalized)
            word = word.capitalize
        end
        if (puntuation)
            word += puntuation
        end
        translatedPhrase += word + " "
    end
    translatedPhrase = translatedPhrase[0...-1]
end
