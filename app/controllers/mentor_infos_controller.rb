class MentorInfosController < ApplicationController
  def index
    @mentor_infos = MentorInfo.all
  end

  def show
   @mentor_info
  end

  def new
    @mentor_info = MentorInfo.new
  end

  def create

  end

end
