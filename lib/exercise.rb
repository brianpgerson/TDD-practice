class Array
  def my_uniq
    result = []
    self.each { |el| result << el unless result.include?(el) }
    result
  end

  def two_sum
    results = []
    self.each.with_index do |el, idx|
      pair = []
      (idx + 1).upto(self.length - 1) do |jdx|
        pair << [idx, jdx]  if el + self[jdx] == 0
      end
      results += pair unless pair.empty?
    end
    results
  end
end
