#benchmark method
def benchmark
  #2 run in segments by....
  start_time = Time.now
  #3 yielding control
  yield
  end_time = Time.now

  #1 receive code block
  running_time = end_time - start_time
  #4 return
  return running_time
end

long_string = "apple"*100000000

#code block
running_time = benchmark do
  long_string.reverse
end

puts "string.reverse took #{running_time} seconds to run"