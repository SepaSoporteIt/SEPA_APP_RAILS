# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
#every :minute { curl 'http://myapp.com/cron-alive' }
# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
# Learn more: http://github.com/javan/whenever

	# Este job enviaba mails por visitas, reever para vencimientos
	# every 1.days do
	#   runner "Visit.send_emails"
	# end
	every 1.days do
		runner "ExpirationsController.expirationLogic"
	end

