class HomeController < ApplicationController
	include HomeHelper
  def index
  	if params[:lang]!=nil
  		switch_lang(params[:lang])
  		redirect_to(:back)
  	end
  end

  def work
  end

  def interest
  end
end