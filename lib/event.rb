class Event < ActiveRecord::Base
	has_many :personevents
	has_many :people, through: :personevents

	def find_and_assign_people
		ScrapPeopleFromEvent.new(self) rescue ArgumentError
		''
	end
end