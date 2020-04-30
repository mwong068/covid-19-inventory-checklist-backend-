# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dude = HelpfulUser.create(name: "Nice Guy", username: "niceguy4", password_digest: "helpfulguy", email: "trying_to_be_helpful@gmail.com", location: "San Francisco", phone_number: "14155708692", family_size: 4, has_children: true, can_deliver: true)
stuff = Category.create(name: "Toiletries", description: "Any items that are necessary for self care")
HelpfulItem.create(name: "Toothbrush", quantity: 2, description: "Two children's toothbrushes", availability: "Can send ASAP", helpful_user_id: dude.id, category_id: stuff.id)

person = InNeedUser.create(name: "Another Nice Guy", username: "needsomehelp12", password_digest: "canyouhelpme", email: "friendlydude21@gmail.com", location: "San Jose", family_size: 4, has_children: true, can_pickup: true)
NeededItem.create(name: "Toothbrush", quantity: 2, description: "Need two toothbrushes for my two children", urgency: "Whenever available, no rush", in_need_user_id: person.id, category_id: stuff.id)

Message.create(message_text: "Hey, I saw that you are in need of two children's toothbrushes. I have two I can give you, would you like me to drop them off to you? Let me know when you have a chance, thanks.", helpful_user_id: dude.id, in_need_user_id: person.id)