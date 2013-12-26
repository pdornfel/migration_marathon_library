require 'csv'

data1 = Rails.root + 'db/Booksforseeding.csv'

CSV.foreach(data1, headers: true) do |row|
  Book.find_or_create_by(title: row['title'], author: row['author']) do |book|
    book.title = row['title']
    book.author = row['author']
    book.rating = row['rating']
    puts "#{book.title} was inserted into the database"
  end
end

data2 = Rails.root + 'db/book_categories.csv'

CSV.foreach(data2, headers: true) do |row|
  Category.find_or_create_by(name: row['name']) do |category|
    category.name = row['name']
    puts "#{category.name} was just added to the categories table"
  end
end




