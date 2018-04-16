require "benchmark/ips"
require_relative "../bin/equili_indices"

sample_array = [-7, 1, 5, 2, -4, 3, 0]

# Benchmark
Benchmark.ips do |x|
  x.report("Method 1") {
    equili_indices(sample_array)
  }

  x.report("Method 2") {
    equili_indices_with_inject(sample_array)
  }

  x.compare!
end
