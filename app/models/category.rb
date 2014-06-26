class Category < ActiveRecord::Base
  has_and_belongs_to_many :restaurants

  def category_name
    "#{name}"
  end
end
