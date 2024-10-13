resource "aws_s3_bucket" "example1" {
  bucket = "kaizen-bohdank"

 
}

resource "aws_s3_bucket" "example2" {
  bucket_prefix = "kaizne-"

 
}

# terraform import aws_s3_bucket.example3 kaizen-bucketone
resource "aws_s3_bucket" "example3" {
  bucket = "kaizen-bucketone"

 
}

 # terraform import aws_s3_bucket.example4 kaizen-buckettwo
resource "aws_s3_bucket" "example4" {
  bucket = "kaizen-buckettwo"

 
}

resource "aws_iam_user" "usersHomeworktwo" {
    for_each = toset(["jenny", "rose", "lisa", "jisoo"])
  name = each.value

}

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
  
}

resource "aws_iam_group_membership" "blackpinkMember" {
  name = "testing-group-membership2"
  
  users = [
      for i in aws_iam_user.usersHomeworktwo : i.name 
  ]

  group = aws_iam_group.blackpink.name
    
  
}