# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  ingredient_id :integer
#
class Recipe < ApplicationRecord
  validates(name, presence:true)
  has_many(:ingredients, class_name:"Ingredient", foreign_key:"recipe_id")
end
