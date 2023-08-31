class Category < ApplicationRecord
  enum color: {
    blue: 0,
    green: 1,
    red: 2,
    orange: 3,
    ambar: 4,
    yellow: 5
  }

  has_many :tasks
end
