class ProvidersController < ApplicationController
  before_action :authenticate_user!
  around_action :catch_not_found
  
  def index
    category_query = params[:category]
    location = params[:location]
    unless params[:category].blank?
      @providers = Provider.all.order('id DESC')
    else
      @providers = Provider.all.order('id DESC')
    end

    @provider_count = @providers.count
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    @provider.user_id = current_user.id
    @provider.subscription_id = 1
    @provider.provider_type_id = 1

    if @provider.save
      flash[:notice] = 'Provider was created successfully'
      session[:provider] = @provider.id
      redirect_to new_provider_working_hours_path @provider
    else
      flash[:alert] = 'Something went wrong, please check again and retry'
      render :new
    end
  end

  def media
    @gallery = Gallery.new
  end

  def media_store
    
  end

  def show
    @provider = Provider.friendly.find(params[:id])
    @categories = Category.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def choose
  end

  def calendar
  end

  def complete
  end

  def confirmation
  end

  private
  def provider_params
    params.require(:provider).permit(:provider_type_id, :subscription_id, :name, :website, 
                                      :address, :country, :state, :city, :description)
  end

  def catch_not_found
    yield
    rescue ActiveRecord::RecordNotFound
      redirect_to root_url, :flash => { :alert => "Sorry, that provider doesnt exist." }
  end
end
