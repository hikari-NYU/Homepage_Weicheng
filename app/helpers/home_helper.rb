
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

		def connect()
			PGconn.open(:dbname => 'd9tupv30f674g0', :host => 'ec2-54-83-199-54.compute-1.amazonaws.com', :port => 5432,:user => 'jbjbqbyqjusvmh' , :password => '70PJIlZRHxxARB41NDtcjMwG6n')
		end

		def close(conn)
			conn.close()
		end

		def initializer()
			conn=connect()
			@@name=conn.exec("SELECT name from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
			@@university=conn.exec("SELECT university from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
			@@email=conn.exec("SELECT email from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
			@@phone=conn.exec("SELECT phone from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
			@@intro=conn.exec("SELECT intro from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
			@@link_home=conn.exec("SELECT link from link_langs where lang='"+$langUsed.to_s+"' and types='home';").getvalue(0,0)
			@@link_work=conn.exec("SELECT link from link_langs where lang='"+$langUsed.to_s+"' and types='work';").getvalue(0,0)
			@@link_interest=conn.exec("SELECT link from link_langs where lang='"+$langUsed.to_s+"' and types='interest';").getvalue(0,0)
			close(conn)
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
		end
end
