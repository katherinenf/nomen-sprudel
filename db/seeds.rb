p 'clearing database'
Word.delete_all
WordSet.delete_all

p 'creating sets'
animals_word_set = WordSet.create(name: 'animals')
food_word_set = WordSet.create(name: 'foods')
household_word_set = WordSet.create(name: 'household')

p WordSet.count

p 'filling sets'

# create the words for animal set
Word.create(english: 'dog', german: 'Hund', article: 'der', word_set: animals_word_set)
Word.create(english: 'cat', german: 'Katze', article: 'die', word_set: animals_word_set)
Word.create(english: 'elephant', german: 'Elefant', article: 'der', word_set: animals_word_set)
Word.create(english: 'lion', german: 'Löwe', article: 'der', word_set: animals_word_set)
Word.create(english: 'tiger', german: 'Tiger', article: 'der', word_set: animals_word_set)
Word.create(english: 'zebra', german: 'Zebra', article: 'das', word_set: animals_word_set)
Word.create(english: 'giraffe', german: 'Giraffe', article: 'die', word_set: animals_word_set)
Word.create(english: 'monkey', german: 'Affe', article: 'der', word_set: animals_word_set)
Word.create(english: 'hippopotamus', german: 'Flusspferd', article: 'das', word_set: animals_word_set)
Word.create(english: 'kangaroo', german: 'Känguru', article: 'das', word_set: animals_word_set)
Word.create(english: 'crocodile', german: 'Krokodil', article: 'das', word_set: animals_word_set)
Word.create(english: 'penguin', german: 'Pinguin', article: 'der', word_set: animals_word_set)
Word.create(english: 'polar bear', german: 'Eisbär', article: 'der', word_set: animals_word_set)
Word.create(english: 'koala', german: 'Koala', article: 'der', word_set: animals_word_set)
Word.create(english: 'octopus', german: 'Oktopus', article: 'der', word_set: animals_word_set)
Word.create(english: 'dolphin', german: 'Delfin', article: 'der', word_set: animals_word_set)
Word.create(english: 'whale', german: 'Wal', article: 'der', word_set: animals_word_set)
Word.create(english: 'seal', german: 'Robbe', article: 'die', word_set: animals_word_set)
Word.create(english: 'shark', german: 'Hai', article: 'der', word_set: animals_word_set)
Word.create(english: 'turtle', german: 'Schildkröte', article: 'die', word_set: animals_word_set)
Word.create(english: 'snake', german: 'Schlange', article: 'die', word_set: animals_word_set)
Word.create(english: 'rabbit', german: 'Hase', article: 'der', word_set: animals_word_set)
Word.create(english: 'fox', german: 'Fuchs', article: 'der', word_set: animals_word_set)
Word.create(english: 'wolf', german: 'Wolf', article: 'der', word_set: animals_word_set)
Word.create(english: 'bear', german: 'Bär', article: 'der', word_set: animals_word_set)

