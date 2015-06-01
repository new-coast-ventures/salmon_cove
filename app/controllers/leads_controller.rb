class LeadsController < ApplicationController

	before_filter :redirect_to_home, except: [:create]

	def index
	end
	
	def new
	end

	def create
		lead = Lead.new(lead_params)
		unless lead.save
			@errors = lead.errors.full_messages
		end
	end

	private

	def redirect_to_home
		redirect_to root_path
	end 

	def lead_params
		params.require(:lead).permit(:name, :email)
	end
end
