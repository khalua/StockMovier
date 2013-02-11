class MovieController < ApplicationController
  def search
  end

  def query
    @search = params[:search].gsub(" ","+").gsub("'","")
    @a = HTTParty.get("http://www.omdbapi.com/?t=#{@search}")
    @b = JSON(@a)
    @title = @b["Title"]
    @year = @b["Year"].to_i
    @rated = @b["Rated"]
    @director = @b["Director"]
    @plot = @b["Plot"].gsub("'","")
    @poster = @b["Poster"]

    render 'results'
  end

  def results
  end


end