data "tls_certificate" "eks_oidc_tls_cert" {
  url = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}