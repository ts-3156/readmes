#!/usr/bin/env ruby

# Summary:
#   ディレクトリを走査し、ファイルサイズの降順でファイルを一覧表示する。
#   その際、マークダウンのファイルのみをフィルタする。
#
# Usage:
#   ruby filter.rb KEYWORD

require_relative 'collect_files'

keyword = ARGV[0]
files = []

collect_files.each do |file|
  code_block = false

  File.read(file).each_line do |line|
    code_block = !code_block if line.match? /```/
    files << file if !code_block && line.match?(/^#{keyword}/)
  end
end

files.sort_by {|f| -f.split('/')[1].split('_')[0].to_i }.uniq.each do |file|
  puts file
end

exit

lines_count = Hash.new(0)

lines.each_with_object(lines_count) do |line, memo|
  memo[line] += 1
end

lines_count.sort_by {|l, c| -c}.reject {|l, c| c <= 1}.each do |l, c|
  puts "#{c}\t#{l}"
end
