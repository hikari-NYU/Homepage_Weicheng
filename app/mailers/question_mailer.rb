class QuestionMailer < ApplicationMailer
	default from: 'notifications@example.com'
 
	def record_email(user)
		@user = user
	    @email = 'tjfw1@outlook.com'
	    if FileTest::exists?(@user.s9)
	    	attachments['video']=File.read(@user.s9)
	    end
	    if FileTest::exists?(@user.s10)
			attachments['audio']=File.read(@user.s10)
		end
	    mail(from: 'weicheng.ma1991@gmail.com', to: @email, subject: 'Questionaire for User #'+@user.id.to_s)
	    if File.exist?(@user.s9)  
	       File.delete(@user.s9)  
	    end
	    if File.exist?(@user.s10)  
	       File.delete(@user.s10)  
	    end
	end
end
