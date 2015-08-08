
#initalize vowel_array
vowel_array =['a','e','i','o','u']


#read filename
def read_file_as_string(filename)
  data = ''
  f = File.open(filename,"r")
  f.each_line do |line|
    data += line
  end
    clean_text(data)
end 

#strip whitespaces,lowercase and remove punctuation
def clean_text(datacontent)
  puts datacontent.gsub(/[^a-z0-9]/i, "").downcase
end

  read_file_as_string 'ch5.txt'