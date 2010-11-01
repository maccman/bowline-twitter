require "twitter"

class Tweet < SuperModel::Base
  class << self
    def poll
      destroy_all
      timeline.each do |tweet|
        create(tweet)
      end
    end

    def update(status)
      twitter.update(status)
      poll
    end

    private
    def timeline
      twitter.friends_timeline.collect {|t|
        t.profile_image_url = t.user.profile_image_url
        t.delete('user')
        t.to_hash
      }
    end

    def twitter
      #httpauth = Twitter::HTTPAuth.new(
      #  AppConfig.username, 
      #  AppConfig.password
      #)
      #Twitter::Base.new(httpauth)

      oauth = Twitter::OAuth.new(AppConfig.consumer_key, AppConfig.consumer_secret)
      rtoken = oauth.request_token.token
      rsecret = oauth.request_token.secret

      puts "> redirecting you to twitter to authorize..."
      %x(open #{oauth.request_token.authorize_url})

      pin = gets.chomp 

      begin
        oauth.authorize_from_request(rtoken, rsecret, pin)

        twitter = Twitter::Base.new(oauth)
      rescue OAuth::Unauthorized
        puts "> FAIL!"
      end
    end
  end
end
