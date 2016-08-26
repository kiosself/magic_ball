@file_path = File.dirname(__FILE__)

def answer
  answer = []
  answer << File.readlines(@file_path + '/text/answers.txt', :encoding => 'UTF-8')

  50.times do
    sleep 0.08
    answer = answer.flatten
    print "#{answer.sample.chomp}\r"
  end

  cls
  answer.flatten.sample
end

def question
  quests = []
  quests << File.readlines(@file_path + '/text/questions.txt', :encoding => 'UTF-8')
  quests.flatten.sample
end

def cls
  system "cls" or system "clear"
end
