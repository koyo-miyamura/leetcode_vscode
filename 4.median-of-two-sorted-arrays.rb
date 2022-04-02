#
# @lc app=leetcode id=4 lang=ruby
#
# [4] Median of Two Sorted Arrays
#

# @lc code=start
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = (nums1 + nums2).sort

  size = nums.size

  if size.odd?
    nums[size / 2].to_f
  else
    ((nums[size / 2] + nums[(size / 2) - 1]) / 2.0).to_f
  end
end
# @lc code=end
