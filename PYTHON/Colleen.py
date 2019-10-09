"""hello program
"""

def main(x):
    print(x.format(chr(10),chr(32)*4,chr(34),x))

if __name__ == "__main__":
    # hello main
    x = "{2}{2}{2}hello program{0}{2}{2}{2}{0}{0}def main(x):{0}{1}print(x.format(chr(10),chr(32)*4,chr(34),x)){0}{0}if __name__ == {2}__main__{2}:{0}{1}# hello main{0}{1}x = {2}{3}{2};main(x)";main(x)
