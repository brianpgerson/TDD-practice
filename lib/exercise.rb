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

  def my_transpose
    results = []
    self.length.times do |idx|
      new_row = []
      self.each do |row|
        new_row << row[idx]
      end
      results << new_row
    end
  results
  end

  def stock_picker
    max_profit = 0
    best_days = []
    self.each.with_index do |el, idx|
      (idx + 1).upto(self.length - 1) do |jdx|
        if self[jdx] - el > max_profit
          best_days = [idx, jdx]
          max_profit = self[jdx] - el
        end
      end
    end
    best_days
  end

end

# For Towers of Hanoi, don't worry about testing the UI.
# Testing console I/O is tricky. Focus on:
# #render
# #move
# #won?

class TowersOfHanoi
  attr_accessor :board
  def initialize
    @board = [[3,2,1], [], []]
  end

  def render
    puts "#{@board}"
  end

  def play
    render
    until won?
      from_tower = get_input
      to_tower = get_input
      if valid_move?(from_tower, to_tower)
        move(from_tower, to_tower)
        render
      end
    end
  end

  def get_input
    begin
      puts "Please select a fun tower by entering its index!"
      input = Integer(gets.chomp)
    rescue
      puts "Enter a single number, ya dummy!"
      retry
    end
  end

  def move(from, to)
    disk = @board[from].pop
    @board[to] << disk
  end

  def valid_move?(from, to)
    if !@board[from].empty? && @board[to].empty? || @board[from].last < @board[to].last
      return true
    end
    false
  end

  def won?
    if @board[0].empty? &&
      (@board[1].empty? || @board[2].empty?)
      return true
    end
    false
  end

end
