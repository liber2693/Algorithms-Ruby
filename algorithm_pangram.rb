# Given a text, check if it is a panagram (it has at least once, 
# all the letters of the alphabet)

def pangram_function?(paragraph)
  paragraph_final = paragraph.gsub(/\s+/, '').gsub('.', '').gsub(',', '').gsub('á', 'a').gsub('é', 'e').gsub('í', 'i').gsub('ó', 'o').gsub('ú', 'u').gsub('ü', 'u').downcase.split("")
  abecedario = 'a'..'z'
  abecedario.all? {|l| paragraph_final.include? l }
end

p pangram_function?("Benjamín pidió una bebida de kiwi y fresa. Noé, sin vergüenza, la más exquisita champaña del menú.")