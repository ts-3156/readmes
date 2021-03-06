#!/usr/bin/env ruby

# Summary:
#   KEYWORDで指定されたセクションを1つのファイルに統合して書き出す。
#
# Usage:
#   ruby filter.rb KEYWORD

require_relative 'collect_files'

keyword = ARGV[0]
out_file = ARGV[1]
sections = []
sorted_files = collect_files.sort_by {|f| -f.split('/')[1].split('_')[0].to_i}

sorted_files.each do |file|
  code_block = false
  section_block = false
  section = []

  File.read(file).each_line do |line|
    code_block = !code_block if line.match? /```/

    if !code_block && line.match?(/^#{keyword}/)
      section_block = true
    elsif section_block && line.match?(/^##/)
      section_block = false
    end

    if section_block
      suffix =
          if line.match?(/^#{keyword}/)
            " [#{file}](https://github.com/ts-3156/readmes/blob/master/#{file})"
          else
            ''
          end
      section << "#{line.chomp}#{suffix}"
    end
  end

  sections << section unless section.empty?
end

File.write(out_file, sections.map {|s| s.join("\n") + "\n----\n\n"}.join)
