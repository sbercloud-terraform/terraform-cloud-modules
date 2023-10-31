# Create SFS
resource "sbercloud_sfs_file_system" "this" {
  name              = var.name
  description       = var.description
  size              = var.size
  access_to         = var.access_to
  access_level      = var.access_level
  access_type       = var.access_level
  share_proto       = var.share_proto
  availability_zone = var.availability_zone
  is_public         = var.is_public
}
