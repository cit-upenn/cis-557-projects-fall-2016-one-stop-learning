# # This file should contain all the record creation needed to seed the database
# with its default values. # The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup). # # Examples: # #   cities =
# City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }]) #
# Mayor.create(name: 'Emanuel', city: cities.first) 
Favorite.destroy_all
Langopt.destroy_all
Pythonquiz.destroy_all
Javaquiz.destroy_all
Rubyquiz.destroy_all
Cppquiz.destroy_all
#-------------------------Python---------------------------------------------#
Favorite.create(url:
'https://www.youtube.com/embed/N4mEzFDjqtA?controls=1', description: 'This
video covers modules, comments, print, arithmetic operators, order of
operation, lists, tuples, dictionaries, conditional operators, logical
operators, if, else, elif, loops, for, while, break, continue, functions,
return, readline(), string operators, file i/o, classes, objects and much
more.', language: 'Python', owner: 'Derek Banas')

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
as another programming language.', language: 'Python', owner: 'onestopprogramming')

Favorite.create(url: 'https://www.youtube.com/embed/4Mf0h3HphEA?controls=1',
description: 'This series assumes zero prior knowledge of programming and will
leave you with a firm grasp of the language. The instructor strikes a really
great balance between being funny while also being easy to listen.', language:
'Python', owner: 'thenewboston')



#-------------------------Ruby---------------------------------------------#
Favorite.create(url: 'https://www.youtube.com/embed/Dji9ALCgfpM?controls=1',
description: 'This video is a perfect revision lecture and covers most of the
fundamentals. The length and the pacing of information  mades it really good
as a preview.', language: 'Ruby', owner: 'Derek Banas')

Favorite.create(url: 'https://www.youtube.com/embed/8I539U5lXWY?controls=1',
description: 'This video series is ideal for beginners and covers all the
basic concepts in-depth.', language: 'Ruby', owner: 'Jake Day Williams')

Favorite.create(url: 'https://www.youtube.com/embed/Dji9ALCgfpM?controls=1',
description: 'Good tutorial for the freshers. Every concept is explained very
clearly and even a viewer who doesn\'t know anything about coding can also
understand it easily.', language: 'Ruby', owner: 'Smartherd')




#-------------------------C++---------------------------------------------#
Favorite.create(url: 'https://www.youtube.com/embed/Rub-JsjMhWY?controls=1',
description: 'This video is a great refresher course and covers datatypes,
arithmetic operations, if statement, switch statement, ternary operator,
arrays, for loop, while loop, do while loop, how to obtain user input,
strings, vectors, functions, recursive functions, exception handling,
pointers, reference operator, classes / objects, static variables and
functions, constructors, inheritance, virtual methods, polymorphism and
abstract data type.', language: 'C++', owner: 'Derek Banas')

Favorite.create(url: 'https://www.youtube.com/embed/S3t-5UtvDN0?controls=1',
description: 'This video series is ideal for beginners looking to learn C++ as
it assumes zero prior knowledge of programming.', language: 'C++', owner:
'Programming Tutorials')

Favorite.create(url: 'https://www.youtube.com/embed/-WwGMNGRHdw?controls=1',
description: 'This series covers the fundamentals of C++. Has great content
and goes at an appropriate pace such that all the views irrespective of their
background can follow it easily.', language: 'C++', owner: 'Anurag Verma')




#-------------------------Java---------------------------------------------#
Favorite.create(url: 'https://www.youtube.com/embed/WPvGqX-TXP0?controls=1',
description: 'This Java programming Tutorial teachs you all of the core
knowledge needed to write Java code in 30 minutes. It specifically covers the
following topics: primitive data types, comments, class, import, Scanner,
final, Strings, static, private, protected, public, constructors, math,
hasNextLine, nextLine, getters, setters, method overloading, Random, casting,
toString, conversion from Strings to primitives, converting from primitives to
Strings, if, else, else if, print, println, printf, logical operators,
comparison operators, ternary operator, switch, for, while, break, continue,
do while, polymorphism, arrays, for each, multidimensional arrays and more.',
language: 'Java', owner: 'Derek Banas')

Favorite.create(url: 'https://www.youtube.com/embed/Cfd9DOnuF9w?controls=1',
description: 'This series covers the basic concepts of Java. The instructor
provides great explanation and makes the concepts easy to follow and
understand.', language: 'Java', owner: 'Software Tutorials')

Favorite.create(url: 'https://www.youtube.com/embed/RGcDksxiyJo?controls=1',
description: 'This video aims at teaching Java to absolute beginners. The
explanations and images combined make up a great tutorial.', language: 'Java',
owner: 'WEB Technology')

Langopt.create(id: '1', name: "Python")
Langopt.create(id: '2', name: "Java")
Langopt.create(id: '3', name: "Ruby")
Langopt.create(id: '4', name: "C++")

Pythonquiz.create(question: "1) Which of the following function of dictionary gets all the values from the dictionary?",ans1:" getvalues()",ans2:" value()",ans3:" values()",ans4:" None of the above.",correctAns:"3")
Pythonquiz.create(question: "2) Which of the following function convert an integer to a character in python?" ,ans1:" set(x)",ans2:" dict(d)",ans3:" frozenset(s)",ans4:" chr(x)",correctAns:"4")
Pythonquiz.create(question: "3)	What is the output of print list[2:] if list = [ 'abcd', 786 , 2.23, 'john', 70.2 ]?" ,ans1:" ['abcd', 786 , 2.23, 'john', 70.2 ]",ans2:" abcd",ans3:" [786, 2.23]",ans4:" [2.23, 'john', 70.2]",correctAns:"4")
Pythonquiz.create(question: "4)	What is the output of the following?print('{:,}'.format(1112223334))" ,ans1:" 1,112,223,334",ans2:" 111,222,333,4",ans3:" 1112223334",ans4:" error",correctAns:"1")
Pythonquiz.create(question: "5) Which of the following creates a pattern object?" ,ans1:" re.create(str)",ans2:" re.regex(str)",ans3:" re.compiler(str)",ans4:" re.assemble(str)",correctAns:"3")


Javaquiz.create(question: "1) Which of the following is true about String?",ans1:" String is mutable",ans2:" String is immutable",ans3:" String is a data type",ans4:" None of the above.",correctAns:"2")
Javaquiz.create(question: "2) What is the size of long variable?" ,ans1:" 8 bit",ans2:" 16 bit",ans3:" 32 bit",ans4:" 64 bit",correctAns:"4")
Javaquiz.create(question: "3) What are Wrapper classes?" ,ans1:" These are classes that allow primitive types to be accessed as objects",ans2:" These are classes that wraps functionality of an existing class",ans3:" Both of the above",ans4:" None of the above",correctAns:"1")
Javaquiz.create(question: "4) When does finally block get executed?" ,ans1:" Always when try block gets executed, no matter exception occured or not",ans2:" Always when a method gets executed, no matter exception occured or not",ans3:" Always when a try block gets executed, if exception do not occur",ans4:" Only when exception occurs in try block code",correctAns:"1")
Javaquiz.create(question: "5) Which of the following is not a keyword in java?" ,ans1:" static",ans2:" Boolean",ans3:" void",ans4:" private",correctAns:"2")


Rubyquiz.create(question: "1) Which of the expressions listed below will result in \"false\"?", ans1:" nil ? \"true\" : \"false\"", ans2: " 1 ? \"true\" : \"false\"", ans3: " \“\” ? \"true\" : \"false\"", ans4: " [] ? \"true\" : \"false\"", correctAns: "1" )
Rubyquiz.create(question: "2) Which of the following cannot be used to print a statement in Ruby?", ans1:" p", ans2: " puts", ans3: " out", ans4: " print", correctAns: "3" )
Rubyquiz.create(question: "3) Which of the following statements is false?", ans1:" The library functions in Ruby are called gems", ans2: " Every line which is executed in Ruby returns something", ans3: " Ruby has auto-memory management and garbage collections", ans4: " Indentation is required", correctAns: "4" )
Rubyquiz.create(question: "4) Which of the following statements is true?", ans1:" String is immutable but a Symbol is immutable", ans2: " String is mutable but a Symbol is immutable", ans3: " String is immutable but a Symbol is mutable", ans4: " String is mutable but a Symbol is mutable", correctAns: "2" )
Rubyquiz.create(question: "5) In Ruby, instance variable begins with", ans1:" @", ans2: " @@", ans3: " $", ans4: " !", correctAns: "1" )

Cppquiz.create(question: "1) Which of the following type of class allows only one object of it to be created?", ans1:" Virtual class", ans2: " Abstract class", ans3: " Singleton class", ans4: " Friend class", correctAns: "3" )
Cppquiz.create(question: "2) Which of the following statements is correct?", ans1:" Base class pointer cannot point to derived class", ans2: " Derived class pointer cannot point to base class", ans3: " Pointer to derived class cannot be created", ans4: " Pointer to base class cannot be created", correctAns: "2" )
Cppquiz.create(question: "3) Which of the following concepts means determining at runtime what method to invoke?", ans1:" Data hiding", ans2: " Dynamic Typing", ans3: " Dynamic binding", ans4: " Dynamic loading", correctAns: "3" )
Cppquiz.create(question: "4) How does the strings are stored in the memory?", ans1:" Contiguous", ans2: " Non-contiguous", ans3: " Null", ans4: " All of the mentioned", correctAns: "1" )
Cppquiz.create(question: "5) Which of the following concept of oops allows compiler to insert arguments in a function call if it is not specified?", ans1:" Call by value", ans2: " Call by reference", ans3: " Default arguments", ans4: " Call by pointer", correctAns: "3" )

