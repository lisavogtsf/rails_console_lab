## Console Lab, Answers by Lisa Vogt

For this lab, we'd like you to strengthen your Rails console skills. This lab is going to be very familiar to the SQL lab, where we'll ask you to create a model and then write out the console commands you would use to execute these queries

### To Start

1. Create a model called Student, that has a first_name, last_name and age
2. Don't forget to run your migrations

### Tasks to create

1. Using the new/save syntax, create a student, first and last name and an age     

		 kid = Student.new
 		 kid.first_name = "Denis"
 		 kid.last_name = "TheMenace"
 		 kid.age = 12
 		
2. Save the student to the database.  
		`kid.save`

3. Using the find/set/save syntax update the student's first name to taco  
		`badkid = Student.find_by_first_name("Denis")`
		`badkid.first_name = "Taco"`
4. Delete the student (where first_name is taco)  
		`badkid.destroy`
5. Validate that every Student's last name is unique  
 
		in student.rb: validates_uniqueness_of :last_name
		test in console: newbie.save
		   (0.2ms)  BEGIN
		   Student Exists (2.8ms)  SELECT  1 AS one FROM "students"   		   WHERE "students"."last_name" = 'Smith' LIMIT 1
		   (0.3ms)  ROLLBACK
6. Validate that every Student has a first and last name that is longer than 4 characters
        `validates_length_of :first_name, :minimum => 4, :message => "first_name must be more than 4 characters"`
      ` validates_length_of :last_name, :minimum => 4, :message => "last_name must be more than 4 characters"`

7. Validate that every first and last name cannot be empty
`	validates_presence_of :first_name, :message => "first_name cannot be left blank"`
	`validates_presence_of :last_name, :message => "last_name cannot be left blank"`

7
. Combine all of these individual validations into one validation (using validate and a hash) 
8. Using the create syntax create a student named John Doe who is 33 years old
9. Show if this new student entry is valid
10. Show the number of errors for this student instance
11. In one command, Change John Doe's name to Jonathan Doesmith 
12. Clear the errors array
13. Save Jonathan Doesmith
15. Find all of the Students
16. Find the student with an ID of 128 and if it does not exist, make sure it returns nil and not an error
17. Find the first student in the table
18. Find the last student in the table
19. Find the student with the last name of Doesmith
21. Find all of the students and limit the search to 5 students, starting with the 2nd student and finally, order the students in alphabetical order
20. Delete Jonathan Doesmith

### Bonus
1. Use the validates_format_of and regex to only validate names that consist of letters (no numbers or symbols) and start with a capital letter
2. Write a custom validation to ensure that no one named Delmer Reed, Tim Licata, Anil Bridgpal or Elie Schoppik is included in the students table


