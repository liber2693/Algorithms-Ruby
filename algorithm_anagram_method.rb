# given a word, check if it is an anagram of an arrangement of words and 
indicate which word it is.

def anagrams(word, words)
    arreglo_palabras = []
    words.each do |palabra|
        if word.downcase.chars.sort.join === palabra.downcase.chars.sort.join
            arreglo_palabras << palabra
        end
    end
    return arreglo_palabras
end

p anagrams('abba', ['aabb', 'bbaa', 'abcd', 'dcba'])
p anagrams('quieren', ['enrique', 'enriqee', 'quieres'])