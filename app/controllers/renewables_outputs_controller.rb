class RenewablesOutputsController < ApplicationController

	def new

		@records = RenewablesOutput.new
	
	end
	
	def index
	
    	@records = RenewablesOutput.all
    	
    end

	def home
	
    	@records = RenewablesOutput.all
    	
    end

	
#	def create
	
#		@record = RenewablesOutput.create(hour: 20)
		
#	end
	
end

