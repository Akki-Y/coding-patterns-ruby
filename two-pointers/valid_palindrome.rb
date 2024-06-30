def valid_palindrome(str)
  left = 0
  right = str.length - 1

  while left < right
    return false if str[left] != str[right]
  left += 1
  right -= 1
end
  return true
end

puts valid_palindrome("raceare")  #false
puts valid_palindrome("racecar")  #true