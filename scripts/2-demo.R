# Chapter 2 demo

# load the {ellmer} package
library(ellmer)

## User prompts

# Set up chat interface
chat = chat_google_gemini()

# See https://ellmer.tidyverse.org/#providers for all providers

# General knowledge
chat$chat("What happened in 1066?")

chat$chat("What is the North East Data Science meetup?")

# Be careful: it's stating information as fact but it
# might just be an educated guess based on the "North East
# Data Science meetup" name

chat$chat("What is the North East Data Science meetup? Please be honest if you don't know the answer.")

# Let's try a made-up meetup
chat$chat("What is the North East Teletubbies meetup?")

# Request a more concise answer
chat$chat("Summarise what happened in 1066 in no more than 50 words")

# Lacks real-time knowledge
chat$chat("What is today's date?")

# LLMs are inconsistent with maths
chat$chat("What is 2+2?")
chat$chat("What is the natural logarithm of 14?")

# Programming knowledge
# Let's ask about the Pandas Python package
chat$chat("Provide code for creating a Pandas DataFrame")

# What about the ellmer package..?
chat$chat("How does the ellmer package work?")

# Did the LLM think you were still talking about a Python package?

# Take care with your prompts to be as specific as you can
chat$chat("How does the ellmer R package work?")

# Might not handle lesser known or recent packages very well...

# Back to the slides

## System prompts

# Controlling style of outputs
system_prompt = paste0(
  "You are a university professor who understands ",
  "how to make history fun and exciting. You also love ",
  "bird watching and enjoy bird-related metaphors. ",
  "You provide concise answers that are 100 words or less."
)
chat = chat_google_gemini(
  system_prompt = system_prompt
)

# Try some user prompts
chat$chat("What happened in 1066?")

# Adding contextual knowledge (e.g. package README)
filename = "scripts/other_llms/chapter2/README.md"
ellmer_readme = readChar(filename, file.info(filename)$size)

system_prompt = paste0(
  "You are a data scientist who provides clear ",
  "instructions in 100 words or less.",
  ellmer_readme
)

chat = chat_google_gemini(
  system_prompt = system_prompt
)

chat$chat("Tell me about the ellmer package")

## Back to the slides

## Structured outputs

# Initialise chat interface
chat = chat_google_gemini()

# More history
chat$chat("Who was the first person to set foot on the moon?")

# Define a return type
type_person = type_object(
  name = type_string(),
  age = type_integer(),
  nationality = type_string()
)

# Use a structured prompt
answer = chat$chat_structured(
  "Who was the first person to set foot on the moon?",
  type = type_person
)
answer
answer$name
answer$age

# Let's provide some documentation
type_person = type_object(
  name = type_string("The person's name"),
  age = type_integer("The person's age when they set foot on the moon"),
  nationality = type_string("The person's nationality")
)
chat$chat_structured(
  "Who was the first person to set foot on the moon?",
  type = type_person
)

# Now attempt Chapter 2 exercises
