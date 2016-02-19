# Introducing the Humble_Rpi-plugin-photocell gem


## Testing the gem

    require 'humble_rpi-plugin-photocell'

    class Echo

      def notice(s)
        puts "%s: %s" % [Time.now, s]
      end
    end

    rpi = HumbleRPiPluginPhotocell.new(settings: {channel: 0}, variables: {notifier: Echo.new})
    rpi.start

Output:

<pre>
ready to monitor photocell
2016-02-19 20:52:12 +0000: pi/photocell: 921
2016-02-19 20:54:14 +0000: pi/photocell: 646
</pre>

When the room light was switched off the photocell registered 921, and when the light was switched on again, the photocell registered 646.


## Using the plugin with the Humble RPi gem

    require 'humble_rpi'
    require 'humble_rpi-plugin-photocell'

    r = HumbleRPi.new device_name: 'ottavia', sps_address: '192.168.4.140',\
      plugins: {Photocell: {channel: 0} }
    r.start

## Resources

* Introducing the Rpi_photocell gem http://www.jamesrobertson.eu/snippets/2016/feb/19/introducing-the-rpi_photocell-gem.html

humblerpiphotocell gem photocell humblerpi
