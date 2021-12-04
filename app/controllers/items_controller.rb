class ItemsController < ApplicationController

  before_action :move_log_in, only: [:new]

  def index
  end

  def new
  end

  private

  def move_log_in
    unless user_signed_in?
      render("devise/sessions/new")
    end
  end

end
