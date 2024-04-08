from faker import Faker

fake = Faker()

firstNameFaker = fake.first_name()

lastNameFaker = fake.last_name()

emailFaker = fake.email(domain="fake-domain-name.com")

mobileFaker = fake.numerify(text="1#########")

addressFaker = fake.address()

# Generate birthday date.
birthdate = fake.date_of_birth(minimum_age=18, maximum_age=65)

# Format the birthday date.
birthdateFaker = birthdate.strftime("%d %b %Y")