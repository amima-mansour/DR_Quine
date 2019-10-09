import os
import sys

if __name__ == "__main__":
    i = 5
    if os.path.exists("Sully_5.py"):
        i -= 1
    try:
        file = open("Sully_{}.py".format(i), "w")
    except:
        sys.exit(0)
    s = "import os{0}import sys{0}{0}if __name__ == {2}__main__{2}:{0}{1}i = {4}{0}{1}if os.path.exists({2}Sully_5.py{2}):{0}{1}{1}i -= 1{0}{1}try:{0}{1}{1}file = open({2}Sully_{5}{6}.py{2}.format(i), {2}w{2}){0}{1}except:{0}{1}{1}sys.exit(0){0}{1}s = {2}{3}{2}{0}{1}file.write(s.format(chr(10),chr(32)*4,chr(34),s,i,chr(123),chr(125))){0}{1}file.close(){0}{1}if i > 0:{0}{1}{1}os.system({2}python3 Sully_{5}{6}.py{2}.format(i)){0}"
    file.write(s.format(chr(10),chr(32)*4,chr(34),s,i,chr(123),chr(125)))
    file.close()
    if i > 0:
        os.system("python3 Sully_{}.py".format(i))
