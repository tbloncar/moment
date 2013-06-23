class UploadsController < ApplicationController
  def index

  end

  def show
    @upload = Upload.find_by_id(params[:upload_id])
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)
    @upload.user_id = current_user.id

    if @upload.save
      @upload.create_tags
      flash[:success] = "Upload successful!"
      redirect_to upload_url(current_user.url_path, @upload.id)
    else
      render 'new'
    end
  end

  private
    def upload_params
      params.require(:upload).permit(:image, :description)
    end
end