class MentorInfosController < ApplicationController

  def show

  end

  def new
    @mentor_info = MentorInfo.new
    @categories = Category.all
    @subcategories = Subcategory.all
  end

  def create
    user = current_user
    # user.create_mentor_info(summary: params[:mentor_info][:summary], location: params[:mentor_info][:location])
    subcat_add = Subcategory.where(id: params[:subcategories].keys)
    subcat_add.each do |subcat|
      user.subcategories << subcat
    end
    redirect_to user
  end

end
