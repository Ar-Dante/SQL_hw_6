from faker import Faker
from random import randint

fake = Faker('uk-UA')


disciplines = [
    "Системне програмування",
    "Теорія Ігор",
    "Математична економіка",
    "Актуарна математика",
    "Геометричне моделювання",
    "Ассемблер",
    "Теорія мереж",
    "Web програмування",
    "Математичний аналіз"
]

groups = ['EC-92', 'ХП-31', 'ГС-2']

NUMBERS_TEACHERS = 5
NUMBER_STUDENTS = 50

print(randint(1, NUMBERS_TEACHERS))
teachers = [fake.name() for _ in range(NUMBERS_TEACHERS)]
list_teacher_id = [randint(1, NUMBERS_TEACHERS) for _ in range(len(disciplines))]
list_group_id = [randint(1, len(groups)) for _ in range(NUMBER_STUDENTS)]

if __name__ == '__main__':
    print(list_group_id)