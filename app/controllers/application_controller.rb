class ApplicationController < ActionController::Base
    before_action :set_query
    def set_query
        @q = Management.ransack(params[:q])
    end
end
