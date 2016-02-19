#!/usr/bin/env ruby

# file: humble_rpi-plugin-photocell.rb


require 'rpi_photocell'



class HumbleRPiPluginPhotocell
  

  def initialize(settings: {}, variables: {})

    @channel = settings[:channel] || 0
    @threshold = settings[:threshold] || 100
    @notifier = variables[:notifier]
    @device_id = variables[:device_id] || 'pi'
    @photocell = RPiPhotocell.new pin: @channel
    
  end

  def start()
    
    puts 'ready to monitor photocell'
    old_val = @photocell.read
    
    loop do
      
      val = @photocell.read

      if (old_val - val).abs >= @threshold then
        @notifier.notice "%s/photocell: %s" % [@device_id, val]
      end
      
      old_val = val
      sleep 1
      
    end
          
  end
  
  alias on_start start
  
  
end
