class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def filter_with_params ar_relation, *params_names
    params_names.each do |name|
      ar_relation.where(name => params[name]) if params[name].present?
    end
    ar_relation
  end
end
