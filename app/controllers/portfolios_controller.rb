class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update]
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: "your portfolios item is now live." }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Your portfolio is updated" }
      else
        format.html { render :edit }

      end
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
