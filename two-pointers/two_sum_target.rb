def two_sum(nums, target)
  left = 0
  right = nums.length - 1

  while left < right
    sum = nums[left] + nums[right]
    if sum == target
      return true
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end

  return false
end

nums = [1, 2, 4, 6, 8, 9, 14, 15]
target = 13

puts two_sum(nums, target) # Output: true