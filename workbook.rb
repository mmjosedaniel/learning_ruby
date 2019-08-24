# frozen_string_literal: true

n = 5
k = 3
arr = [4, 2, 6, 1, 10]

def workbook(n, k, arr)
  count = 0
  page = 1 # chapter[i] page
  n.times do |i|
    first_problem = 1 # the lower problem number of the page
    secound_problem = k # the higher problem number of the page
    comp = arr[i] # the int into arr [i ]
    chap_pages = (comp / k.to_f).ceil

    chap_pages.times do |j|
      secound_problem = comp if (j + 1) == chap_pages
      count += 1 if page >= first_problem && page <= secound_problem
      page += 1
      first_problem += k
      secound_problem += k
    end
  end
  p count
end

workbook(n, k, arr)
