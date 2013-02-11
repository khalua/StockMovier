class StockController < ApplicationController
  def search
  end

  def query
    @ticker = params[:ticker]
      begin
        @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker]
      rescue
        puts "Oh oh. Yahoo is out to lunch"
      end
    @price = @quote.lastTrade
    @name = @quote.name

    render 'results'
  end

  def results
  end
end