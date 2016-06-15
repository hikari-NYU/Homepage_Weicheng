class OuterLinksController < ApplicationController
	include HomeHelper
  def questionaire
  	if params[:lang]!=nil
  		switch_lang(params[:lang])
  		redirect_to(:back)
  	end
  end

   def upload
   	if params[:lang]!=nil
  		switch_lang(params[:lang])
  		redirect_to(:back)
  	end
	   unless request.get?
	   	if params[:file]!=nil
		   if filename=uploadFile(params[:file]['file'])
		   end
		  end
	   end
   end
end
