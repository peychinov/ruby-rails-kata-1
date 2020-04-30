require 'csv'

class Publication < ApplicationRecord
  has_and_belongs_to_many :authors

  def self.import(file)
    CSV.foreach(file.path, headers: true, col_sep: ";") do |row|
      book_data = row.to_hash
      Publication.create title: book_data['title'],
                         isbn: book_data['isbn'],
                         authors: Author.where(email: book_data['authors']),
                         description: book_data['description'],
                         published_at: book_data['publishedAt']
    end
  end
end
