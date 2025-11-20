# Programming with LLMs in R & Python

This public repository contains the materials for the "Programming with LLMs in R & Python" workshop, taught at the North East Data Science meetup in November 2025.

## Content

- slides/ - html slides for chapters 1, 2 and 3
- scripts/ - live demo scripts and exercises for chapter 2

## Prerequisites

If you would like to take part in the workshop you will require:

- A working installation of either R or Python (if you have both then just pick your favourite language).

- We will be using the {ellmer} package for R and the chatlas package for Python. These are available to install via CRAN and pip, respectively.

  - For R users: `install.packages("ellmer")`

  - For Python users: `pip install chatlas`

You will also require an "API key" in order to interact with a large language model. Any LLM is fine, whether it's ChatGPT, Claude, Google Gemini, etc.

If you don't already have an API key, I recommend generating one for the free tier of Google Gemini:

- Visit this webpage: https://aistudio.google.com/app/api-keys

- Click "Create API key"

- Make up a name for the key

- In the dropdown options, click "Create project" and make up a project name

- Finally, click "Create key"

- Expand the created key and copy the API key sequence

- Store it under an environment variable called `GOOGLE_API_KEY` or `GEMINI_API_KEY`

You may need to restart your laptop or RStudio session for the environment variable to become activated.

