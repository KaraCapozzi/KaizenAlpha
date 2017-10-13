class MentorInfosController < ApplicationController
  def index
    @mentor_infos = MentorInfo.all
  end

  def show
   @mentor_info
  end

  def new
    @mentor_info = MentorInfo.new
    @categories = Category.all
    @subcategories = Subcategory.all
  end

  def create
    user = current_user
    if mentor_info = nil
      user.create_mentor_info(summary: params[:mentor_info][:summary], location: params[:mentor_info][:location])
    else
      mento_info can edit their profile
    end
    subcat_add = Subcategory.where(id: params[:subcategories].keys)
    subcat_add.each do |subcat|
      user.subcategories << subcat
    end
    redirect_to user
  end

end
