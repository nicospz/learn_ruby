#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, times=2
    repeated = (phrase + " ")*times
    return repeated[0...-1]
end

def start_of_word word, numberOfLetters
    return word[0...numberOfLetters]
end

def first_word phrase
    return phrase[0...phrase.index(" ")]
end

def titleize phrase
    splitted = phrase.split()
    newPhrase = splitted[0].capitalize + " "
    splitted = splitted.drop(1)
    splitted.each do |x|
        if x != "and" && x != "or" && x != "over" && x != "the" && x != "with"
            x = x.capitalize
        end
        newPhrase += x + " "
    end
    newPhrase[0...-1]
end