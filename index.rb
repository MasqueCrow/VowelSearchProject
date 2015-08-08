def read_file_as_string(filename)
  data = ''
  f = File.open(filename,"r")
  f.each_line do |line|
    data += line
  end
    puts data
end 

  read_file_as_string 'ch5.txt'
