class ToppagesController < ApplicationController
  def index
    if logged_in?
      @post = current_user.microposts.build
      @posts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
end
