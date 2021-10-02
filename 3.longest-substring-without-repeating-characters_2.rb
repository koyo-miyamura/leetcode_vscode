#
# @lc app=leetcode id=3 lang=ruby
#
# [3] Longest Substring Without Repeating Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s.empty?

  left, right = 0, 0
  res = 1
  while right < s.length
    if right == left
      right += 1
      next
    end

    index = s[left..right-1].index(s[right])
    unless index.nil?
      left = left + index + 1
      next
    end

    res = [res, s[left..right].length].max
    right += 1
  end

  res
end
# @lc code=end
