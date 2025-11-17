# Fetch all usable standard Availability Zones in the current region
data "aws_availability_zones" "available" {

  # Return only zones that are in a healthy/usable state
  state = "available"

  # Filter out Local Zones, Wavelength Zones, etc.
  # Keep only the normal Availability Zones (a, b, c...)
  filter {
    name   = "zone-type"
    values = ["availability-zone"]
  }
}
