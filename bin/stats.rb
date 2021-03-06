#!/usr/bin/env ruby

# Summary:
#   '## 'から始まる頻出表現を出現回数の降順で表示する。
#
# Usage:
#   ruby stats.rb

require_relative 'collect_files'

lines = []

collect_files.each do |file|
  code_block = false

  File.read(file).each_line do |line|
    code_block = !code_block if line.match? /```/
    lines << line if !code_block && line.match?(/^## /)
  end
end

lines_count = Hash.new(0)

lines.each_with_object(lines_count) do |line, memo|
  memo[line] += 1
end

lines_count.sort_by {|l, c| -c}.reject {|l, c| c <= 1}.each do |l, c|
  puts "#{c}\t#{l}"
end
