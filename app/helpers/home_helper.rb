module HomeHelper
	def make_title(page_title="")
		base_title="Weicheng's Homepage"
		if page_title.empty?
			base_title
		else
			page_title+"|"+base_title
		end
	end
end
