class Content < ActiveRecord::Base
	attr_accessor :text, :section
	belongs_to :page
end
