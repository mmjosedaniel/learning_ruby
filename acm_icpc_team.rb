# frozen_string_literal: true

topic = ["10101", "11100", "11010", "00101"]

def acmTeam(topic)
  max_topics = 0
  groups = 0
  topic.length.times do |i|
    comp = Integer('0b' + topic[i])
    (topic.length - i - 1).times do |j|
      cicle_topics = (comp | Integer('0b' + topic[j + i + 1])).to_s(2)
      cicle_count =  cicle_topics.to_s.delete('0').size
      if cicle_count > max_topics
        max_topics = cicle_count
        groups = 0
      end
      groups += 1 if cicle_count == max_topics
    end
  end

  p result = [max_topics, groups]
end

acmTeam(topic)
