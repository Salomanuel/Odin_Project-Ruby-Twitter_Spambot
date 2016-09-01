require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing MicroBlogger"
		@client = JumpstartAuth.twitter			#OAuth AUTHENTICATION
	end

	def tweet(message)
		if message.length > 139
			puts "tweet is too long, press W for whatever, R for rewriting it and E to exit"
			answer = gets.chomp.downcase
			case 
			when "w" then @client.update(message[0..139])
			#when "r" then tweet()
			when "e" then exit
			else tweet(message)
			end
		else
			@client.update(message)
		end
		
	end
end

blogger = MicroBlogger.new
#blogger.tweet("MicroBlogger Initialized")
blogger.tweet("this tweet is way longer than the usual 140 characters. Let's see what will happen after I try to send it. I'm very curious about it. My bloody ear hurts because of this stupid otitis, I can't wait for it to finish")
#blogger.tweet("are you still working?")