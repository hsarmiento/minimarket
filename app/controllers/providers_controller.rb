class ProvidersController < ApplicationController
	before_filter :signed_in_user

	def index	
		@providers = Provider.paginate(page: params[:page], order: "name ASC", per_page: 5 )
		# respond_to do |format|
  #     		format.html # index.html.erb
  #     	end
	end

	def new
		
	end

	def create
		@provider = Provider.new(params[:provider])
		if @provider.save
			flash[:success] = "Proveedor guardado"
			redirect_to provider_path(@provider)
		else

		end
	end

	def show
		@provider = Provider.find(params[:id])
		session[:provider_id] = params[:id]
		@orders = @provider.orders.paginate(page: params[:page], order: "received_at DESC", per_page: 3)
		
	end

	def destroy
		@provider = Provider.find(params[:id])
		if @provider.destroy
			flash[:success] = "Se ha eliminado el proveedor"
			redirect_to providers_url			
		else
			flash[:error] = "Ha ocurrido un error al eliminar el proveedor"
		end
	end

	def edit
		@provider = Provider.find(params[:id])
	end

end