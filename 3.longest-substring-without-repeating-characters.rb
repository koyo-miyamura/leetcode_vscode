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

  s
  .split('')
  .reduce({current_substr: [], max: 1}) { |acc, c|
    index = acc[:current_substr].find_index(c)
    unless index.nil?
      acc[:current_substr] = acc[:current_substr][(index+1)..].push(c)
      next acc
    end

    acc[:current_substr].push(c)
    acc[:max] = [acc[:max], acc[:current_substr].length].max
    acc
  }[:max]
end
# @lc code=end
