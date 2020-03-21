#write your code here

def translate text
    vowels = ["a", "e", "i", "o", "u", "y"]
    punctation = [".", ","]
    all_words = text.split
    all_words.map! do |word|
        this_punctation = ""
        is_cap = false
        if word == word.capitalize
            word.downcase!
            is_cap = true
        end
        all_letters = word.split(//)
        if word.include? "qu"
            q_index = all_letters.index("q")
            all_letters.delete_at(q_index)
            all_letters[q_index] = "qu"
        end
        if punctation.include?(all_letters.last)
            this_punctation = all_letters.pop
        end
        while !(vowels.include?(all_letters[0]))
            first = all_letters[0]
            all_letters.delete_at(0)
            all_letters.push(first)
        end
        word = all_letters.join + "ay" + this_punctation
        if is_cap
            word.capitalize!
        end

        word
    end
    all_words.join(" ").strip
end