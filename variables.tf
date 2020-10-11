# ---------------------------------
# common
# ---------------------------------
variable "region" {
  default = "asia-northeast1"
}

# ---------------------------------
# variable
# ---------------------------------

# 任意のバケット名を入力してください
variable "bucket" {
  default = "Write the name of the bucket."
}

# 任意のcredentialsを入力してください
variable "credentials" {
  default = "Write the credentials"
}

# プロジェクト名を入力してください
variable "project" {
  default  = "Please enter a project name"
}

# 任意のインスタンス名を入力してください
variable "instance_name" {
  default  = "ml-env"
}

# 任意のマシンタイプを入力してください
# -------------------------------------------   
# n1-standard-1  vCPU:1	 メモリ（GB）:3.75
# n1-standard-2	 vCPU:2	 メモリ（GB）:7.50
# n1-standard-4	 vCPU:4	 メモリ（GB）:15	 
# n1-standard-8	 vCPU:8	 メモリ（GB）:30	 
# n1-standard-16 vCPU:16 メモリ（GB）:60  
# n1-standard-32 vCPU:32 メモリ（GB）:120
# n1-standard-64 vCPU:64 メモリ（GB）:240
# n1-standard-96 vCPU:96 メモリ（GB）:360
# -------------------------------------------
variable "machine_type" {
  default = "n1-standard-8"
}

# 任意のゾーンを入力してください
variable "zone" {
  default = "asia-northeast1-a"
}

# ブートディスクのサイズを入力してください
variable "size" {
  default = 100
}

# 任意のディスクタイプを入力してください
variable "type" {
  default = "pd-standard"
}

variable "docker_declaration" {
  default = "spec:\n  containers:\n    - name: kaggle-docker\n      image: 'docker.io/happidoc/ml-env-for-kaggle:latest'\n      stdin: false\n      tty: false\n      ports:\n      - containerPort: 8888\n        hostPort: 8888\n  restartPolicy: Always"
}

variable "boot_image_name" {
  default = "projects/cos-cloud/global/images/cos-stable-75-12105-97-0"
}
