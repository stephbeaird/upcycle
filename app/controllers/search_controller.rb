class SearchController < ApplicationController
  def search
    search do
      Order.where :order => params[:number]
  end
end
