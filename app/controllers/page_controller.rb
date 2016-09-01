class PageController < ApplicationController
  def top_nav
    @cates = Category.snowboard_categories
    render formats: :json
  end

  def filter_form
    unless params[:type].present? && category = Category.find_by_ident_name(params[:type])
      render status: 404, inline: '404'
    else
      ret = {}
      ret[:name] = category.name

      category
      ret[:rates] = []
      category.rates.each do |rate|
        ret[:rates] << {
            :name => rate.name,
            :max_num => rate.max_num,
            :ident_name => rate.ident_name
        }
      end
      render json: ret
    end
  end
end