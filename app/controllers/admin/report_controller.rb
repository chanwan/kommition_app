class Admin::ReportController < ApplicationController

layout 'admin'
	before_action :authenticate_user!
	def index
		@infos = Infostud.all
	end

	def show
		@info = Infostud.find(params[:id])
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
			:phone_number, :ort, :passport,:user_id)
	end

end
