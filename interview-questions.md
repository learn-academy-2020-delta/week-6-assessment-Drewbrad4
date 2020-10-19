# ASSESSMENT 6: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: The foreign key would be named animal_id and it would be a part of the Sightings model because it links the data in the sighting to a specific animal. 

  Researched answer: The foreign key must always reference to a primary key somewhere. Multiple foreign keys can reference the same primary key. 



2. Which RESTful routes must always be passed params? Why?

  Your answer: show, edit, update, and destroy will always require params because they point to specific data being called by an id. 

  Researched answer: Didn't find anything else worth noting. 



3. Name three rails generator commands. What is created by each?

  Your answer: $ rails generate model ModelName column:datatype. This creates a model (or table) to be filled with data. $ rails generate controller controllername. This generates a controller. $ rails generate resource ModelName, this creates both a model and controller.

  Researched answer: generate controller generates a directory in the views folder, a helper file, and an scss stylesheet. The generate resource command works similiarly and also generates a migration file and a coffee file.  



4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

method="GET"    /users    users#index    This will show all the users.        

method="GET"    /users/1    users#show    This will show a specific user with an id of 1.

method="GET"    /users/new    users#new    This will show a page to create a new user. 

method="GET"    /users/edit/1    users#edit    This will show a page to edit a specific user with an id of 1.

method="POST"   /users/    users#create    This will create a new user.       

method="PUT"    /users/1    users#update    This will update a specific user with an id of 1.      

method="DELETE" /users/1    users#destroy    This will delete a specific user with an id of 1.           



5. As a developer, you want to make an application that will help you manage your to do list. For the MVP, you want to create just the user's view. Create 10 user stories that will help you get your application started. 

  1. As a user I can give my to do list a name.
  2. As a user I can add a task to my to do list.
  3. As a user I can add a description to my task.
  4. As a user I can mark a task as complete.
  5. As a user I can see my completed tasks.
  6. As a user I can unmark a task as complete.
  7. As a user I can edit the to do list name.
  8. As a user I can edit the task name and description.
  9. As a user I can move a task up or down on the to do list, rearranging the order.
  10. As a user I can mark a task as in progress. 