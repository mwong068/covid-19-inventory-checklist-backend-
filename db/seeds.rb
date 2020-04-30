# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

helping_person = HelpfulUser.create(name: "Helpful Person", username: "tryingtohelp", password_digest: "helpfulperson", email: "trying_to_be_helpful@gmail.com", location: "San Francisco", phone_number: "14155708692", family_size: 4, image_url: "https://images.unsplash.com/photo-1524383902853-96c857a3c78d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", has_children: true, can_deliver: true)
toiletries = Category.create(name: "Toiletries", description: "Any items that are necessary for self care")
HelpfulItem.create(name: "Toothbrush", quantity: 2, description: "Two children's toothbrushes", availability: "Can send ASAP", helpful_user_id: helping_person.id, category_id: toiletries.id)

# This information was for future development of the application in which in need users could message helpful users
# in_need_person = InNeedUser.create(name: "In Need Person", username: "needsomehelp12", password_digest: "canyouhelpme", email: "friendlyperson21@gmail.com", location: "San Jose", family_size: 4, has_children: true, can_pickup: true)
# NeededItem.create(name: "Toothbrush", quantity: 2, description: "Need two toothbrushes for my two children", urgency: "Whenever available, no rush", in_need_user_id: in_need_person.id, category_id: toiletries.id)

# Message.create(message_text: "Hey, I saw that you are in need of two children's toothbrushes. I have two I can give you, would you like me to drop them off to you? Let me know when you have a chance, thanks.", helpful_user_id: dude.id, in_need_user_id: person.id)