class LargeSum

  def get_large_number
    large_num = ''
    File.open("/Users/ellie007/8thLightApprenticeship/project_euler/large_sum/lib/large_num.rb", "r") do |f|
      f.each_line do |line|
          large_num << line
      end
    end
    large_num
  end

  def make_large_number_iterable
    get_large_number.split("\n").map(&:to_i)
  end

  def add_number_to_counter
    make_large_number_iterable.reduce(:+)
  end

  def find_first_10_digits
    add_number_to_counter.to_s.split(//).first(10).join.to_i
  end

end
