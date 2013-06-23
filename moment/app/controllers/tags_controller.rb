class TagsController < ApplicationController
  def show
    @tag = Tag.find_by_name(params[:name])
  end
end