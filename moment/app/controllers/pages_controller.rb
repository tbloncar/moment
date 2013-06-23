class PagesController < ApplicationController
  def index
    @uploads = Upload.all
  end
end