module Airbrake
  module Graylog2
    class Configuration < ::Airbrake::Configuration

      # Graylog2 facility name (defaults to graylog2_notifier).
      attr_accessor :graylog2_facility

      # +graylog2_max_size+ may be a number of bytes, 'WAN' (1420 bytes) or 'LAN' (8154).
      # Default (safe) value is 'WAN'.
      attr_accessor :graylog2_max_size

      def initialize
        super

        @host                 = "localhost"
        @port                 = 12201
        @graylog2_facility    = "airbrake_graylog2"
        @graylog2_max_size    = "WAN"
      end

    end
  end
end