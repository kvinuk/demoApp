class AdminsController < ApplicationController

	def index
		@page = Page.where(name: "index").first
		@contents = Content.where(page_id: @page.id)
	end
end
