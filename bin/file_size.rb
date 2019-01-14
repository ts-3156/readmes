#!/usr/bin/env ruby

# Summary:
#   ディレクトリを走査し、ファイルサイズの降順でファイルを一覧表示する。
#   その際、マークダウンのファイルのみをフィルタする。
#
# Usage:
#   ruby file_size.rb

require_relative 'collect_files'

files = {}

collect_files.each do |file|
  files[file] = File.size(file)
end

files.sort_by {|f, s| -s}.each do |f, s|
  puts "#{s}\t#{f}"
end
