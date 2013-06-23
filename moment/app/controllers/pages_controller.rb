class PagesController < ApplicationController
  def index
    @uploads = Upload.recent
  end
end