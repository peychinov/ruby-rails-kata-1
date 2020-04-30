require 'csv'

class Author < ApplicationRecord
  has_and_belongs_to_many :publications

  def self.import(file)
    CSV.foreach(file.path, headers: true, col_sep: ";") do |row|
      data = row.to_hash

      Author.create email: data['email'],
                    first_name: data['firstname'],
                    last_name: data['lastname']
    end
  end
end
