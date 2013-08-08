require "zminnotifier/version"
require 'ruby-growl'
require 'ruby-growl'
require 'ruby-growl/ruby_logo'


module ZminNotifier
  class Timer
    def initialize
      @growl = Growl.new "localhost", "ruby-growl"
      @growl.add_notification("notification", "ruby-growl Notification",
                         Growl::RUBY_LOGO_PNG)
    end

    def notify msg
      @growl.notify "notification", "It came from ruby-growl", msg
    end

    def run(min)
      loop do
        t = Time.new
        if t.min == min && t.sec == 0
          notify(t.to_s)
        end
        sleep 1
      end
    end
  end
end
