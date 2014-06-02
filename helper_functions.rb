

# Constructs the event name from its code
#
#  event_name('men_march') #=> "Men's Monthly Triathlon"
#  event_name('men_april') #=> "Men's Monthly Triathlon"
#  event_name('ladies_march') #=> "Ladies' Monthly Triathlon"
#  event_name('ladies_april') #=> "Ladies' Monthly Triathlon"
#
#  [Extension: get it to work for any code e.g. men_december or men_xx]
def event_name(event_code)
	if	event_code.split('_').first == 'men'
		"Men's Monthly Triatlon"
	else
		if event_code.split('_').first == 'ladies'
			"Ladies' Monthly Triathlon"
		end
	end
end

# Constructs the event date from its code
#
#  event_date('men_march') #=> '15/3/2014'
#  event_date('men_april') #=> '15/4/2014'
#  event_date('ladies_march') #=> '15/3/2014'
#  event_date('ladies_april') #=> '15/4/2014'
#
# You can assume the year is 2014 and the triathlon is always on the 15th.
def event_date(event_code)
	month = event_code.split('_').last
	lookup = Hash['january',1,'february',2,'march',3,'april',4,'may',5,'june',6,'july',7,'august',8,'september',9,'october',10,'november',11,'december',12]
	month_number = lookup[month]
	"15/#{month_number}/2014"
end

# Extracts the first name from a full name.
#
#   first_name('Tom Close') #=> 'Tom'
#   first_name('Alan Jones') #=> 'Alan'
#
def first_name(full_name)
	full_name.split(' ').first
end


# Extracts the first name from a full name.
#
#   last_name('Tom Close') #=> 'Close'
#   last_name('Alan Jones') #=> 'Jones'
#
#   [Extension]
#   last_name('Pierre de Fermat') #=> 'de Fermat'
#
def last_name(full_name)
	if full_name == ""
		""
	else
		full_name.split[1..-1].join(' ')
	end
end

