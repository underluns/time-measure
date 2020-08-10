class Time
  class Measure
    module Extension
      # @return [Time::Measure]
      def measure(&block)
        Time::Measure.new(&block)
      end
    end
  end
end
