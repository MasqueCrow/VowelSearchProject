#read filename
def read_file_as_string(filename)
  data = ''
  f = File.open(filename,"r")
  f.each_line do |line|
    data += line
  end
    return data
end 

#strip whitespaces,lowercase and remove punctuation
def clean_text(datacontent)
  return datacontent.gsub(/[^a-z0-9]/i, "").downcase
end

#Search and count vowels in textfile
def count_vowels(datacontent)
  #initalize vowel_array
  vowel_list ={'a'=>0, 'e'=>0, 'i'=>0, 'o'=> 0, 'u'=>0}
  datacontent.each_char do |i|   
    vowel_list.each_key do |a|
      if i == a
        vowel_list[i] += 1 
      #  puts i
      end
     #puts a
    end
  end
    puts vowel_list['u']
end



  textfile = read_file_as_string 'ch5.txt'
  newtextfile = clean_text(textfile)
  #puts newtextfile
  count_vowels(newtextfile)
