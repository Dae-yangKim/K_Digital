from faker import Faker
fake = Faker('ko-KR')
print(fake.name())

test_data = [(fake.name() , fake.address()) for _ in range(30)]
print(test_data)