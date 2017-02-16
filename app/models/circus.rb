# == Schema Information
#
# Table name: circus
#
#  id         :integer          not null, primary key
#  location   :string
#  starts_on  :date
#  ends_on    :date
#  num_of_tix :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Circus < ApplicationRecord
  has_many :clowns
end
