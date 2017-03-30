http://www.theodinproject.com/ruby-programming/ruby-on-the-web

# Project 1: Twitter Spambot

You've briefly learned about how to use Ruby to send requests to the web and parse responses. When you're building real web applications, you'll often want to interface with other applications over the web via their API.

If you're not familiar with APIs, now's your chance. In this case, Twitter gives you access to a bunch of their commonly used commands (like sending a tweet, accessing your followers, etc) but via your program instead of having to click buttons on their site. Hence why it's called the Application Programming Interface... your application can programmatically access their system!

When companies make their APIs public, they usually want to limit the amount of spam and abuse so they make you authenticate yourself with each request. You usually have to register your application with them and they give you a key to use to authenticate your requests. Sometimes it's as simple as just including that key in the URL string when you make a request, but often these days they want a less hard-coded and more secure way of authenticating you.

The protocol that's commonly used for this is called OAuth. In this case Twitter uses OAuth, but you'd have to use the same protocol (though perhaps a different version; there are two major versions) if you wanted to interface with Facebook, Instagram, Tumblr, etc. so it's worth getting some experience working with it. It's not always immediately intuitive but just remember that the basic idea is to make sure the request is coming from someone they have authorized. If you set up your SSH keys to interface with Github back during the installation phase, it's not terribly different from that idea.

Note that, for this project, you may want to create a throwaway Twitter account (mine is @SpamBot26103678) because you'll probably accidentally go over their data limits or rate limits or other anti-spamming mechanisms and will send out a lot of testing tweets along the way. No sense getting your main account banned for playing around.
Your Task

Do this project/tutorial from Jumpstart Lab. It will take you through how to authenticate with Twitter and start tweeting.
Don't worry about the last part on Klout.
