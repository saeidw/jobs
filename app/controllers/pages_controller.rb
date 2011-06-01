class PagesController < ApplicationController
  
  def index
    @jobs = Job.all
  end
  
end
