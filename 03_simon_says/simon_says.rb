#write your code here
def echo text
    text
end

def shout text
    text.upcase
end

def repeat (text, times = 2)
    new_text = ""
    times.times do
        new_text = text + " " + new_text
    end
    new_text.strip
end

def start_of_word text, letters
    all_letters = text.chars
    some_letters = []
    i = 0 
    while i < letters.to_i
        some_letters.push(all_letters[i])
        i = i + 1
    end
    some_letters.join
end

def first_word text
    text.split.first
end

def titleize text
    text_words = text.split
    text_words.first.capitalize!
    i=1
    while i < text_words.length
        if text_words[i].length > 3 && text_words[i] != "over"
            text_words[i].capitalize!
        end
        i = i + 1
    end
    text_words.join(' ').strip
end
