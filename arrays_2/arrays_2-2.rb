words = ["one", "two", "three", "four", "five"]
words.delete("two")
words.delete("four")
p words.collect(&:capitalize)
