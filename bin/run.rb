require_relative '../config/environment'
ActiveRecord::Base.logger = false

cli = CommandLineInterface.new
cli.start
