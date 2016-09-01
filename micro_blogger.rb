require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing MicroBlogger"
		@client = JumpstartAuth.twitter			#OAuth AUTHENTICATION
		puts "Welcome to the JSL Twitter Client!"
		run
	end

	def screen_names
		@screen_names = @client.followers.collect do |follower|
			@client.user(follower).screen_name 
		end
		return @screen_names
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

	def direct_message(target, message)
		puts "trying to send #{target} this direct message:"
		puts message
		message = "d @#{target} #{message}"
		screen_names
		if @screen_names.include?(target)
			tweet(message)
		else
			puts "you can only send messages to people who follow you"
		end
	end

	

	def run
		parts = ""
		while parts[0] != "q"
			puts "press Q to exit, T to tweet, DM to send a message"
			parts   = gets.chomp.downcase.split(" ")
			case parts[0]
			when "q"  then puts "Goodbye"
			when "t"  then tweet(parts[1..-1].join(" "))
			when "dm" then direct_message(parts[1], parts[2..-1].join(" "))
			else
				puts "what the hell does \"#{parts[0]}\" means"
			end
		end
	end
end

blogger = MicroBlogger.new
#blogger.tweet("MicroBlogger Initialized")
#blogger.tweet("this tweet is way longer than the usual 140 characters. Let's see what will happen after I try to send it. I'm very curious about it. My bloody ear hurts because of this stupid otitis, I can't wait for it to finish")
#blogger.tweet("are you still working?")