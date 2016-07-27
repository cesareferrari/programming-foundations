statement = "The Flintstones Rock!"
puts statement.count('t')

statement.scan('t').count # scan returns ["t", "t"]
