class Book
# write your code here
    attr_accessor :title

    def title
        titleize(@title)
    end
    def titleize input
        non_capitalize = ["the", "a", "an", "and", "or", "in", "of", "by", "over"]
            text_words = input.split
            text_words.first.capitalize!
            i=1
            while i < text_words.length
                if !(non_capitalize.include?(text_words[i]))
                    text_words[i].capitalize!
                end
                i = i + 1
            end
            text_words.join(' ').strip
    end
end
