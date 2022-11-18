class ApplicationController < ActionController::Base
    include SessionsHelper
		before_action :set_search
		def set_search
			@q = Restaurant.ransack(params[:q])
		end
end
