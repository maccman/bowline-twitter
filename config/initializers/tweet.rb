Tweet.poll

Thread.new do  
  loop do
    sleep 60
    Tweet.poll
  end
end