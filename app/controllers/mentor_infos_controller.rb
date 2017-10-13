class MentorInfosController < ApplicationController
  def new
    @subcategories = Subcategories.all
  end

  def create
  end

end
