json.extract! book, :id, :title, :author, :price, :publisheddate, :created_at, :updated_at
json.url book_url(book, format: :json)
