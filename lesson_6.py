animals_list = ["cat", "cow", "dog"]
fruits_list = ["apple", "pear", "banana", "mango", "kiwi"]

for fruit in fruits_list:
    print(fruit)

for animal in animals_list:
    print(animal)
# O(F + A)

for animal in fruits_list:
    for fruit in fruits_list:
        print(f'{animal} loves {fruit}')


# O(A * F)

def counter(number):
    print(number)
    if number > 0:
        counter(number - 1)

counter(3)
