proc count_words {text} {
  # Incorrectly handles multiple spaces between words
  set word_count 0
  foreach word [split $text " "] {
    if {$word ne {}} {
      incr word_count
    }
  }
  return $word_count
}

puts [count_words "This is a test."]  ;# Output: 4 (correct)
puts [count_words "This  is  a  test."] ;# Output: 4 (incorrect, should be 4)
puts [count_words {This     is    a     test.}];# Output: 4 (incorrect, should be 4)