# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "runners_node_types" {
    description = "Node type for the runners"
    type        = list(string)
    default     = [
      "t4g",
      "m7g",
      "m6g",
    ]
}

variable "x64_runners_node_types" {
  description = "X64 node type for the runners"
  type        = list(string)
  default     = [
    "m7a",
    "m6a",
    "t3",
    "t3a",
  ]
}

variable "small_runners_node_size" {
    description = "Node size for the small runners"
    type        = string
    default     = "medium"
}

variable "small_runners_x64_node_size" {
  # This is a separate variable because the r series doesn't have a medium size
  description = "Node size for the small runners"
  type        = string
  default     = "large"
}

variable "medium_runners_node_size" {
    description = "Node size for the medium runners"
    type        = string
    default     = "xlarge"
}

variable "large_runners_node_size" {
    description = "Node size for the large runners"
    type        = string
    default     = "2xlarge"
}