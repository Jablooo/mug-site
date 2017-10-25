# homepage controller for root route
class HomeController < ActionController::Base
  def index
    @item = Item.all
    @item = if params[:search]
              Item.search(params[:search]).order("created_at DESC")
            else
              Item.all.order("created_at DESC")
            end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(
      :name,
      :image,
      :description,
      :style,
      :price,
      :user_id
    )
  end
end
