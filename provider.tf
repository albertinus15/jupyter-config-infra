provider "google" {
  credentials = file("csclub-168168-7eda9e70fd88.json")
  project    = "csclub-168168"
  region     = "asia-east1"
  zone       = "asia-east1-a"
}