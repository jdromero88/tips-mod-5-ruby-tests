require 'active_support'
require 'active_support/core_ext'
require 'pry'

class RecurringMoment
  def initialize(start:, interval:, period:)
    @start = start
    @interval = interval
    @period = period
    # binding.pry
  end

  def match(date)
    current = @start

    while current <= date
      if current >= date
        # if @period == 'monthly'
        #   binding.pry
        # end
        return true
      end

      if @period == 'monthly'
        # if @interval > 1
        #   binding.pry
        # end
        current = current.advance(months: @interval)
      elsif @period == 'weekly'
        # if @interval > 1
        #   binding.pry
        # end
        current = current.advance(weeks: @interval)
      elsif @period == 'daily'
        # binding.pry
        current = current.advance(days: @interval )
      end
    end
    return false
  end
end
