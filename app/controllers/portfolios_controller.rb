class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :vue], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:_json].each do |value|
      Portfolio.find(value[:id]).update(position: value[:pos])
    end

    render nothing: true
  end

  def vue
    @vue_items = Portfolio.vue
  end

  # The new method refers to creating a new portfolio
  def new
    @portfolio_item = Portfolio.new
  end

  def show
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        # Per routes, if we don't want to send the user to the newly created portfolio item,we can send them back to the archive page.
        format.html { redirect_to portfolios_path, notice: 'New Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # The edit method simply provides the app with the parameter that determines WHICH item will be updated. The actual updating is done by the update method.
  def edit
    3.times { @portfolio_item.technologies.build }
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        # Redirection is not a variable, but a specific string in the router (so don't add an @ in the beginning)
        format.html { redirect_to portfolios_path, notice: 'Portfolio successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # There is a reason for destory vs delete. The destroy method calls callbacks. It is more specific and thorough
  # Does not require its own view template
  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private
    def portfolio_params
      return params.require(:portfolio).permit(:title,
                                               :subtitle,
                                               :body,
                                               :thumbnail_image,
                                               :main_image,
                                               :second_image,
                                               :third_image,
                                               technologies_attributes: [:id, :name, :_destroy]
                                              )
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
