#!/usr/bin/env ruby

# Summary:
#   ディレクトリを走査し、ファイルサイズの降順でファイルを一覧表示する。
#   その際、マークダウンのファイルのみをフィルタする。
#
# Usage:
#   ruby file_size.rb

files = {}

Dir.children('./').each do |dir|
  next unless dir.match? /^\d+_\d+$/

  Dir.children(dir).each do |fname|
    next unless fname.match?(/(md|markdown)$/)

    file = dir + '/' + fname
    files[file] = File.size(file)
  end
  break
end

files.sort_by {|f, s| -s}.each do |f, s|
  puts "#{s}\t#{f}"
end
