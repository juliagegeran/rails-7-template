# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  entry_id   :integer
#
class Todo < ApplicationRecord
  belongs_to(:entry)
end
