Error: unexpected ',' in "dir.create(testdir2),"
> dir.create(testdir2)
Error in dir.create(testdir2) : object 'testdir2' not found
> dir.create("testdir2")

| Not quite right, but keep trying. Or, type info() for more options.

| dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE) will do the trick. If you forgot the recursive
| argument, the command may have appeared to work, but it didn't create the nested directory.

> ir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
Error in ir.create(file.path("testdir2", "testdir3"), recursive = TRUE) : 
  could not find function "ir.create"
> info()

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)

| That's the answer I was looking for.

|==================================================================================================           |  89%
| Go back to your original working directory using setwd(). (Recall that we created the variable old.dir with the full
                                                             | path for the orginal working directory at the start of these questions.)

> setwd()
Error in setwd() : argument "dir" is missing, with no default
> setwd(old.dir)

| All that hard work is paying off!
  
  |====================================================================================================         |  92%
| It is often helpful to save the settings that you had before you began an analysis and then go back to them at the
| end. This trick is often used within functions; you save, say, the par() settings that you started with, mess around
| a bunch, and then set them back to the original values at the end. This isn't the same as what we have done here,
| but it seems similar enough to mention.

...

  |=======================================================================================================      |  95%
| Take nothing but results. Leave nothing but assumptions. That sounds like 'Take nothing but pictures. Leave nothing
| but footprints.' But it makes no sense! Surely our readers can come up with a better motto . . .

...

  |==========================================================================================================   |  97%
| In this lesson, you learned how to examine your R workspace and work with the file system of your machine from
| within R. Thanks for playing!

...

  |=============================================================================================================| 100%
| Would you like to inform someone about your successful completion of this lesson via email?

1: No
2: Yes

Selection: 1

| Keep up the great work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: R Programming E
3: Take me to the swirl course repository!
  
  Selection: 2

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
4: Vectors                    5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 3

|                                                                                                             |   0%

| In this lesson, you'll learn how to create sequences of numbers in R.

...

  |=====                                                                                                        |   4%
| The simplest way to create a sequence of numbers in R is by using the `:` operator. Type 1:20 to see how it works.

> 
> 
> 
> 1:20
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| That's a job well done!
  
  |=========                                                                                                    |   9%
| That gave us every integer between (and including) 1 and 20. We could also use it to create a sequence of real
| numbers. For example, try pi:10.

