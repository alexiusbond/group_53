# import random
#
# print(random.randint(1,10))

from random import randint as generate_number, choice
import utils.calculator as calc
from utils.templates import Person
from termcolor import cprint
from decouple import config

print(choice(["one", "two", "three"]))
print(generate_number(5, 15))
print(calc.multiplication(7, 2))

my_friend = Person('Jane', 25)
print(my_friend)
cprint("Hello, World!", "green")

print(config('DATABASE_URL'))
commented = config('COMMENTED', default=0, cast=int)
print(commented * 2)
