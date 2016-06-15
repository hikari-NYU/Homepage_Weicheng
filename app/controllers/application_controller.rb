class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
	def uploadFile(file)
	    if !file.original_filename.empty?
	    @filename=getFileName(file.original_filename)
	    File.open("#{Rails.root}/public/files/#{@filename}", "wb") do |f|
	    f.write(file.read)
	    end
	    return @filename
	    end
	end

	def getFileName(filename)
	    if !filename.nil?
	    return filename
	    end
	end
end
