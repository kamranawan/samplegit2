class PurchasingsController < ApplicationController
	before_action :set_purchasing , only: [:show , :edit]
	def index
		@purchasings = Purchasing.all		
	end
	
	def show
	end
	
	def new
		@purchasing = Purchasing.new
	end

 def	create
		@purchasing = Purchasing.new(purchasing_params)
    @purchasing.save
		redirect_to purchasings_path
 end

 def edit
 end

 def update
 end

end

	private
 	def purchasing_params 
      params.require(:purchasing).permit(
      :supplier_id , :total_bill,  purchase_items_attributes: [:id, :purchasing_id , :name , :code, :unit_price , :image   , :_destroy])
   end

	 def set_purchasing
	 	@purchasing = Purchasing.find(params[:id])
	 end
