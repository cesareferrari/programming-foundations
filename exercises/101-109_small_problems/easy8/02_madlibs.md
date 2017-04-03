Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

Example

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!


Rules:

Create a series of stories with placeholders for noun, verb, etc.

Welcome to Madlibs
Enter a noun:
...

Select a random story
Place variables


Algorithm:

initialize array of STORIES, with placeholders.

stories = ["The %s %s has %s %s a plant.",
"A red %s %s %s the %s arrow."]

loop to Gather inputs

noun = 'dog'
verb = 'walk'
adjective = 'blue'
adverb = 'quickly'

puts random story with substitutions

go again? Y/N

if Y go through the loop again

if N say goodbye
