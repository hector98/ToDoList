class Category < ApplicationRecord
  enum color: {
    red: 0,
    blue: 1,
    green: 4
  }

  has_many :task
end
