# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create([
    {name: 'Jo', postcode: 'E1 2BS'},
    {name: 'Ali', postcode: 'W3 6BF'},
    {name: 'Kay', postcode: 'SE15 5EX'}
])

Pet.create([
    {name: 'Sheldon', years: 6, months: 6, species: 'Cat', breed: 'Crossbreed', temperament: 'Grumpy', description: 'Sheldon likes routine. Can you give Sheldon a forever home?', reserved: false, adopted: false, img_url: 'https://media.giphy.com/media/9SJbvkR3RNBP77cIpQ/giphy.gif', user_id: 1},
    {name: 'Pigwig', years: 0, months: 5, species: 'Rabbit', breed: 'Crossbreed', temperament: 'Friendly', description: 'Can you give Pigwig a forever home?', reserved: false, adopted: false, img_url: 'https://scontent-lhr3-1.cdninstagram.com/vp/23eadb28aa69a1c41ab3d622f533c5a8/5C855134/t51.2885-15/e35/43985372_248076875875197_6804029944333798446_n.jpg', user_id: 2},
    {name: 'Rooby', years: 5, months: 6, species: 'Rabbit', breed: 'Cinnamon', temperament: 'Cuddly', description: 'Can you give Rooby a forever home?', reserved: false, adopted: false, img_url: 'https://scontent-lhr3-1.cdninstagram.com/vp/23eadb28aa69a1c41ab3d622f533c5a8/5C855134/t51.2885-15/e35/43985372_248076875875197_6804029944333798446_n.jpg', user_id: 3}
])