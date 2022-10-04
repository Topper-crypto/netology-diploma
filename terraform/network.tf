# Создание сети
resource "yandex_vpc_network" "diplom" {
  name = "network"
}

# Создаем правило маршрутизации - все потоки на int_ip
resource "yandex_vpc_route_table" "nat-int" {
  network_id = "${yandex_vpc_network.diplom.id}"

  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = var.int_ip
  }
}

# Создание подсетей в разных зонах доступности
resource "yandex_vpc_subnet" "subnet-1" {
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.diplom.id}"
  route_table_id = "${yandex_vpc_route_table.nat-int.id}"
  v4_cidr_blocks = ["192.168.101.0/24"]
}

resource "yandex_vpc_subnet" "subnet-2" {
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.diplom.id}"
  route_table_id = "${yandex_vpc_route_table.nat-int.id}"
  v4_cidr_blocks = ["192.168.102.0/24"]
}
