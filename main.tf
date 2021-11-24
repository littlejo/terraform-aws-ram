resource "aws_ram_resource_share" "this" {
  name                      = var.name
  allow_external_principals = var.allow_external_principals

  tags = var.tags
}

resource "aws_ram_resource_association" "this" {
  for_each           = var.resource_arns
  resource_arn       = each.key
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_principal_association" "this" {
  principal          = var.principal
  resource_share_arn = aws_ram_resource_share.this.arn
}
