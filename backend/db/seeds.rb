# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Jive.destroy_all
User.destroy_all
Like.destroy_all

puts "Creating Users..."
lindsay_lohan = User.create(username: "Lindsay Lohan", password: "enter")
tina_fey = User.create(username: "Tina Fey", password: "enter")
baby_spice = User.create(username: "Emma Bunton", password: "enter")
ginger_spice = User.create(username: "Geri Halliwell", password: "enter")
scary_spice = User.create(username: "Melanie Brown", password: "enter")
sporty_spice = User.create(username: "Melanie Chisholm", password: "enter")
posh_spice = User.create(username: "Victoria Addams", password: "enter")

puts "Creating Jives..."
7.times do
    name = "sup"
    post_type = "greeting"
    post = "this will be a sample post"
    pics = "https://media.wired.com/photos/5954a1b05578bd7594c46869/master/w_2560%2Cc_limit/reddit-alien-red-st.jpg"
    url =  "https://media.wired.com/photos/5954a1b05578bd7594c46869/master/w_2560%2Cc_limit/reddit-alien-red-st.jpg"
    user_id = User.ids.sample

    Jive.create(name: name, post_type: post_type, post: post, pics: pics, url: url, user_id: user_id)
end

puts "Creating Likes..."
7.times do
    like_count = rand(10..100)
    dislike_count = rand(10..100)
    user_id = User.ids.sample
    jive_id = Jive.ids.sample

    Like.create(likes: like_count, dislikes: dislike_count, user_id: user_id, jive_id: jive_id)
end 

puts "Seeding done!"