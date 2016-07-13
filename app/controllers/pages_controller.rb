class PagesController < ApplicationController
	def update
		@page = Page.find(params[:id])
		@contents = Content.where(page_id: @page.id)
		Rails.logger.debug "#{params.inspect}"
		
		@contents.each do |content|
			content.update(content_params)
		end
		redirect_to admins_path
	end

	private


	def content_params
	  params.require(:page).permit(:name, :content => ["1" => [:section, :text]])
	end

end
