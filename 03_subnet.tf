# 가용영역 a의 public subnet
resource "aws_subnet" "shnam_puba" {
  vpc_id = aws_vpc.shnam_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "shnam-puba"
  }
}

# 가용영역 a의 private subnet
resource "aws_subnet" "shnam_pria" {
  vpc_id = aws_vpc.shnam_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "shnam-pria"
  }
}

# 가용영역 c의 public subnet
resource "aws_subnet" "shnam_pubc" {
  vpc_id = aws_vpc.shnam_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "shnam-pubc"
  }
}

# 가용영역 c의 private subnet
resource "aws_subnet" "shnam_pric" {
  vpc_id = aws_vpc.shnam_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "shnam-pric"
  }
}

# 가용영역 a의 private DB subnet
resource "aws_subnet" "shnam_pridba" {
  vpc_id = aws_vpc.shnam_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "shnam-pridba"
  }
}

# 가용영역 c의 private DB subnet
resource "aws_subnet" "shnam_pridbc" {
  vpc_id = aws_vpc.shnam_vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "shnam-pridbc"
  }
}