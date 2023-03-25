module "vpc" {
  source   = "../../modules/VPC"
  vpc_cidr = var.vpc_cidr

}


module "subnets" {
  source   = "../../modules/subnets"
  OAPACPUJPpubsub1_cidr = var.OAPACPUJPpubsub1_cidr
  OAPACPUJPpubsub2_cidr = var.OAPACPUJPpubsub2_cidr
  OAPACPUJPprvsub1_cidr = var.OAPACPUJPprvsub1_cidr
  OAPACPUJPprvsub2_cidr = var.OAPACPUJPprvsub2_cidr
  all_ip             = var.all_ip
  vpc_id   = module.vpc.vpc_id
  
}