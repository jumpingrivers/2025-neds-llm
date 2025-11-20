library(ellmer)

chat = chat_google_gemini()

## Question 1

# Let's find out more about 1066
chat$chat("Who were the key players in 1066?")


## Question 1a
# Use a structured query to find out the name of the victor in 1066
type_name = type_

chat$chat_structured(
  "...",
  type =
)


## Question 1b
# Use a structured query to find out the name, age and nationality of
# the victor of 1066

# Define the desired return type
type_person = type_

chat$chat_structured(
  "...",
  type =
)


## Question 1c (harder)
# Generate a list of the contenders for the English throne in 1066
# Hint: you will need to wrap your type_object inside a type_array()
type_people = type_

people = chat$chat_structured(
  "...",
  type =
)

## Question 2

# An image file called "safari.jpg" is attached.
image_filepath = file.path("scripts", "other_llms", "chapter2", "safari.jpg")

## Question 2a
# Get a summary of what is shown in the image
# Hint: you can just provide your question in the 'query' string below
query = "Answer"

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

type_animals = type_

chat$chat_structured(
  "...",
  content_image_file(filename),
  type = type_animals
)

## Back to the slides
