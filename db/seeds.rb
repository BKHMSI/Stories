# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Story.create(title: "Beaches", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach01.jpg")
Message.create(content: "The beach of Ipanema is known for its elegant development and its social life.", story_id: s1.id)
Message.create(content: "The western coastline contains the island's finest beaches.", story_id: s1.id)
Message.create(content: "An elite Message famous for its white sand beaches", story_id: s1.id)

s2 = Story.create(title: "History_id", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/history01.jpg")
Message.create(content: "Machu Picchu was built around 1450, at the height of the Inca Empire.", story_id: s2.id)
Message.create(content: "Dunrobin Castle is a stately home in Sutherland. Its origins lie in the Middle Ages.", story_id: s2.id)
Message.create(content: "The meeting place of the two houses of the Parliament of the United Kingdom", story_id: s2.id)

s3 = Story.create(title: "Skiing", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/skiing01.jpg")
Message.create(content: "It was the site of the first Winter Olympics in 1924", story_id: s3.id)
Message.create(content: "The second largest single mountain ski resort in the United States",story_id: s3.id)

s4 = Story.create(title: "Adventure", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/adventure01.jpg")
Message.create(content: "A surf reef break located in Hawai notorious for huge waves.", story_id: s4.id)
Message.create(content: "A hilly climbing area and national park in Saxony, Germany.", story_id: s4.id)

s5 = Story.create(title: "Family", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/family01.jpg")
Message.create(content: "A museum dedicated to human history and culture, with over 8 million works.", story_id: s5.id)
Message.create(content: "The most visited urban park in the US as well as one of the most filmed locations in the world.",  story_id: s5.id)
Message.create(content: "Once upon a time, there was a boy living alone in a sand castle deep inside the volcano with his cat. :)", story_id: s5.id)
