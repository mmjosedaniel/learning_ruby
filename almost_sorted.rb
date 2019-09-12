# frozen_string_literal: true

# arr = [1, 2, 3]
# arr = [3, 1, 2]
arr = [4104, 8529, 49_984, 54_956, 63_034, 82_534, 84_473,
    86_411, 92_941, 95_929, 108_831, 894_947, 125_082,
    137_123, 137_276, 142_534, 149_840, 154_703, 174_744,
    180_537, 207_563, 221_088, 223_069, 231_982, 249_517,
    252_211, 255_192, 260_283, 261_543, 262_406, 270_616,
    274_600, 274_709, 283_838, 289_532, 295_589, 310_856,
    314_991, 322_201, 339_198, 343_271, 383_392, 385_869,
    389_367, 403_468, 441_925, 444_543, 454_300, 455_366,
    469_896, 478_627, 479_055, 484_516, 499_114, 512_738,
    543_943, 552_836, 560_153, 578_730, 579_688, 591_631,
    594_436, 606_033, 613_146, 621_500, 627_475, 631_582,
    643_754, 658_309, 666_435, 667_186, 671_190, 674_741,
    685_292, 702_340, 705_383, 722_375, 722_776, 726_812,
    748_441, 790_023, 795_574, 797_416, 813_164, 813_248,
    827_778, 839_998, 843_708, 851_728, 857_147, 860_454,
    861_956, 864_994, 868_755, 116_375, 911_042, 912_634,
    914_500, 920_825, 979_477]
# arr = [43, 65, 1, 98, 99, 101]

def almostSorted(arr)
if arr[-2] > arr[-1]
 arr.push(arr[-1] + 1)
elsif arr[-2] < arr[-1]
 arr.push(arr[-1] - 1)
end

arr_len = arr.length
i = 0
space = 0
sections = []

while i < arr_len - 1
 if arr[i] > arr[i + 1]
   sections.push(arr[space, i + 1 - space])
   space = i + 1
   i += 1
   while i < arr_len - 1
     if arr[i] < arr[i + 1]
       sections.push(arr[space, i + 1 - space])
       space = i + 1
       break
     end
     i += 1
   end
 end
 i += 1
end

arr.pop
arr_len -= 1

sections.each do |val|
 p val
end
p sections_len = sections.length

if sections_len == 1
 print 'yes'
elsif arr_len == 2 && arr == arr.sort
 print 'yes'
elsif arr_len == 2 && arr != arr.sort
 print "yes\nswap 1 2"
elsif sections_len == 5 && sections[0][-1] > sections[3][0] &&
     sections[0][-1] < sections[4][0] &&
     sections[0][-1] > sections[2][-1]
 print "yes\nswap #{arr.index(sections[0][-1]) + 1} " +
       "#{arr.index(sections[3][0]) + 1}"
elsif sections_len == 3 && sections[1].length == 1 &&
     sections[0][-1] > sections[1][0] &&
     sections[0][-1] < sections[2][0] &&
     sections[0][0] < sections[1][0]
 print "yes\nswap #{arr.index(sections[0][-1]) + 1} " +
       "#{arr.index(sections[1][-1]) + 1}"

elsif sections_len == 3 && sections[0][-1] > sections[1][0] &&
     sections[0][-1] < sections[2][0] &&
     sections[0][0] < sections[1][0]
 print "yes\nreverse #{arr.index(sections[0][-1]) + 1} " +
       "#{arr.index(sections[1][-1]) + 1}"
elsif arr_len == 3 && sections[0][0] > sections[1][0]
 print 'no'
else
 print 'no'
end
end

almostSorted(arr)
