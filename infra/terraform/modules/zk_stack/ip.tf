# GCP Global IPs
resource "google_compute_global_address" "explorer-app" {
  name = var.explorer_app_ip_name
}

resource "google_compute_global_address" "explorer-api" {
  name = var.explorer_api_ip_name
}

resource "google_compute_global_address" "portal" {
  name = var.portal_ip_name
}

resource "google_compute_global_address" "server" {
  name = var.server_ip_name
}

resource "google_compute_global_address" "grafana" {
  name = var.grafana_ip_name
}

resource "google_compute_global_address" "external-node" {
  name = var.external_node_ip_name
}

resource "google_compute_global_address" "en-grafana" {
  name = var.en_grafana_ip_name
}

data "google_compute_global_address" "explorer-app" {
  name = google_compute_global_address.explorer-app.name

  depends_on = [
    google_compute_global_address.explorer-app
  ]
}

data "google_compute_global_address" "explorer-api" {
  name = google_compute_global_address.explorer-api.name

  depends_on = [
    google_compute_global_address.explorer-api
  ]
}

data "google_compute_global_address" "portal" {
  name = google_compute_global_address.portal.name

  depends_on = [
    google_compute_global_address.portal
  ]
}

data "google_compute_global_address" "server" {
  name = google_compute_global_address.server.name

  depends_on = [
    google_compute_global_address.server
  ]
}

data "google_compute_global_address" "grafana" {
  name = google_compute_global_address.grafana.name

  depends_on = [
    google_compute_global_address.grafana
  ]
}

data "google_compute_global_address" "external-node" {
  name = google_compute_global_address.external-node.name

  depends_on = [
    google_compute_global_address.external-node
  ]
}

data "google_compute_global_address" "en-grafana" {
  name = google_compute_global_address.en-grafana.name

  depends_on = [
    google_compute_global_address.en-grafana
  ]
}
