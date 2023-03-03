module MyEnumerable
  # all
  def all?
    each { |item| return false unless yield item }
    true
  end

  # any
  def any?
    each { |item| return true if yield(item) }
    false
  end

  # filter
  def filter?
    result = []
    each { |e| result << e if yield e }
    result
  end
end
