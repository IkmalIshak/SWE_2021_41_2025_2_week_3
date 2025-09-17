FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    def getNum(num):\n\
        sum = 0\n\
        while num > 0:\n\
            digit = num % 10\n\
            sum += digit * digit\n\
            num //= 10\n\
        return sum\n\
\n\
    check = set()\n\
    while n != 1 and n not in check:\n\
        check.add(n)\n\
        n = getNum(n)\n\
\n\
    return n == 1\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]
