require 'time/measure/version'
require 'time/measure/extension'

class Time
  class Measure
    # @attr_reader result     [Object] block execution result.
    # @attr_reader start_time [Time]   start block execution.
    # @attr_reader end_time   [Time]   end of block execution.
    attr_reader :result, :start_time, :end_time

    def initialize
      @start_time = Time.now.utc
      @result     = yield
      @end_time   = Time.now.utc
    end

    # @return [Float] block execution time in seconds.
    def duration
      @duration ||= end_time - start_time
    end

    # @return [Array] result and block execution time.
    def to_ary
      [result, duration]
    end
  end
end
