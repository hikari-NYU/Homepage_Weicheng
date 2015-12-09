class HomeController < ApplicationController
	include HomeHelper
  def index
  	if params[:lang]!=nil
  		switch_lang(params[:lang])
  		redirect_to(:back)
  	end
  end

  def work
    if params[:lang]!=nil
      switch_lang(params[:lang])
      redirect_to(:back)
    end
  end

  def interest
    if params[:lang]!=nil
      switch_lang(params[:lang])
      redirect_to(:back)
    end
  end
end