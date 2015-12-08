
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
			conn=PGconn.open(:dbname => 'd9tupv30f674g0', :host => 'ec2-54-83-199-54.compute-1.amazonaws.com', :port => 5432,:user => 'jbjbqbyqjusvmh' , :password => '70PJIlZRHxxARB41NDtcjMwG6n')
			conn.exec("SELECT name from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_university()
			conn=PGconn.open(:dbname => 'd9tupv30f674g0', :host => 'ec2-54-83-199-54.compute-1.amazonaws.com', :port => 5432,:user => 'jbjbqbyqjusvmh' , :password => '70PJIlZRHxxARB41NDtcjMwG6n')
			conn.exec("SELECT university from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_email()
			conn=PGconn.open(:dbname => 'd9tupv30f674g0', :host => 'ec2-54-83-199-54.compute-1.amazonaws.com', :port => 5432,:user => 'jbjbqbyqjusvmh' , :password => '70PJIlZRHxxARB41NDtcjMwG6n')
			conn.exec("SELECT email from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_phone()
			conn=PGconn.open(:dbname => 'd9tupv30f674g0', :host => 'ec2-54-83-199-54.compute-1.amazonaws.com', :port => 5432,:user => 'jbjbqbyqjusvmh' , :password => '70PJIlZRHxxARB41NDtcjMwG6n')
			conn.exec("SELECT phone from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def get_intro()
			conn=PGconn.open(:dbname => 'd9tupv30f674g0', :host => 'ec2-54-83-199-54.compute-1.amazonaws.com', :port => 5432,:user => 'jbjbqbyqjusvmh' , :password => '70PJIlZRHxxARB41NDtcjMwG6n')
			conn.exec("SELECT intro from self_intros where lang='"+$langUsed.to_s+"';").getvalue(0,0)
		end

		def switch_lang(lang)
			$langUsed=lang
		end
end
