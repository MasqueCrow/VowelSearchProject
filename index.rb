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
  sum_of_vowels = 0
  datacontent.each_char do |i|   
    vowel_list.each_key do |a|
      if i == a
        sum_of_vowels += 1
        vowel_list[i] += 1 
      end
    end
  end
  return vowel_list,sum_of_vowels
end

def report_vowels(vowel_count)
  puts "Sum of each vowel:
  a:#{vowel_count[0]['a']},
  e:#{vowel_count[0]['e']},
  i:#{vowel_count[0]['i']},
  o:#{vowel_count[0]['o']},
  u:#{vowel_count[0]['u']},"
  puts "Total vowels:#{vowel_count[1]}"
end

  textfile = read_file_as_string 'ch5.txt'
  newtextfile = clean_text(textfile)
  vowels_count=count_vowels(newtextfile)
  report_vowels(vowels_count)