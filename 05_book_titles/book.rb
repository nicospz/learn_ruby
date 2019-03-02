class Book
# write your code here
    def title=t
        dontCapitalize = ["and", "or", "in", "on", "the", "of", "a", "to", "an"]
        split = t.split
        capitalizedTitle = ""
        first = true
        split.each do |word|
            if (!dontCapitalize.include? word)
                word = word.capitalize
            end
            if (first || word == "i")
                word = word.capitalize
            end
            capitalizedTitle += word + " "
            first = false
        end
        capitalizedTitle[-1] = ""
        @title = capitalizedTitle
    end

    def title
        @title
    end
end
