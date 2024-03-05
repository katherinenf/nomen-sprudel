# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Word.new(english: 'apple', german: 'Apfel', article: 'der')
Word.new(english: 'house', german: 'Haus', article: 'das')
Word.new(english: 'cat', german: 'Katze', article: 'die')
Word.new(english: 'dog', german: 'Hund', article: 'der')
Word.new(english: 'table', german: 'Tisch', article: 'der')
Word.new(english: 'chair', german: 'Stuhl', article: 'der')
Word.new(english: 'book', german: 'Buch', article: 'das')
Word.new(english: 'window', german: 'Fenster', article: 'das')
Word.new(english: 'door', german: 'Tür', article: 'die')
Word.new(english: 'car', german: 'Auto', article: 'das')
Word.new(english: 'coffee', german: 'Kaffee', article: 'der')
Word.new(english: 'tea', german: 'Tee', article: 'der')
Word.new(english: 'water', german: 'Wasser', article: 'das')
Word.new(english: 'brother', german: 'Bruder', article: 'der')
Word.new(english: 'sister', german: 'Schwester', article: 'die')
Word.new(english: 'flower', german: 'Blume', article: 'die')
Word.new(english: 'tree', german: 'Baum', article: 'der')
Word.new(english: 'sun', german: 'Sonne', article: 'die')
Word.new(english: 'moon', german: 'Mond', article: 'der')
Word.new(english: 'sky', german: 'Himmel', article: 'der')
Word.new(english: 'ball', german: 'Ball', article: 'der')
Word.new(english: 'pharmacy', german: 'Apotheke', article: 'die')
Word.new(english: 'doctor', german: 'Arzt', article: 'der')
Word.new(english: 'school', german: 'Schule', article: 'die')
Word.new(english: 'friend', german: 'Freund', article: 'der')

