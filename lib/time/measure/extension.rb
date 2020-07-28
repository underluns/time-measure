class Time
  class Measure
    module Extension
      # @return [Time::Measure]
      def measure
        Time::Measure.new { yield }
      end
    end
  end
end
