class TweetsBinder < Bowline::Binders::Base
  bind Tweet
  
  def self.update(status)
    Bowline::Desktop::App.busy(true)
    klass.update(status)
    Bowline::Desktop::App.busy(false)
  end
end