miles = User.create(first_name: 'Miles', last_name: 'Davis', email:'feelingit@gmail.com')
wayne = User.create(first_name: 'Wayne', last_name: 'Shorter', email:'truepets@gmail.com')
tony = User.create(first_name: 'Tony', last_name: 'Williams')

babies = Project.create(name: 'Babies', description: "Lots of weird funk and trash cans and coca-cola cause why not?")
silent = Project.create(name: 'Silent', description: "Somebody turn this thing on")

Collaboration.create(user: miles, project: babies)
Collaboration.create(user: wayne, project: babies)
Collaboration.create(user: tony, project: silent)
Collaboration.create(user: miles, project: silent)

Task.create(name: 'print flyers', user: miles, project: babies)
Task.create(name: 'acquire swag', project: babies)
