module Binders
  class Tweets < Bowline::Binders::Collection
    class << self
      def index
        loading {
          self.items = timeline
        }
      end
      
      def update(status)
        loading {
          twitter.update(status)
        }
        index # update timeline
      end
      
      def login(username, password)
        @username = username
        @password = password
      end
      
      protected
        def twitter
          httpauth = Twitter::HTTPAuth.new(@username, @password)
          Twitter::Base.new(httpauth)
        end
        
        def timeline
          twitter.friends_timeline.collect {|t|
            # Flatten
            t.profile_image_url = t.user.profile_image_url
            t.delete('user')
            t.to_hash
          }
        end
    end
    
  end
end # Binders