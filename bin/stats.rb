#!/usr/bin/env ruby

# Summary:
#   ディレクトリを走査し、ファイルサイズの降順でファイルを一覧表示する。
#   その際、マークダウンのファイルのみをフィルタする。
#
# Usage:
#   ruby stats.rb

lines = []

Dir.children('./').each do |dir|
  next unless dir.match? /^\d+_\d+$/

  Dir.children(dir).each do |fname|
    next unless fname.match?(/(md|markdown)$/)

    file = dir + '/' + fname
    code_block = false

    File.read(file).each_line do |line|
      code_block = !code_block if line.match? /```/
      lines << line if !code_block && line.match?(/^## /)
    end
  end
end

lines_count = Hash.new(0)

lines.each_with_object(lines_count) do |line, memo|
  memo[line] += 1
end

lines_count.sort_by {|l, c| -c}.reject {|l, c| c <= 1}.each do |l, c|
  puts "#{c}\t#{l}"
end
