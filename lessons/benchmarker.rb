class Benchmarker
  def run(&block)
    time_start = Time.now
    yield
    time_end = Time.now
    elapsed = time_end - time_start
    puts elapsed
  end
end

benchmarker = Benchmarker.new
benchmarker.run do
  10.times do
    puts "."
    sleep(rand(0.1...1.0))
  end
end
