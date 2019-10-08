# hello program

def print_str(x):
    print(x.format(10,9,34,x))

if __name__ == "__main__":
    # hello main
    x = "# hello program{0}{0}def print_str(x):{0}{1}print(x,10,9,34,x){0}{0}if __name__ == {3}__main__{3}:{0}{1}# hello main{0}{1}x = {3}{4}{3}{0}{2}print_str(x)"
    print_str(x)
