def two_sum(num, target)
  n = num.length - 1

  (0..n).each do |i|
    (i+1..n).each do |j|
      if num[i] + num[j] == target
        return [i, j]
      end
    end
  end
end

num = [1, 2, 3, 4, 5]
target = 5
puts two_sum(num, target)