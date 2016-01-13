class Array
  def my_uniq
    result = []
    self.each { |el| result << el unless result.include?(el) }
    result
  end
end
