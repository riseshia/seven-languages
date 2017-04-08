s := File with("matrix.txt") openForReading contents
ns := s replaceSeq("[", "list(") replaceSeq("]", ")")
doString(ns) println
