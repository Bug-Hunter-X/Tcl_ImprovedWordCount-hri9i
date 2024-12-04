proc count_words {text} {
  # Correctly handles multiple spaces between words
  set word_count 0
  foreach word [regexp -all -inline {\S+} $text] {
    incr word_count
  }
  return $word_count
}

puts [count_words "This is a test."]  ;# Output: 4
puts [count_words "This  is  a  test."] ;# Output: 4
puts [count_words {This     is    a     test.}];# Output: 4