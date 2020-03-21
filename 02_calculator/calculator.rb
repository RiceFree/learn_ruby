#write your code here
def add a,b
    a + b
end

def subtract a, b
    a - b
end

def sum numbers
    sum = 0
    numbers.each{ |x| sum = sum + x}
    sum
end

def multiply numbers
    if numbers == []
        return 0
    end
    i = 1
    result = numbers[0]
    while i < numbers.length
        result = result * numbers[i]
        i = i + 1
    end
    result
end

def power a, b
    result = 1
    b.times do
        result = result * a
    end
    result
end

def factorial x
    if x == 0
        return 1
    end
    scale = []
    i = 1
    while i <= x
        scale.push(i)
        i = i + 1
    end
    multiply(scale)
end