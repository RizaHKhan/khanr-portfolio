class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
  end

  # The new method refers to creating a new portfolio
  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        # Per routes, if we don't want to send the user to the newly created portfolio item,we can send them back to the archive page.
        format.html { redirect_to @portfolios_path, notice: 'New Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

end
