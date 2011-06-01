class Job < ActiveRecord::Base
  belongs_to :owner
end

# == Schema Information
#
# Table name: jobs
#
#  id          :integer         not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  location    :string(255)
#  description :text
#  owner_id    :integer
#

