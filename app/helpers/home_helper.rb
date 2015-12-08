
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
		def get_name()
			conn=PGconn.open(:dbname => 'weicheng_home', :host => 'localhost', :port => 5432,:user => 'weicheng' , :password => 'hikariTGpass1')
			conn.exec("SELECT name from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_university()
			conn=PGconn.open(:dbname => 'weicheng_home', :host => 'localhost', :port => 5432,:user => 'weicheng' , :password => 'hikariTGpass1')
			conn.exec("SELECT university from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_email()
			conn=PGconn.open(:dbname => 'weicheng_home', :host => 'localhost', :port => 5432,:user => 'weicheng' , :password => 'hikariTGpass1')
			conn.exec("SELECT email from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_phone()
			conn=PGconn.open(:dbname => 'weicheng_home', :host => 'localhost', :port => 5432,:user => 'weicheng' , :password => 'hikariTGpass1')
			conn.exec("SELECT phone from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_intro()
			conn=PGconn.open(:dbname => 'weicheng_home', :host => 'localhost', :port => 5432,:user => 'weicheng' , :password => 'hikariTGpass1')
			conn.exec("SELECT intro from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def switch_lang(lang)
			$langUsed=lang
		end
end
