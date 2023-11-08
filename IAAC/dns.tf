resource "aws_route53_zone" "primary" {
  name = "staticwebsite.com" #domain name and by default it would be in public hoste zone
}

resource "aws_route53_record" "root" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "staticwebsite.com"
  type    = "A"

  alias {
    name                   = aws_lb.load_balancer.dns_name
    zone_id                = aws_lb.load_balancer.zone_id
    evaluate_target_health = true
  }
}



