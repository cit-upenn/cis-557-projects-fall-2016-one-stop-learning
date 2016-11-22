# # This file should contain all the record creation needed to seed the database
# with its default values. # The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup). # # Examples: # #   cities =
# City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }]) #
# Mayor.create(name: 'Emanuel', city: cities.first) 
Favorite.create(url:
'https://www.youtube.com/embed/N4mEzFDjqtA?controls=1', description: 'This
video covers modules, comments, print, arithmetic operators, order of
operation, lists, tuples, dictionaries, conditional operators, logical
operators, if, else, elif, loops, for, while, break, continue, functions,
return, readline(), string operators, file i/o, classes, objects and much
more.', language: 'Python')

Favorite.create(url:
'https://www.youtube.com/embed/cpPG0bKHYKc?controls=1', description:
'This Python Programming Tutorial covers the instillation python and
setting up the python development environment. This video covers
setting up a system variable for using python from the windows command
prompt and also covers using python from the built in IDLE IDE. After
setting up the development an environment this video demonstrates how
to create and run your first python script (Hello World).This video
series is ideal for individuals looking to learn their
first programming language or individuals looking to learn python
as another programming language.', language: 'Python')

Favorite.create(url: 'https://www.youtube.com/embed/4Mf0h3HphEA?controls=1',
description: 'This series assumes zero prior knowledge of programming and will
leave you with a firm grasp of the language. The instructor strikes a really
great balance between being funny while also being easy to listen.', language:
'Python')
