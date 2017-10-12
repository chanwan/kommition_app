class ReportController < ApplicationController
	def index
	end

	def new 
		@info = current_user.infostuds.build
	end

	def create
		@info = current_user.infostuds.build(info_params)

		if @info.save
			redirect_to root_path
		end
	end

	private

	def info_params

		params.require(:infostud).permit(:type_education, :sex, :date_of_birth, :born_place, 
			:type_document, :another_name_document, :serial_number_document, :given_date,:place_given_document,
			:phone_number, :user_id)
	end
end
