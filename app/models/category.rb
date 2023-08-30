class Category < ApplicationRecord

  def to_css_color
    case color
    when 'red'
      'red-500'
    when 'blue'
      'blue-500'
    else
      'green-500'
    end
  end

  enum color: {
    red: 0,
    blue: 1,
    green: 4
  }

  has_many :task
end
