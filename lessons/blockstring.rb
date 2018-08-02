string = "Matthew"

print string.each_char{|c| print "#{c} -"}.upcase

haiku = <<-EOF
      "A string with three lines"
      "Is considered multi line"
      "Ruby code haiku"
      EOF

haiku.each_line {|line| puts "* #{line}"}

5.downto(1) {|n| print n, ".. "}
