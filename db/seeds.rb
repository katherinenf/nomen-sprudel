require "open-uri"

# Seed file to populate word sets with sample data

p 'clearing database'
Mastery.delete_all
Word.delete_all
WordSet.delete_all
User.delete_all

p 'creating words'
# Seed file to populate word sets with sample data

# Create Le Wagon word set
le_wagon_words = [
  { english: "rake", german: "Rechen", article: "der" },
  { english: "party", german: "Party", article: "die" },
  { english: "beer", german: "Bier", article: "das" },
  { english: "flashcard", german: "Karteikarte", article: "die" },
  { english: "banana", german: "Banane", article: "die" }
]

# Create animal words
animal_words = [
  { english: "dog", german: "Hund", article: "der" },
  { english: "cat", german: "Katze", article: "die" },
  { english: "bird", german: "Vogel", article: "der" },
  { english: "rabbit", german: "Kaninchen", article: "das" },
  { english: "horse", german: "Pferd", article: "das" },
  { english: "fish", german: "Fisch", article: "der" },
  { english: "turtle", german: "Schildkröte", article: "die" },
  { english: "lion", german: "Löwe", article: "der" },
  { english: "elephant", german: "Elefant", article: "der" },
  { english: "monkey", german: "Affe", article: "der" }
]

# Create household object words
household_object_words = [
  { english: "chair", german: "Stuhl", article: "der" },
  { english: "table", german: "Tisch", article: "der" },
  { english: "bed", german: "Bett", article: "das" },
  { english: "lamp", german: "Lampe", article: "die" },
  { english: "bookshelf", german: "Bücherregal", article: "das" },
  { english: "television", german: "Fernseher", article: "der" },
  { english: "clock", german: "Uhr", article: "die" },
  { english: "microwave", german: "Mikrowelle", article: "die" },
  { english: "refrigerator", german: "Kühlschrank", article: "der" },
  { english: "vacuum cleaner", german: "Staubsauger", article: "der" }
]

# Create common food words
food_words = [
  { english: "apple", german: "Apfel", article: "der" },
  { english: "banana", german: "Banane", article: "die" },
  { english: "bread", german: "Brot", article: "das" },
  { english: "cheese", german: "Käse", article: "der" },
  { english: "rice", german: "Reis", article: "der" },
  { english: "chicken", german: "Hähnchen", article: "das" },
  { english: "potato", german: "Kartoffel", article: "die" },
  { english: "tomato", german: "Tomate", article: "die" },
  { english: "milk", german: "Milch", article: "die" },
  { english: "coffee", german: "Kaffee", article: "der" }
]

# Create transport words
transport_words = [
  { english: "car", german: "Auto", article: "das" },
  { english: "bicycle", german: "Fahrrad", article: "das" },
  { english: "bus", german: "Bus", article: "der" },
  { english: "train", german: "Zug", article: "der" },
  { english: "plane", german: "Flugzeug", article: "das" },
  { english: "ship", german: "Schiff", article: "das" },
  { english: "motorcycle", german: "Motorrad", article: "das" },
  { english: "subway", german: "U-Bahn", article: "die" }
]

# Create weather words
weather_words = [
  { english: "sun", german: "Sonne", article: "die" },
  { english: "rain", german: "Regen", article: "der" },
  { english: "cloud", german: "Wolke", article: "die" },
  { english: "snow", german: "Schnee", article: "der" },
  { english: "wind", german: "Wind", article: "der" },
  { english: "storm", german: "Sturm", article: "der" },
  { english: "fog", german: "Nebel", article: "der" },
  { english: "lightning", german: "Blitz", article: "der" }
]

# Create shopping words
shopping_words = [
  { english: "store", german: "Geschäft", article: "das" },
  { english: "supermarket", german: "Supermarkt", article: "der" },
  { english: "mall", german: "Einkaufszentrum", article: "das" },
  { english: "cashier", german: "Kassierer", article: "der" },
  { english: "cart", german: "Einkaufswagen", article: "der" },
  { english: "sale", german: "Verkauf", article: "der" },
  { english: "discount", german: "Rabatt", article: "der" },
  { english: "receipt", german: "Quittung", article: "die" }
]

# Create restaurant words
restaurant_words = [
  { english: "restaurant", german: "Restaurant", article: "das" },
  { english: "menu", german: "Speisekarte", article: "die" },
  { english: "waiter", german: "Kellner", article: "der" },
  { english: "chef", german: "Koch", article: "der" },
  { english: "table", german: "Tisch", article: "der" },
  { english: "reservation", german: "Reservierung", article: "die" },
  { english: "tip", german: "Trinkgeld", article: "das" },
  { english: "dish", german: "Gericht", article: "das" }
]

# Create building words
building_words = [
  { english: "house", german: "Haus", article: "das" },
  { english: "apartment", german: "Wohnung", article: "die" },
  { english: "office", german: "Büro", article: "das" },
  { english: "hospital", german: "Krankenhaus", article: "das" },
  { english: "school", german: "Schule", article: "die" },
  { english: "library", german: "Bibliothek", article: "die" },
  { english: "bank", german: "Bank", article: "die" },
  { english: "hotel", german: "Hotel", article: "das" }
]

