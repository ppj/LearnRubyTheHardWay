module Ex25
  def break_words(stuff)
    words = stuff.split(' ')
    words
  end

  def sort_words(words)
    words.sort()
  end

  def print_first_word(words)
    word = words.shift()
    puts word
  end

  def print_last_word(words)
    word = words.pop()
    puts word
  end

  def sort_sentence(sentence)
    words = break_words(sentence)
    sort_words(words)
  end

  def print_first_and_last_word_in(sentence)
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def print_first_and_last_word_in_sorted(sentence)
    sorted_words = sort_sentence(sentence)
    print_first_word(sorted_words)
    print_last_word(sorted_words)
  end

  extend self

end

