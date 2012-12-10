module CartHelper
	def buy(phone)
		self.current_phone = phone
	end
	def current_phone=(phone)
		@current_phone = phone
	end
end
