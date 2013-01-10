class OrdersController < ApplicationController
	before_filter :signed_in_user

	def create
		provider = Provider.find(load_provider)
		@order = provider.orders.build(params[:order])
		if @order.save
		 	flash[:success] = "Pedido ingresado"
		 	redirect_to provider_path(session[:provider_id])
		 end
	end

	def destroy
		@order = Order.find(params[:id])
		if @order.destroy
			flash[:success] = "Se ha eliminado el pedido"
			redirect_to provider_path(session[:provider_id])
		end

	end

	def index
		@orders = Order.paginate(page: params[:page], order: "received_at DESC", per_page: 10 )
	end

	private

	def load_provider
		@provider = Provider.find(session[:provider_id])
	end
end