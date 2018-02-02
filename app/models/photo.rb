# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string
#  filename   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
  has_many :comments, as: :commentable
end
