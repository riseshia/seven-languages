object TrueRing {
  def rule = println("To rule them all")
}
class TrueRing(owner: String) {
  def giveMe() {
    println("No")
  }
}

TrueRing.rule

val ring = new TrueRing("You")
ring.giveMe