# create the words for foods set
Word.create(english: 'apple', german: 'Apfel', article: 'der', word_set: food_word_set)
Word.create(english: 'banana', german: 'Banane', article: 'die', word_set: food_word_set)
Word.create(english: 'orange', german: 'Orange', article: 'die', word_set: food_word_set)
Word.create(english: 'strawberry', german: 'Erdbeere', article: 'die', word_set: food_word_set)
Word.create(english: 'grape', german: 'Traube', article: 'die', word_set: food_word_set)
Word.create(english: 'watermelon', german: 'Wassermelone', article: 'die', word_set: food_word_set)
Word.create(english: 'pineapple', german: 'Ananas', article: 'die', word_set: food_word_set)
Word.create(english: 'kiwi', german: 'Kiwi', article: 'die', word_set: food_word_set)
Word.create(english: 'mango', german: 'Mango', article: 'die', word_set: food_word_set)
Word.create(english: 'pear', german: 'Birne', article: 'die', word_set: food_word_set)
Word.create(english: 'cherry', german: 'Kirsche', article: 'die', word_set: food_word_set)
Word.create(english: 'apricot', german: 'Aprikose', article: 'die', word_set: food_word_set)
Word.create(english: 'peach', german: 'Pfirsich', article: 'der', word_set: food_word_set)
Word.create(english: 'plum', german: 'Pflaume', article: 'die', word_set: food_word_set)
Word.create(english: 'lemon', german: 'Zitrone', article: 'die', word_set: food_word_set)
Word.create(english: 'lime', german: 'Limette', article: 'die', word_set: food_word_set)
Word.create(english: 'grapefruit', german: 'Grapefruit', article: 'die', word_set: food_word_set)
Word.create(english: 'coconut', german: 'Kokosnuss', article: 'die', word_set: food_word_set)
Word.create(english: 'melon', german: 'Melone', article: 'die', word_set: food_word_set)
Word.create(english: 'raspberry', german: 'Himbeere', article: 'die', word_set: food_word_set)
Word.create(english: 'blueberry', german: 'Blaubeere', article: 'die', word_set: food_word_set)
Word.create(english: 'blackberry', german: 'Brombeere', article: 'die', word_set: food_word_set)
Word.create(english: 'fig', german: 'Feige', article: 'die', word_set: food_word_set)
Word.create(english: 'avocado', german: 'Avocado', article: 'die', word_set: food_word_set)
Word.create(english: 'tomato', german: 'Tomate', article: 'die', word_set: food_word_set)
Word.create(english: 'bread', german: 'Brot', article: 'das', word_set: food_word_set)
Word.create(english: 'cheese', german: 'Käse', article: 'der', word_set: food_word_set)
Word.create(english: 'chicken', german: 'Hähnchen', article: 'das', word_set: food_word_set)

#create the words for household
Word.create(english: 'living room', german: 'Wohnzimmer', article: 'das', word_set: household_word_set)
Word.create(english: 'kitchen', german: 'Küche', article: 'die', word_set: household_word_set)
Word.create(english: 'bedroom', german: 'Schlafzimmer', article: 'das', word_set: household_word_set)
Word.create(english: 'bathroom', german: 'Badezimmer', article: 'das', word_set: household_word_set)
Word.create(english: 'dining room', german: 'Esszimmer', article: 'das', word_set: household_word_set)
Word.create(english: 'office', german: 'Büro', article: 'das', word_set: household_word_set)
Word.create(english: 'garage', german: 'Garage', article: 'die', word_set: household_word_set)
Word.create(english: 'attic', german: 'Dachboden', article: 'der', word_set: household_word_set)
Word.create(english: 'basement', german: 'Keller', article: 'der', word_set: household_word_set)
Word.create(english: 'wardrobe', german: 'Kleiderschrank', article: 'der', word_set: household_word_set)
Word.create(english: 'bed', german: 'Bett', article: 'das', word_set: household_word_set)
Word.create(english: 'sofa', german: 'Sofa', article: 'das', word_set: household_word_set)
Word.create(english: 'table', german: 'Tisch', article: 'der', word_set: household_word_set)
Word.create(english: 'chair', german: 'Stuhl', article: 'der', word_set: household_word_set)
Word.create(english: 'desk', german: 'Schreibtisch', article: 'der', word_set: household_word_set)
Word.create(english: 'bookshelf', german: 'Bücherregal', article: 'das', word_set: household_word_set)
Word.create(english: 'cabinet', german: 'Schrank', article: 'der', word_set: household_word_set)
Word.create(english: 'lamp', german: 'Lampe', article: 'die', word_set: household_word_set)
Word.create(english: 'mirror', german: 'Spiegel', article: 'der', word_set: household_word_set)
Word.create(english: 'rug', german: 'Teppich', article: 'der', word_set: household_word_set)
Word.create(english: 'curtain', german: 'Vorhang', article: 'der', word_set: household_word_set)
Word.create(english: 'shelf', german: 'Regal', article: 'das', word_set: household_word_set)
Word.create(english: 'stove', german: 'Herd', article: 'der', word_set: household_word_set)
Word.create(english: 'refrigerator', german: 'Kühlschrank', article: 'der', word_set: household_word_set)
Word.create(english: 'sink', german: 'Spüle', article: 'die', word_set: household_word_set)

p Word.count
