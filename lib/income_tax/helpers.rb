module IncomeTax
  module Helpers
    private

    def Rate(*input)
      Rate.new(*input)
    end

    def money(value)
      if value.is_a? Integer or value.is_a? BigDecimal
        value
      else
        Rate.decimal(value)
      end
    end

    def age_for(time, base = Time.now)
      if time.month > base.month or (time.month == base.month and time.day >= base.day)
        base.year - time.year
      else
        base.year - time.year - 1
      end
    end
  end
end