# Create appliance words
appliance_words = [
  { english: "washing machine", german: "Waschmaschine", article: "die" },
  { english: "oven", german: "Ofen", article: "der" },
  { english: "dishwasher", german: "Geschirrspüler", article: "der" },
  { english: "fridge", german: "Kühlschrank", article: "der" },
  { english: "microwave", german: "Mikrowelle", article: "die" },
  { english: "toaster", german: "Toaster", article: "der" },
  { english: "blender", german: "Mixer", article: "der" },
  { english: "coffee machine", german: "Kaffeemaschine", article: "die" }
]

# Create cooking words
cooking_words = [
  { english: "knife", german: "Messer", article: "das" },
  { english: "pan", german: "Pfanne", article: "die" },
  { english: "pot", german: "Topf", article: "der" },
  { english: "spoon", german: "Löffel", article: "der" },
  { english: "fork", german: "Gabel", article: "die" },
  { english: "plate", german: "Teller", article: "der" },
  { english: "bowl", german: "Schüssel", article: "die" },
  { english: "cutting board", german: "Schneidebrett", article: "das" }
]

# Create clothing words
clothing_words = [
  { english: "shirt", german: "Hemd", article: "das" },
  { english: "pants", german: "Hose", article: "die" },
  { english: "dress", german: "Kleid", article: "das" },
  { english: "shoes", german: "Schuhe", article: "die" },
  { english: "hat", german: "Hut", article: "der" },
  { english: "socks", german: "Socken", article: "die" },
  { english: "jacket", german: "Jacke", article: "die" },
  { english: "scarf", german: "Schal", article: "der" }
]


# Create word sets
le_wagon_set = WordSet.create(name: "Le Wagon")
animal_set = WordSet.create(name: "Animals")
household_object_set = WordSet.create(name: "Household Objects")
food_set = WordSet.create(name: "Food")
transport_set = WordSet.create(name: "Transport")
weather_set = WordSet.create(name: "Weather")
shopping_set = WordSet.create(name: "Shopping")
restaurant_set = WordSet.create(name: "Restaurants")
building_set = WordSet.create(name: "Buildings")
appliance_set = WordSet.create(name: "Appliances")
cooking_set = WordSet.create(name: "Cooking")
clothing_set = WordSet.create(name: "Clothing")

p WordSet.count

p 'adding words to sets'
# Add words to word sets
# Add words to Le Wagon word set
le_wagon_words.each do |word|
  le_wagon_set.words.create(word)
end

animal_words.each do |word|
  animal_set.words.create(word)
end

household_object_words.each do |word|
  household_object_set.words.create(word)
end

food_words.each do |word|
  food_set.words.create(word)
end
transport_words.each do |word|
  transport_set.words.create(word)
end

weather_words.each do |word|
  weather_set.words.create(word)
end

shopping_words.each do |word|
  shopping_set.words.create(word)
end

restaurant_words.each do |word|
  restaurant_set.words.create(word)
end

building_words.each do |word|
  building_set.words.create(word)
end

appliance_words.each do |word|
  appliance_set.words.create(word)
end

cooking_words.each do |word|
  cooking_set.words.create(word)
end

clothing_words.each do |word|
  clothing_set.words.create(word)
end
p Word.count

p "adding users"
# seed users
user1 = User.create!({ email: 'oliver@practice.com', username: 'Oliver Giggles', password: 'sprudel' })
file1 = URI.open("https://i.pinimg.com/736x/b8/2c/33/b82c336a7a0c2d08f10fb9f198383ebf.jpg")
user1.photo.attach(io: file1, filename: "photo.jpg", content_type: "image/jpg")
user1.save

user2 = User.create!({ email: 'ava@practice.com', username: 'Ava Jokester', password: 'sprudel' })
file2 = URI.open("https://i.pinimg.com/736x/f2/82/cc/f282cc2e9214fca44329c59aea11bca3.jpg")
user2.photo.attach(io: file2, filename: "photo.jpg", content_type: "image/jpg")
user2.save

user3 = User.create!({ email: 'joyful@practice.com', username: 'Joyful Jester', password: 'sprudel' })
file3 = URI.open("https://www.imagediamond.com/blog/wp-content/uploads/2020/06/cartoon-boy-images-17.jpg")
user3.photo.attach(io: file3, filename: "photo.jpg", content_type: "image/jpg")
user3.save

user4 = User.create!({ email: 'ethan@practice.com', username: 'Ethan WhoopeeWarrior', password: 'sprudel'})
file4 = URI.open("https://png.pngtree.com/png-clipart/20210314/original/pngtree-funny-cartoon-boy-png-image_6092956.jpg")
user4.photo.attach(io: file4, filename: "photo.jpg", content_type: "image/jpg")
user4.save

user5 = User.create!({ email: 'sophie@practice.com', username: 'Sophie Chuckles', password: 'sprudel' })
file5 = URI.open("https://cdn3.vectorstock.com/i/1000x1000/56/12/funny-young-woman-cartoon-character-vector-41805612.jpg")
user5.photo.attach(io: file5, filename: "photo.jpg", content_type: "image/jpg")
user5.save
p User.count

p "seeding masteries"
User.all.each do |user|
  words = Word.all.shuffle
  high_score = 0
  rand(33..60).times do
    successes = rand(1..3)
    Mastery.create(word: words.pop, user: user, successes: successes)
    high_score += successes
  end
  user.update(high_score: high_score)
end
p Mastery.count

p "all done!"
