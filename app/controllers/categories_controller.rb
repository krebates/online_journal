class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @categories = Category.find(:all)
  end

  def create
    @category = Category.new(category_params)
      if @category.save
        redirect_to categories_path
    else
      render :new
    end
  end

  # def update
  #   category = current_account.category.find(params[:id])
  #   category.update_attributes!(catergory_params)
  #   redirect_to category
  # end

  def destroy
    @category = Category.find_by_id(params[:id])
      if @category.destroy
        redirect_to entries_path
      end
  end

  def show
    @category = Category.find(params[:id])
  end

private

  def category_params
    params.require(:category).permit(:name)
  end

end


