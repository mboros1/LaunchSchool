words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#words.keep_if {|s| s.chars.sort == 'demo'.chars.sort }

annograms = []

words.each {
    |s|
    p s
    annogram = words.select {|w| s.chars.sort == w.chars.sort}
    p annogram
    if !annograms.include?(annogram)
        annograms.push(annogram)
    end
}

p annograms