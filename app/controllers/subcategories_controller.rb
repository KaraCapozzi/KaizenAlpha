class SubcategoriesController < ApplicationController

def show
@subcategory = Subcategory.find(params[:id])
end



def index
@subcategories = Subcategory.all
end

def destroy
end

def update
end















end
