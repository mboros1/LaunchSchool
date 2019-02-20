words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#words.keep_if {|s| s.chars.sort == 'demo'.chars.sort }

annograms = {}

words.each {
    |word|
    s = word.chars.sort
    if annograms.has_key?(s)
        annograms[s].push(word)
    else
        annograms[s] = [word]
    end
}

p annograms.values