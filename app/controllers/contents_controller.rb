class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.all.order("created_at DESC")
  end

  def new
    @content = Content.new
  end
  
  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if  @content.update(content_params)
      redirect_to content_path(@content.id)
    else
      render :edit
    end
  end

  def destroy
    if @content.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def content_params
    params.require(:content).permit(:image, :name, :title, :text, :date, :money, :category_id).merge(user_id: current_user.id)
  end
  
  def set_item
    @content = Content.find(params[:id])
  end

end
