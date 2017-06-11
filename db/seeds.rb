# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rake db drop
# rake db create
# rake db migrate
# rake db test prepare
# rake db seed


# add in database stuff here!
question_one = Question.create(title: "Is Ruby difficult to learn?", description: "I hear Ruby is a simple language to learn but I am intimidated to start.  Any advice?  Does anyone know of any good online bootcamps that teach Ruby?")
question_two = Question.create(title: "Is Javascript difficult to learn?", description: "Learning Javascript has been the most challenging language for me.  I can't seem to wrap my head around functions and all of their syntax.  Between ES5 and ES6, its tough to keep track of it all.")
question_three = Question.create(title: "Is Front End or Back End development better?", description: "I'm trying to decide between studying Front End or Back End development.  I'm leaning towards front end because I enjoy the design aspects.  Any suggestions would be helpful!")

answer_one = Answer.create(description: "Ruby is pretty simple to learn at first.  The syntax is similar to English.  As you get deeper into the rabbit hole though, it gets a bit more complex.  Just like this rails challenge.", question_id: 1)
answer_two = Answer.create(description: "Javascript is definitely a challenge.  It will take you sometime to work through the syntax and overall concepts.  But like most languages, practice makes perfect!", question_id: 2)
answer_three = Answer.create(description: "Personally I would recommend studying both and aiming to be a Full Stack Developer.  It will make you more marketable and eventually down the road you can specialize a bit more.", question_id: 3)
