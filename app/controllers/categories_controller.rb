class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  def nav_bar_index
    category = Category.find(1)

    ret = {}
    ret[:name] = category.name

    category
    ret[:rates] = []
    category.rates.each do |rate|
      ret[:rates] << rate.name
    end
    render json: ret
  end

# GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

# GET /categories/1
  def show
    render json: @category
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end
end
