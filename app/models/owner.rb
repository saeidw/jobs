class Owner < ActiveRecord::Base
  has_many :jobs, :dependent => :destroy
end

# == Schema Information
#
# Table name: owners
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

