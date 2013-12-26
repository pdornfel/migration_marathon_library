require 'csv'

data = Rails.root + 'db/Booksforseeding.csv'

CSV.foreach(data, headers: true) do |row|
  Book.find_or_create_by(title: row['title'], author: row['author']) do |book|
    book.title = row['title']
    book.author = row['author']
    book.rating = row['rating']
    puts "#{book.title} was inserted into the database"
  end
end



