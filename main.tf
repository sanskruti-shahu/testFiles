# resource "local_file" "example" {
#   content  = "This is an example file."
#   filename = "/testing/example.txt"
# }
variable "example_map" {
  type = map(any)
  default = {
    key1 = "value1b"
    key2 = "value2c"
    key3 = "value3d"
  }
}

variable "example_array" {
  type = list(any)
  default = ["item1", "item2", "item3", "item4"]
}

variable "example_object" {
  type = object({
    attribute_map     = map(any)
    attribute_string1 = string
    attribute_string2 = string
    attribute_int     = number
    attribute_array   = list(object({
      nested_array = list(string)
      nested_map   = map(any)
    }))
  })
  default = {
    attribute_map     = {
      nested_key1 = "nested_value1"
      nested_key2 = "nested_value2"
    }
    attribute_string1 = "Hello"
    attribute_string2 = "World"
    attribute_int     = 42
    attribute_array = [
      {
        nested_array = ["itemA", "itemB"]
        nested_map   = {
          nested_keyA = "nested_valueA"
          nested_keyB = "nested_valueB"
        }
      },
      {
        nested_array = ["itemX", "itemY"]
        nested_map   = {
          nested_keyX = "nested_valueX"
          nested_keyY = "nested_valueY"
        }
      }
    ]
  }
}

variable "example_object_list" {
  type = list(object({
    object_string = string
    object_map    = map(string)
  }))
  default = [
    {
      object_string = "Object 1"
      object_map = {
        key1 = "value1"
        key2 = "value2"
      }
    },
    {
      object_string = "Object 2"
      object_map = {
        keyA = "valueA"
        keyB = "valueB"
      }
    }
  ]
}

variable "example_list_of_lists" {
  type = list(list(string))
  default = [
    ["list1_item1", "list1_item2_mod", "list1_item3"],
    ["list2_item1", "list2_item2", "list2_item3_mod"],
  ]
}

output "output_map" {
  value = var.example_map
}

output "output_array" {
  value = var.example_array
}

output "output_object" {
  value = var.example_object
}
output "output_object_list" {
  value = var.example_object_list
}

output "output_list_of_lists" {
  value = var.example_list_of_lists
}
output "output_string" {
  value = "Hello, this is a string output."
}

output "output_number" {
  value = 42
}
output "sensitive_number" {
  value = 666
  sensitive = true
}

output "output_boolean" {
  value = true
}