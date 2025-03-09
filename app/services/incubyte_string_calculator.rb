class IncubyteStringCalculator

  def self.add(numbers)
    numbers = numbers.gsub("\\n", "\n")
    return 0 if numbers.strip.empty?
    delimiter = /,|\n/ 
    if numbers.start_with?("//")
      match = numbers.match(/^\/\/(.+)\n/)
      if match
        custom_delimiter = Regexp.escape(match[1]) 
        delimiter = /#{custom_delimiter}|,|\n/ 
        numbers = numbers.sub(/^\/\/.+\n/, '') 
      end
    end

    nums = numbers.split(delimiter).map(&:to_i)
  
    negatives = nums.select { |num| num < 0 }

    unless negatives.empty?
      raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}"
    end
    nums.sum
  end
end

