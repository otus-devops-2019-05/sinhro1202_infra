resource "google_compute_firewall" "firewall_ssh" {
  name = "default-allow-ssh"

  network = "default"

  allow {
    protocol = "tcp"

    ports = ["22", "80", "9292"]
  }

  source_ranges = "${var.source_ranges}"
}
