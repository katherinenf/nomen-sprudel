p 'clearing database'
Mastery.delete_all
Word.delete_all
WordSet.delete_all

# Seed file to populate word sets with sample data

p 'creating words'
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

# Create word sets
animal_set = WordSet.create(name: "Animals")
household_object_set = WordSet.create(name: "Household Objects")
food_set = WordSet.create(name: "Food")

p Word.count
p WordSet.count

p 'adding words to sets'
# Add words to word sets
animal_words.each do |word|
  animal_set.words.create(word)
end

household_object_words.each do |word|
  household_object_set.words.create(word)
end

food_words.each do |word|
  food_set.words.create(word)
end

p animal_set.words.count
p household_object_set.words.count
p food_set.words.count
