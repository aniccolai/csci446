class User < ActiveRecord::Base
	acts_as_authentic
	
	has_many :games	
	has_attached_file :photo, :url => '/assets/:class/:attachment/:id/:style/:filename'
	
	validates_presence_of :username, :email, :first_name, :last_name, :password_salt, :crypted_password
	
	def to_s
		username
	end
	
	def role_symbols
		if admin?
			[:admin]
		else
			[:member]
		end
	end
	
	def homepage
		return :controller => '/admin' if role_symbols.include? :admin
		return :controller => '/member' if role_symbols.include? :member
	end
	
end