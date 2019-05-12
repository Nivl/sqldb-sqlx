workflow "Check code" {
  resolves = [
    "lint",
  ]
  on = "push"
}

action "lint" {
  uses = "cedrickring/golang-action@1.3.0"
  args = "./tools/lint.sh"
  env = {
    GO111MODULE = "on"
    GOFLAGS = "-mod=readonly"
  }
}
