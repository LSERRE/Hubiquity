module VisitHelper
	def parseDatetime(date, time)
    	dateTime = DateTime.new(date.year, date.month, date.day, time.hour, time.min, time.sec).to_formatted_s(:short)
	end
end
