storage "raft" {
  path = "/vault/data"
  node_id = "vault3"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable = true
}

api_addr = "http://vault3:8200"
cluster_addr = "http://vault3:8201"
disable_mlock = true
ui = true
