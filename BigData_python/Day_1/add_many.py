def add_many(*args):
    result = 0
    for i in args:
        result += i
    return result

def add_mul(choice , *args):
    result = 0
    if choice == 'add':
        for i in args:
            result += i
    elif choice == 'mul':
        result = 1
        for i in args:
            result *= i
    return result

first = add_mul('add' , 1,2,3,4,5)
print(first)
second = add_mul('mul' , 1,2,3,4,5)
print(second)