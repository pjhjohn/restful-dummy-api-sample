class DummyController < ApplicationController
  before_filter :set_item, only: [:r, :u, :d]
  def c
    begin
      @item = Datum.new
      update(@item)
      render :json => {:success => True}
    rescue
      render :json => {:success => False}
    end
  end
  
  def all
    render :json => Datum.all
  end

  # Corresponds to Api.Content
  def r
    render :json => @item
  end

  # Corresponds to SuccessResponse
  def u
    begin
      update(@item)
      render :json => {:success => True}
    rescue
      render :json => {:success => False}
    end
  end

  # Corresponds to SuccessResponse
  def d
    begin
      @item.destroy
      render :json => {:success => True}
    rescue
      render :json => {:success => False}
    end
  end
  
  private
    def set_item
      @item = Datum.find_by_id(params[:id])
    end
    def update(item)
      item.name = params[:name]
      item.image_url = params[:image_url]
      item.save
    end
end