> pi:10
[1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

| You are amazing!
  
  |==============                                                                                               |  13%
| The result is a vector of real numbers starting with pi (3.142...) and increasing in increments of 1. The upper
| limit of 10 is never reached, since the next number in our sequence would be greater than 10.

...

|===================                                                                                          |  17%
| What happens if we do 15:1? Give it a try to find out.

> 15:1
[1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

| Keep up the great work!
  
  |========================                                                                                     |  22%
| It counted backwards in increments of 1! It's unlikely we'd want this behavior, but nonetheless it's good to know
| how it could happen.

...

  |============================                                                                                 |  26%
| Remember that if you have questions about a particular R function, you can access its documentation with a question
| mark followed by the function name: ?function_name_here. However, in the case of an operator like the colon used
| above, you must enclose the symbol in backticks like this: ?`:`. (NOTE: The backtick (`) key is generally located in
| the top left corner of a keyboard, above the Tab key. If you don't have a backtick key, you can use regular quotes.)

...?`:`

|=================================                                                                            |  30%
| Pull up the documentation for `:` now.

> `:`
.Primitive(":")

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| In order to view the documentation for a symbol like the colon operator, you have to use backticks (or quotes). This
| is so R knows you are not attempting to use the symbol in the command. Here's what it looks like: ?`:`. Don't forget
| the question mark out front.

> ?`:`

| Great job!

  |======================================                                                                       |  35%
| Often, we'll desire more control over a sequence we're creating than what the `:` operator gives us. The seq()
| function serves this purpose.

...

  |===========================================                                                                  |  39%
| The most basic use of seq() does exactly the same thing as the `:` operator. Try seq(1, 20) to see this.

> seq(1, 20)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You are quite good my friend!

  |===============================================                                                              |  43%
| This gives us the same output as 1:20. However, let's say that instead we want a vector of numbers ranging from 0 to
| 10, incremented by 0.5. seq(0, 10, by=0.5) does just that. Try it out.

> seq(0, 10, by=0.5)
[1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5 10.0

| You got it right!
  
  |====================================================                                                         |  48%
| Or maybe we don't care what the increment is and we just want a sequence of 30 numbers between 5 and 10. seq(5, 10,
| length=30) does the trick. Give it a shot now and store the result in a new variable called my_seq.

> seq(5, 10,length=30)
 [1]  5.000000  5.172414  5.344828  5.517241  5.689655  5.862069  6.034483  6.206897  6.379310  6.551724  6.724138
[12]  6.896552  7.068966  7.241379  7.413793  7.586207  7.758621  7.931034  8.103448  8.275862  8.448276  8.620690
[23]  8.793103  8.965517  9.137931  9.310345  9.482759  9.655172  9.827586 10.000000

| You're close...I can feel it! Try it again. Or, type info() for more options.

| You're using the same function here, but changing its arguments for different results. Be sure to store the result
| in a new variable called my_seq, like this: my_seq <- seq(5, 10, length=30).

> seq(5,10, length=30)
 [1]  5.000000  5.172414  5.344828  5.517241  5.689655  5.862069  6.034483  6.206897  6.379310  6.551724  6.724138
[12]  6.896552  7.068966  7.241379  7.413793  7.586207  7.758621  7.931034  8.103448  8.275862  8.448276  8.620690
[23]  8.793103  8.965517  9.137931  9.310345  9.482759  9.655172  9.827586 10.000000

| Not exactly. Give it another go. Or, type info() for more options.

| You're using the same function here, but changing its arguments for different results. Be sure to store the result
| in a new variable called my_seq, like this: my_seq <- seq(5, 10, length=30).

> my_seq <- seq(5, 10, length=30)

| That's correct!

  |=========================================================                                                    |  52%
| To confirm that my_seq has length 30, we can use the length() function. Try it now.

> length(my_seq)
[1] 30

| You nailed it! Good job!

  |==============================================================                                               |  57%
| Let's pretend we don't know the length of my_seq, but we want to generate a sequence of integers from 1 to N, where
| N represents the length of the my_seq vector. In other words, we want a new vector (1, 2, 3, ...) that is the same
| length as my_seq.

...vector(1,N)

  |==================================================================                                           |  61%
| There are several ways we could do this. One possibility is to combine the `:` operator and the length() function
| like this: 1:length(my_seq). Give that a try.

> 1:length(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| That's correct!
  
  |=======================================================================                                      |  65%
| Another option is to use seq(along.with = my_seq). Give that a try.

> seq(along.with = my_seq)
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| You are amazing!
  
  |============================================================================                                 |  70%
| However, as is the case with many common tasks, R has a separate built-in function for this purpose called
| seq_along(). Type seq_along(my_seq) to see it in action.

> seq_along()
Error in seq_along() : 0 arguments passed to 'seq_along' which requires 1
> seq_along(my_seq)
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| That's a job well done!

  |=================================================================================                            |  74%
| There are often several approaches to solving the same problem, particularly in R. Simple approaches that involve
| less typing are generally best. It's also important for your code to be readable, so that you and others can figure
| out what's going on without too much hassle.

...

  |=====================================================================================                        |  78%
| If R has a built-in function for a particular task, it's likely that function is highly optimized for that purpose
| and is your best option. As you become a more advanced R programmer, you'll design your own functions to perform
| tasks when there are no better options. We'll explore writing your own functions in future lessons.

...

|==========================================================================================                   |  83%
| One more function related to creating sequences of numbers is rep(), which stands for 'replicate'. Let's look at a
| few uses.

...

  |===============================================================================================              |  87%
| If we're interested in creating a vector that contains 40 zeros, we can use rep(0, times = 40). Try it out.

> rep(0, times = 40)
[1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

| Keep working like that and you'll get there!

  |====================================================================================================         |  91%
| If instead we want our vector to contain 10 repetitions of the vector (0, 1, 2), we can do rep(c(0, 1, 2), times =
| 10). Go ahead.

> rep(c(0, 1, 2)
+ 
+ rep(c(0, 1, 2)
Error: unexpected symbol in:
"
rep"
> rep(c(0, 1, 2)
+ 
+ 
+ rep(10(0, 1, 2)
Error: unexpected symbol in:
"
rep"
> rep10(0, 1, 2)
Error in rep10(0, 1, 2) : could not find function "rep10"
> rep(10(0, 1, 2))
Error: attempt to apply non-function
> rep(c(0, 1, 2), times=10)
 [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

| Excellent job!

  |========================================================================================================     |  96%
| Finally, let's say that rather than repeating the vector (0, 1, 2) over and over again, we want our vector to
| contain 10 zeros, then 10 ones, then 10 twos. We can do this with the `each` argument. Try rep(c(0, 1, 2), each =
                                                                                                   | 10).

> rep(c(0, 1, 2), each=10)
[1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2

| You are amazing!
  
  |=============================================================================================================| 100%
| Would you like to inform someone about your successful completion of this lesson via email?
  
  1: Yes
2: No

Selection: 2

| That's correct!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: R Programming E
3: Take me to the swirl course repository!
  
  Selection: 2

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
4: Vectors                    5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 4

|                                                                                                             |   0%

| The simplest and most common data structure in R is the vector.

...

|===                                                                                                          |   3%
| Vectors come in two different flavors: atomic vectors and lists. An atomic vector contains exactly one data type,
| whereas a list may contain multiple data types. We'll explore atomic vectors further before we get to lists.

...

  |======                                                                                                       |   5%
| In previous lessons, we dealt entirely with numeric vectors, which are one type of atomic vector. Other types of
| atomic vectors include logical, character, integer, and complex. In this lesson, we'll take a closer look at logical
| and character vectors.

...

|=========                                                                                                    |   8%
| Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available'). These values are generated as the
| result of logical 'conditions'. Let's experiment with some simple conditions.

...

  |===========                                                                                                  |  11%
| First, create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6.

> 
> seq(0.5, 55, -10, 6)
Error in seq.default(0.5, 55, -10, 6) : too many arguments
> list(0.5, 55, -10, 6)
[[1]]
[1] 0.5

[[2]]
[1] 55

[[3]]
[1] -10

[[4]]
[1] 6


| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Recall that the c() function is used for creating a vector. If you forget how to use it, use ?c to access the help
| file. Don't forget to assign the result to a new variable called num_vect.

> c(0.5, 55, -10, 6)
[1]   0.5  55.0 -10.0   6.0

| You almost had it, but not quite. Try again. Or, type info() for more options.

| Recall that the c() function is used for creating a vector. If you forget how to use it, use ?c to access the help
| file. Don't forget to assign the result to a new variable called num_vect.

> num_vect <- c(0.5, 55, -10, 6)

| You're the best!

  |==============                                                                                               |  13%
| Now, create a variable called tf that gets the result of num_vect < 1, which is read as 'num_vect is less than 1'.

> tf <- num_vect < 1

| That's the answer I was looking for.

|=================                                                                                            |  16%
| What do you think tf will look like?
  
  1: a single logical value
2: a vector of 4 logical values

Selection: 2

| Keep working like that and you'll get there!

  |====================                                                                                         |  18%
| Print the contents of tf now.

> tf
[1]  TRUE FALSE  TRUE FALSE

| All that hard work is paying off!

  |=======================                                                                                      |  21%
| The statement num_vect < 1 is a condition and tf tells us whether each corresponding element of our numeric vector
| num_vect satisfies this condition.

...

  |==========================                                                                                   |  24%
| The first element of num_vect is 0.5, which is less than 1 and therefore the statement 0.5 < 1 is TRUE. The second
| element of num_vect is 55, which is greater than 1, so the statement 55 < 1 is FALSE. The same logic applies for the
| third and fourth elements.

...

  |=============================                                                                                |  26%
| Let's try another. Type num_vect >= 6 without assigning the result to a new variable.

> num_vect >= 6
[1] FALSE  TRUE FALSE  TRUE

| You got it!
  
  |================================                                                                             |  29%
| This time, we are asking whether each individual element of num_vect is greater than OR equal to 6. Since only 55
| and 6 are greater than or equal to 6, the second and fourth elements of the result are TRUE and the first and third
| elements are FALSE.

...

|==================================                                                                           |  32%
| The `<` and `>=` symbols in these examples are called 'logical operators'. Other logical operators include `>`,
| `<=`, `==` for exact equality, and `!=` for inequality.

...

|=====================================                                                                        |  34%
| If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B (logical 'or' a.k.a.
                                                                                                   | 'union') or whether they are both TRUE with A & B (logical 'and' a.k.a. 'intersection'). Lastly, !A is the negation
| of A and is TRUE when A is FALSE and vice versa.

...

|========================================                                                                     |  37%
| It's a good idea to spend some time playing around with various combinations of these logical operators until you
| get comfortable with their use. We'll do a few examples here to get you started.

...

|===========================================                                                                  |  39%
| Try your best to predict the result of each of the following statements. You can use pencil and paper to work them
| out if it's helpful. If you get stuck, just guess and you've got a 50% chance of getting the right answer!
  
  ...

|==============================================                                                               |  42%
| (3 > 5) & (4 == 4)

1: TRUE
2: FALSE

Selection: 2

| Keep working like that and you'll get there!

  |=================================================                                                            |  45%
| (TRUE == TRUE) | (TRUE == FALSE)

1: TRUE
2: FALSE

Selection: 1

| Keep up the great work!

  |====================================================                                                         |  47%
| ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

1: TRUE
2: FALSE

Selection: 2

| You almost had it, but not quite. Try again.

| This is a tricky one. Remember that the `!` symbol negates whatever comes after it. There's also an 'order of
| operations' going on here. Conditions that are enclosed within parentheses should be evaluated first. Then, work
| your way outwards.

1: FALSE
2: TRUE

Selection: 1

| You're close...I can feel it! Try it again.

| This is a tricky one. Remember that the `!` symbol negates whatever comes after it. There's also an 'order of
| operations' going on here. Conditions that are enclosed within parentheses should be evaluated first. Then, work
| your way outwards.

1: FALSE
2: TRUE

Selection: 1

| Keep trying!
  
  | This is a tricky one. Remember that the `!` symbol negates whatever comes after it. There's also an 'order of
| operations' going on here. Conditions that are enclosed within parentheses should be evaluated first. Then, work
| your way outwards.

1: FALSE
2: TRUE

Selection: 2

| Keep working like that and you'll get there!
  
  |======================================================                                                       |  50%
| Don't worry if you found these to be tricky. They're supposed to be. Working with logical statements in R takes
| practice, but your efforts will be rewarded in future lessons (e.g. subsetting and control structures).

...

|=========================================================                                                    |  53%
| Character vectors are also very common in R. Double quotes are used to distinguish character objects, as in the
| following example.

...

|============================================================                                                 |  55%
| Create a character vector that contains the following words: "My", "name", "is". Remember to enclose each word in
| its own set of double quotes, so that R knows they are character strings. Store the vector in a variable called
| my_char.

> 
  > my_char <- vector(""My"", ""name"", ""is"")
Error: unexpected symbol in "my_char <- vector(""My"
> my_char <- c(""My"", ""name"", ""is"")
Error: unexpected symbol in "my_char <- c(""My"
> my_char <- c("My", "name", "is")

| You are quite good my friend!
  
  |===============================================================                                              |  58%
| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| Perseverance, that's the answer.

  |==================================================================                                           |  61%
| Right now, my_char is a character vector of length 3. Let's say we want to join the elements of my_char together
| into one continuous character string (i.e. a character vector of length 1). We can do this using the paste()
| function.

...

|=====================================================================                                        |  63%
| Type paste(my_char, collapse = " ") now. Make sure there's a space between the double quotes in the `collapse`
| argument. You'll see why in a second.

> paste(my_char, collapse = " ")
[1] "My name is"

| That's a job well done!

  |========================================================================                                     |  66%
| The `collapse` argument to the paste() function tells R that when we join together the elements of the my_char
| character vector, we'd like to separate them with single spaces.

...

|===========================================================================                                  |  68%
| It seems that we're missing something.... Ah, yes! Your name!

...

  |=============================================================================                                |  71%
| To add (or 'concatenate') your name to the end of my_char, use the c() function like this: c(my_char,
| "your_name_here"). Place your name in double quotes where I've put "your_name_here". Try it now, storing the result
| in a new variable called my_name.

> my_name <- c(my_char,"WZJ")

| You are amazing!
  
  |================================================================================                             |  74%
| Take a look at the contents of my_name.

> my_name
[1] "My"   "name" "is"   "WZJ" 

| That's a job well done!

  |===================================================================================                          |  76%
| Now, use the paste() function once more to join the words in my_name together into a single character string. Don't
| forget to say collapse = " "!
  
  > paste("my_name")
[1] "my_name"

| Not exactly. Give it another go. Or, type info() for more options.

| Use paste(my_name, collapse = " ") to join all four words together, separated by single spaces.

> Use paste(my_name, collapse = " ")
Error: unexpected symbol in "Use paste"
> Use paste(my_name, collapse = ""My"   "name" "is"   "WZJ" ")
Error: unexpected symbol in "Use paste"
> paste(my_name, collapse = ""My"   "name" "is"   "WZJ" ")
Error: unexpected symbol in "paste(my_name, collapse = ""My"
> paste(my_name, collapse = "My"   "name" "is"   "WZJ")
Error: unexpected string constant in "paste(my_name, collapse = "My"   "name""
> paste(my_name, collapse =""! "My"   "name" "is"   "WZJ")
Error: unexpected '!' in "paste(my_name, collapse =""!"
> paste(my_name, collapse = " " My name is WZJ)
Error: unexpected symbol in "paste(my_name, collapse = " " My"
> ?collapse
> collapse(ny_name, sep = "", My = , last = "")
Error in collapse(ny_name, sep = "", My = , last = "") : 
  could not find function "collapse"
> paste(my_name, collapse = " ")
[1] "My name is WZJ"

| Nice work!
  
  |======================================================================================                       |  79%
| In this example, we used the paste() function to collapse the elements of a single character vector. paste() can
| also be used to join the elements of multiple character vectors.

...

|=========================================================================================                    |  82%
| In the simplest case, we can join two character vectors that are each of length 1 (i.e. join two words). Try
| paste("Hello", "world!", sep = " "), where the `sep` argument tells R that we want to separate the joined elements
| with a single space.

> paste("Hello", "world!", sep = " ")
[1] "Hello world!"

| All that hard work is paying off!
  
  |============================================================================================                 |  84%
| For a slightly more complicated example, we can join two vectors, each of length 3. Use paste() to join the integer
| vector 1:3 with the character vector c("X", "Y", "Z"). This time, use sep = "" to leave no space between the joined
| elements.

> c("x","y", "v")
[1] "x" "y" "v"

| That's not the answer I was looking for, but try again. Or, type info() for more options.

| Use paste(1:3, c("X", "Y", "Z"), sep = "") to see what happens when we join two vectors of equal length using
| paste().

> paste(1:3, c("X", "Y", "Z"), sep = "")
[1] "1X" "2Y" "3Z"

| All that practice is paying off!

  |===============================================================================================              |  87%
| What do you think will happen if our vectors are of different length? (Hint: we talked about this in a previous
| lesson.)

...

  |==================================================================================================           |  89%
| Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a predefined variable in R containing a
| character vector of all 26 letters in the English alphabet.

> paste(LETTERS, 1:4, sep = "-")
 [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1" "N-2" "O-3" "P-4" "Q-1" "R-2" "S-3"
[20] "T-4" "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"

| Great job!

  |====================================================================================================         |  92%
| Since the character vector LETTERS is longer than the numeric vector 1:4, R simply recycles, or repeats, 1:4 until
| it matches the length of LETTERS.

...

  |=======================================================================================================      |  95%
| Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character vector by the paste() function.

...

  |==========================================================================================================   |  97%
| We'll discuss coercion in another lesson, but all it really means is that the numbers 1, 2, 3, and 4 in the output
| above are no longer numbers to R, but rather characters "1", "2", "3", and "4".

...

|=============================================================================================================| 100%
| Would you like to inform someone about your successful completion of this lesson via email?
  
  1: Yes
2: No

Selection: 2

| Keep up the great work!
  
  | You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: R Programming E
3: Take me to the swirl course repository!

Selection: 2

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
 4: Vectors                    5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 5

  |                                                                                                             |   0%

| Missing values play an important role in statistics and data analysis. Often, missing values must not be ignored,
| but rather they should be carefully studied to see if there's an underlying pattern or cause for their missingness.

...

|=====                                                                                                        |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing' (in the statistical sense). In this
| lesson, we'll explore missing values further.

...

  |===========                                                                                                  |  10%
| Any operation involving NA generally yields NA as the result. To illustrate, let's create a vector c(44, NA, 5, NA)
| and assign it to a variable x.

> x <- c(44, NA, 5, NA)

| You are quite good my friend!
  
  |================                                                                                             |  15%
| Now, let's multiply x by 3.

> x*3
[1] 132  NA  15  NA

| Excellent work!

  |======================                                                                                       |  20%
| Notice that the elements of the resulting vector that correspond with the NA values in x are also NA.

...

  |===========================                                                                                  |  25%
| To make things a little more interesting, lets create a vector containing 1000 draws from a standard normal
| distribution with y <- rnorm(1000).

> y <- rnorm(1000)

| All that hard work is paying off!

  |=================================                                                                            |  30%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z <- rep(NA, 1000)

| You nailed it! Good job!
  
  |======================================                                                                       |  35%
| Finally, let's select 100 elements at random from these 2000 values (combining y and z) such that we don't know how
| many NAs we'll wind up with or what positions they'll occupy in our final vector -- my_data <- sample(c(y, z), 100).

> my_data <- sample(c(y, z), 100)

| Perseverance, that's the answer.

  |============================================                                                                 |  40%
| Let's first ask the question of where our NAs are located in our data. The is.na() function tells us whether each
| element of a vector is NA. Call is.na() on my_data and assign the result to my_na.

> is.na(my_data)
[1] FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[20]  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE
[39]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[58] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE
[77] FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[96]  TRUE FALSE FALSE  TRUE  TRUE

| Not quite right, but keep trying. Or, type info() for more options.

| Assign the result of is.na(my_data) to the variable my_na.

> my_na <- is.na(my_data)

| All that hard work is paying off!
  
  |=================================================                                                            |  45%
| Now, print my_na to see what you came up with.

> my_na
[1] FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[20]  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE
[39]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[58] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE
[77] FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[96]  TRUE FALSE FALSE  TRUE  TRUE

| All that practice is paying off!
  
  |======================================================                                                       |  50%
| Everywhere you see a TRUE, you know the corresponding element of my_data is NA. Likewise, everywhere you see a
| FALSE, you know the corresponding element of my_data is one of our random draws from the standard normal
| distribution.

...

|============================================================                                                 |  55%
| In our previous discussion of logical operators, we introduced the `==` operator as a method of testing for equality
| between two objects. So, you might think the expression my_data == NA yields the same results as is.na(). Give it a
| try.

> my_data == NA yields
Error: unexpected symbol in "my_data == NA yields"
> my_data == NA yields == is.na(my_data)
Error: unexpected symbol in "my_data == NA yields"
> my_data == NA yields = is.na(my_data)
Error: unexpected symbol in "my_data == NA yields"
> (my_data == NA yields) = is.na(my_data)
Error: unexpected symbol in "(my_data == NA yields"
> (my_data == NA yields) == is.na(my_data)
Error: unexpected symbol in "(my_data == NA yields"
> (my_data == NA yields)
Error: unexpected symbol in "(my_data == NA yields"
> my_data `==` NA yields
Error: unexpected symbol in "my_data `==`"
> (my_data == NA yields) `==` is.na(my_data)
Error: unexpected symbol in "(my_data == NA yields"
> is.na(my_data)
[1] FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[20]  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE
[39]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[58] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE
[77] FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE
[96]  TRUE FALSE FALSE  TRUE  TRUE

| Not quite! Try again. Or, type info() for more options.

| Try my_data == NA to see what happens.

> my_data == NA
[1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
[39] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
[77] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| That's a job well done!

  |=================================================================                                            |  60%
| The reason you got a vector of all NAs is that NA is not really a value, but just a placeholder for a quantity that
| is not available. Therefore the logical expression is incomplete and R has no choice but to return a vector of the
| same length as my_data that contains all NAs.

...

  |=======================================================================                                      |  65%
| Don't worry if that's a little confusing. The key takeaway is to be cautious when using logical expressions anytime
| NAs might creep in, since a single NA value can derail the entire thing.

...

  |============================================================================                                 |  70%
| So, back to the task at hand. Now that we have a vector, my_na, that has a TRUE for every NA and FALSE for every
| numeric value, we can compute the total number of NAs in our data.

...

  |==================================================================================                           |  75%
| The trick is to recognize that underneath the surface, R represents TRUE as the number 1 and FALSE as the number 0.
| Therefore, if we take the sum of a bunch of TRUEs and FALSEs, we get the total number of TRUEs.

...

  |=======================================================================================                      |  80%
| Let's give that a try here. Call the sum() function on my_na to count the total number of TRUEs in my_na, and thus
| the total number of NAs in my_data. Don't assign the result to a new variable.

> sum(my_na) 
[1] 47

| You are quite good my friend!

  |=============================================================================================                |  85%
| Pretty cool, huh? Finally, let's take a look at the data to convince ourselves that everything 'adds up'. Print
| my_data to the console.

> my_data
[1] -1.102496109 -0.618440258           NA  0.716179125  0.625902401           NA           NA -0.492568686
[9] -1.424234060 -0.217734481           NA           NA           NA           NA -0.160788831           NA
[17]  0.225247583           NA           NA           NA           NA  0.678988973           NA -0.114941035
[25]  0.725488516           NA  0.378705284           NA           NA -3.206925582           NA -1.956790241
[33]           NA  0.979826836  0.218772186           NA           NA -1.218586668           NA           NA
[41]  1.306903153 -1.273946802  0.210160649 -0.527960247 -1.905586902  0.014322234  1.053162992  0.090874264
[49] -3.020836100 -0.580584513           NA           NA           NA  0.484392542           NA           NA
[57]           NA -1.537378649           NA -0.214830964           NA           NA -0.511990115           NA
[65] -0.740707189  1.737762528  2.087333969           NA           NA  1.319852618  0.748968379 -0.221682137
[73]           NA  0.958086303           NA -0.568148438  1.179232064           NA -0.816068114  0.577825651
[81]  0.229654839  0.696556129           NA           NA -0.293787644  0.109886385 -1.303956301           NA
[89]           NA -0.868004113  0.514766799  0.246075022           NA           NA           NA           NA
[97] -0.321668689  0.008106917           NA           NA

| You got it right!
  
  |==================================================================================================           |  90%
| Now that we've got NAs down pat, let's look at a second type of missing value -- NaN, which stands for 'not a
| number'. To generate NaN, try dividing (using a forward slash) 0 by 0 now.

> 0/0
[1] NaN

| All that practice is paying off!
  
  |========================================================================================================     |  95%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens if you subtract Inf from Inf?

> inf-inf
Error: object 'inf' not found
> Inf - Inf
[1] NaN

| Nice work!

  |=============================================================================================================| 100%
| Would you like to inform someone about your successful completion of this lesson via email?

1: Yes
2: No

Selection: 2

| You are quite good my friend!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: R Programming E
3: Take me to the swirl course repository!
  
  Selection: 2

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
4: Vectors                    5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: save.image("~/FY2/FY2 Academic Block/JH R Programming Course/JH R Programming Course SWIRL Module/JH R Programming Course SWIRL Module 2-4.R.RData")
Enter an item from the menu, or 0 to exit
Selection: 