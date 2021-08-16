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

pics_array = [
    "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/73/10/c0.jpg", 
    "https://media.bizj.us/view/img/12025273/gettyimages-584791924*1600xx5571-3140-0-85.jpg",
    "https://www.minneapolis.org/imager/s3_amazonaws_com/meet-minneapolis/craft/cms/MM-homepage-hero_fcdeae811706337f6a402f2a1c04142a.jpg", 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb_9fiSwApHZyPPInk40iMiCgQoGs88ZFYBQ&usqp=CAU",  
    "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
    "https://rccl-h.assetsadobe.com/is/image/content/dam/royal/content/destinations/hawaii/amazing-hawaii-beach-with-green-mountains.jpg?$750x667$", 
    "https://images-na.ssl-images-amazon.com/images/I/61VmYAGCGFL._AC_SX522_.jpg"
]

$i = 0
while $i < 6  do
    name = "sup"
    post_type = "greeting"
    post = "this will be a sample post"
    pics = pics_array[$i]
    url =  "your website link here"
    user_id = User.ids.sample

    Jive.create(name: name, post_type: post_type, post: post, pics: pics, url: url, user_id: user_id)
    $i +=1
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