target "tpcreco-base" {
  dockerfile = "./docker/TFNoGet.dockerfile"
  target = "base_root"
  tags = ["tcprepo/tpcreco-base:latest"]
}

target "tpcreco-build" {
  dockerfile = "./docker/TFNoGet.dockerfile"

  contexts = {
    tpcreco-base = "target:tpcreco-base"
  }

  target = "tpcreco-build"
  tags = ["tcprepo/tpcreco-build:latest"]
}

target "clangd-server" {
  dockerfile = "./docker/TFNoGet.dockerfile"
  context = "."

  contexts = {
    tpcreco-base = "target:tpcreco-base"
  }

  target = "clangd-server"
  tags = ["tcprepo/clangd-server:latest"]
}
