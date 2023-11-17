# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  body       :string
#  image      :string
#  mood       :string
#  weather    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Entry < ApplicationRecord
  validates(body, presence: true)
  has_many  :todos
end
