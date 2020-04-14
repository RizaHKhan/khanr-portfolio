class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
  end

  # The new method refers to creating a new portfolio
  def new
    @portfolio_item = Portfolio.new
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

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
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        # Redirection is not a variable, but a specific string in the router (so don't add an @ in the beginning)
        format.html { redirect_to portfolios_path, notice: 'Portfolio successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end
