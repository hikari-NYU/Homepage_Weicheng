module HomeHelper
	def make_title(page_title="")
		base_title="Weicheng's Homepage"
		if page_title.empty?
			base_title
		else
			page_title+"|"+base_title
		end
	end

	def get_name(language="English")
		SelfIntro.find(lang=language).name
	end

	def get_university(language="English")
		SelfIntro.find(lang=language).university
	end

	def get_email(language="English")
		SelfIntro.find(lang=language).email
	end

	def get_phone(language="English")
		SelfIntro.find(lang=language).phone
	end

	def get_intro(language="English")
		SelfIntro.find(lang=language).intro
	end
end
