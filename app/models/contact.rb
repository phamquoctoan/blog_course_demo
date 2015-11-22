class Contact < MailForm::Base
	attribute :name, :validate => true
	attribute :email, :validate => /\A([\w\.%\+\-]+)@([\W\-]+\.)+([\W]{2,})\z/i
	attribute :message, :validate => true
	attribute :nickname, :captcha => true

	def headers
		{
			:subject => "Contact Form",
			:to => "phamquoctoan@hotmail.com",
			:from => %("#{name}" <#{name}>)
		}
	end		
end