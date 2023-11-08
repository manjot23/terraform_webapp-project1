resource "aws_default_vpc" "default"{
    tags={
        name="testvpc"
}
}