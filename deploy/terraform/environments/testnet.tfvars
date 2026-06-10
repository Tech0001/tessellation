environment = "testnet"

# Location: Helsinki (Hetzner places servers within the location's datacenters).
location = "hel1"

# Server types (bigger than nightly — ~18 GB heap per source node)
node_server_type       = "cpx62" # 16 vCPU / 32 GB (new-gen; available in hel1)
streaming_server_type  = "cpx52" # 12 vCPU / 24 GB (room for 16 GB heap + Postgres)
monitoring_server_type = "cpx42" # 8 vCPU / 16 GB

# Per-node state volume (~300+ GB live state, growing)
data_volume_size = 400

# Source nodes
node_count = 3

# Access control — REPLACE the placeholders below with real team/VPN CIDRs.
# Leaving 0.0.0.0/0 exposes SSH, the GL0/GL1 CLI ports, and Grafana to the world.
allowed_ssh_cidrs = ["0.0.0.0/0", "::/0"]
admin_cidrs       = ["0.0.0.0/0", "::/0"] # REPLACE with admin/office CIDRs; do not commit real IPs

# SSH keys — set via CLI (-var) or a secrets-managed *.auto.tfvars, not here.
# deploy_ssh_public_key = "ssh-ed25519 AAAA..."
# team_ssh_keys         = ["ssh-ed25519 AAAA...", "ssh-ed25519 BBBB..."]
