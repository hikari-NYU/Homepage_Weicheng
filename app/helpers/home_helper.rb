
module HomeHelper
		def make_title(page_title="")
			base_title="Weicheng's Homepage"
			if page_title.empty?
				base_title
			else
				page_title+"|"+base_title
			end
		end

		$langUsed="English"
		@@name=nil
		@@university=nil
		@@email=nil
		@@phone=nil
		@@intro=nil
		@@link_home=nil
		@@link_work=nil
		@@link_interest=nil

		def initializer()
			intromod=SelfIntro.where("lang='"+$langUsed.to_s+"'")[0]
			@@name=intromod.name
			@@university=intromod.university
			@@email=intromod.email
			@@phone=intromod.phone
			@@intro=intromod.intro
			@@link_home=LinkLang.where("lang='"+$langUsed.to_s+"' and types='home'")[0].link
			@@link_work=LinkLang.where("lang='"+$langUsed.to_s+"' and types='work'")[0].link
			@@link_interest=LinkLang.where("lang='"+$langUsed.to_s+"' and types='interest'")[0].link
		end

		def get_name()
			if @@name==nil
				initializer()
			end
			@@name
		end

		def get_university()
			if @@university==nil
				initializer()
			end
			@@university
		end

		def get_email()
			if @@email==nil
				initializer()
			end
			@@email
		end

		def get_phone()
			if @@phone==nil
				initializer()
			end
			@@phone
		end

		def get_intro()
			if @@intro==nil
				initializer()
			end
			@@intro
		end

		def get_link_home()
			if @@link_home==nil
				initializer()
			end
			@@link_home
		end

		def get_link_work()
			if @@link_work==nil
				initializer()
			end
			@@link_work
		end

		def get_link_interest()
			if @@link_interest==nil
				initializer()
			end
			@@link_interest
		end

		def switch_lang(lang)
			$langUsed=lang
			@@name=nil
			@@link_home=nil
		end

		def appendUrl(url,lang)
			if url.end_with?('/')!=true
				url=url+'/'
			end
			url+lang
		end
end
