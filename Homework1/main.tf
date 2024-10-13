resource "aws_iam_user" "usersOne" {
    for_each = toset(["jenny", "rose", "lisa", "jisoo", "miyeon"])
  name = each.value

}

resource "aws_iam_user" "usersTwo" {
    for_each = toset(["jihyo", "sana", "momo", "dahyun", "mina"])
  name = each.value

}

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
  
}

resource "aws_iam_group" "twice" {
  name = "twice"
  
}

resource "aws_iam_group_membership" "blackpinkMember" {
  name = "testing-group-membership1"
  
  users = [
      for i in aws_iam_user.usersOne : i.name 
  ]

  group = aws_iam_group.blackpink.name
    
  
}



resource "aws_iam_group_membership" "twiceGroup" {
  name = "testing-group-membership2"
  
  users = [
      for i in aws_iam_user.usersTwo : i.name 
  ]

  group = aws_iam_group.twice.name
    
  
}



#terraform import aws_iam_user.user1 mina
# resource "aws_iam_user" "user1" {
#   name = "miyeon"
   
# }

#terraform import aws_iam_user.user2 mina
# resource "aws_iam_user" "user2" {
#   name = "mina"
   
# }