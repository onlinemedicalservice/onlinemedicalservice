class Feedback < ActiveRecord::Base
	belongs_to :patient

	validates_presence_of :feedback
end
