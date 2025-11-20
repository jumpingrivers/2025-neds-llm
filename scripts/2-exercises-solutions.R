library(ellmer)

chat = chat_google_gemini()

## Question 1

# Let's find out more about 1066
chat$chat("Who were the key players in 1066?")


## Question 1a
# Use a structured query to find out the name of the victor in 1066
type_name = type_string("The person's name")

chat$chat_structured(
  "Who was the winner of 1066?",
  type = type_name
)


## Question 1b
# Use a structured query to find out the name, age and nationality of
# the victor of 1066

# Define the desired return type
type_person = type_object(
  name = type_string("The person's name"),
  age = type_integer("The person's age in years"),
  nationality = type_string("The person's nationality")
)

chat$chat_structured(
  "Who was the winner in 1066",
  type = type_person
)


## Question 1c (harder)
# Generate a list of the contenders for the English throne in 1066
# Hint: you will need to wrap your type_object inside a type_array()
type_people = type_array(
  type_object(
    name = type_string("The person's name"),
    age = type_integer("The person's age in years"),
    nationality = type_string("The person's nationality")
  )
)

people = chat$chat_structured(
  "Who were the key players in 1066",
  type = type_people
)

## Question 2

# An image file called "safari.jpg" is attached.
image_filepath = file.path("scripts", "safari.jpg")

## Question 2a
# Get a summary of what is shown in the image
# Hint: you can just fill in the 'query' string below
query = "What does the image show?"

chat$chat(
  query,
  content_image_file(image_filepath)
)

## Question 2b
# Now use a structured query to get the following info for each species shown:
# - Name of the species
# - Average weight of the species in kilograms
# - Typical diet for the species
# - Average lifespan of the species in years

type_animals = type_array(
  type_object(
    name = type_string("Name of the species"),
    weight = type_number("Average weight of the species in kilograms"),
    diet = type_string("Typical diet of the species"),
    lifespan = type_number("Average lifespan of the species in years")
  )
)

chat$chat_structured(
  "What are the unique animal species in this image?",
  content_image_file(filename),
  type = type_animals
)

## Back to the slides
