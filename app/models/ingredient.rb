# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer
#
class Ingredient < ApplicationRecord
  validates(name, presence: true)
  has_many(:recipes, class_name:"Recipe", foreign_id:"ingredient_id")
end
