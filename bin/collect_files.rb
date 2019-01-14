def collect_files
  files = []

  Dir.children('./').each do |dir|
    next unless dir.match? /^\d+_\d+$/

    Dir.children(dir).each do |fname|
      next unless fname.match?(/(md|markdown)$/)

      files << dir + '/' + fname
    end
  end

  files
end
