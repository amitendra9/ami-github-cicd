def print_func():
    '''
    This is function for printing message.
    '''
    print('Hello World!!!')

def second_func(a,b):
    '''
    This is second function for adding two number.
    '''
    return a+b

if __name__ == "__main__":
    print_func()
    num1 = 12
    num2 = 13
    sum = second_func(num1, num2)
    print(sum)