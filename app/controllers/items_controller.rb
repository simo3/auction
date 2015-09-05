class ItemsController < ApplicationController
def index
  @items = Item.all
end

def show
  @item = Item.find(params[:id])
end

def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)
  @item.save
  redirect_to "/items/#{@item.id}"
end

def edit
  @item = Item.find(params[:id])
end

def update
  @item = Item.find(params[:id])
  @item.update_attributes(item_params)
  @item.save
  redirect_to item_url(@item)
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
  @item.save
  redirect_to items_url(@item)
end

private
def item_params
  params.require(:item).permit(
    :item_name,
    :item_info,
    :price,
    :seller_id,
    :email,
    :img_url
  )
end

end
