class CategoriesController < ApplicationController

  def create
    @category = Category.create(category_params)
    if !@category.save
      flash[:error] = "Invalid"
    end
    redirect_to :root
  end

  private

  def category_params
    params[:category].permit(:name)
  end
end
