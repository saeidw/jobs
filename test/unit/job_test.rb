require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

