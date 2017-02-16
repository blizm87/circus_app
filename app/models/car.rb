# == Schema Information
#
# Table name: cars
#
#  id         :integer          not null, primary key
#  make       :string
#  model      :string
#  color      :string
#  year       :string
#  capacity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Car < ApplicationRecord
  has_many :clowns

  validates(:make, :model, {presence: true})

  def vroom
    jalopy? ? "putter" : "vroom vroom"
  end

  def jalopy?
    year.to_i < Time.now.year - 8
  end

end
