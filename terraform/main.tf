resource "local_file" "iot_config" {
  filename = "${path.module}/iot_config.env"
  content  = "MQTT_PORT=1883\nGATEWAY=iot-gateway\nVERSION=v6.0.0\n"
}
