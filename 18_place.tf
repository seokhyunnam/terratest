resource "aws_placement_group" "shnam_place" {
  name     = "shnam-place"
  strategy = "cluster"
}