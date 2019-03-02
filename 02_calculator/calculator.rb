#write your code here
def add x, y 
    x+y 
end

def subtract x, y 
    x-y 
end

def sum list 
    sum = 0
    list.each do |x|
        sum += x
    end
    sum
end

def multiply list 
    product = 1
    list.each do |x|
        product *= x
    end
    product
end

def power x, y 
    x**y
end

def factorial x
    if  x == 0 || x == 1
        return 1
    end
    product = 1
    i = 2
    while i <= x
        product *= i 
        i += 1
    end
    product
end
