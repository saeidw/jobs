class AddAppriopriateColumnsToJobs < ActiveRecord::Migration
  def self.up
    add_column :jobs, :location, :string
    add_column :jobs, :description, :text
  end

  def self.down
    remove_column :jobs, :location
    remove_column :jobs, :description
  end
end
