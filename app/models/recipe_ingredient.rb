# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :integer
#  quantity_id   :integer
#  recipe_id     :integer
#  unit_id       :integer
#
class RecipeIngredient < ApplicationRecord
  has_many(:ingredients, class_name: "Ingredient", foreign_key: "ingredient_id")
  has_many(:units, class_name:"Unit", foreign_key: "unit_id")
  has_many(:quantities, class_name: "Quantity", foreign_key: "quantity_id")
end
