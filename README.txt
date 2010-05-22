A Twitter client for Bowline.

More information about Bowline can be found here:
http://github.com/maccman/bowline

Released under the same license as Bowline (MIT)

Only OSX and ubuntu at the moment. You'll also need Ruby 1.9.

Setup:
  1) Install gem
     >> sudo gem install bowline
  2) Add credentials to application.yml
     >> mv config/application.example.yml config/application.yml
     >> mate config/application.yml
  3) Bundle gems
     >> gem bundle

To run:
>> script/run

To build .app:
>> script/build