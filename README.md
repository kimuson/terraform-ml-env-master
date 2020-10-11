# terraform-ml-env overview
This is a terraform for building ML environment, designed for use in kaggle.

It's easy to build a Kaggle learning environment with Terraform.
Specifically, we will build the following environment.
- A VM instance containing all the tools and python libraries required by kaggle
- GCS bucket to store the data set

# How to use
Please proceed as follows.
1. installing Terraform
2. create a google account
3. get free credit (credit registration)
4. download the credentials file
5. DL of the source code and environment setting
6. Create a VM instance and a GCS bucket with Terraform

## 1.Install Terraform
It is recommended to install Terraform using tfenv.
Please install Terraform ver0.12 or later.

[For Mac]
````
$ brew install tfenv
$ tfenv install 0.12.0
$ tfenv install 0.12.0 $ terraform --version
Terraform v0.12.0
````

## 2. create a google account

If you haven't created a google account yet, do so.

## 3. get free credit (register for credit)

Complete your GCP credit card registration to receive your free credit.

## 4. Download the credentials file
Open the GCP console and select Credentials in the API Manager.
Select the service account key from the Create credentials.
Select the Compute Engine default service account as the service account and create the key type as JSON (default).
Copy the downloaded file to the same directory as the Terraform project.

## 5. Download the source code

Please DL this repository.
After DLing it, please edit it according to the comment-out instructions in "terraform-ml-env/variables.tf".
Specifically, let's describe the settings for the following items

- Any bucket name
- Arbitrary credentials file name (matches the file name DLed in 4)
- Project Name.
- Any instance name
- Any machine type
- arbitrary zone
- Size of the boot disk
- Any disk type

## Create a VM instance and a GCS bucket with Terraform

````
$ cd terraform-ml-env
$ terraform init
$ terraform plan
$ terraform apply
````

Now that we have created the VM instance and the GCS bucket, we can use
Set up the environment, such as data set registration, as necessary.

# Supplemental.
## How to delete the environment
Resources created by Terraform can be deleted in bulk with the following commands.

````
$ terraform destroy
````

## About re-creating the environment
The environment can be recreated in the same way by executing the following command.

````
$ terraform apply
````

## Fine-tuning the environment
By changing the contents of terraform-ml-env/variables.tf, the
It allows you to fine-tune the resources you need.

----------------------------------------------

# terraform-ml-envの概要
ML環境を構築するためのterraformです。kaggleでの使用を目的に作成。

Terraformで簡単にKaggleの学習環境を構築することができます。
具体的には以下のような環境を構築します。
- kaggleで必要となるツールやpythonライブラリが入ったVMインスタンス
- データセットを格納するためのGCSバケット

# 使用方法
以下のような流れで作業を進めてください。
1. Terraformのインストール
2. googleアカウントを作成
3. 無料クレジットの取得（クレジット登録）
4. credentialsファイルのダウンロード
5. ソースコードのDLと環境設定
6. TerraformでVMインスタンスとGCSバケットを作成

## 1.Terraformのインストール
tfenvを用いてTerraformをインストールすることをオススメします。
ver0.12以上のTerraformをインストールしてください。

[Macの場合]
```
$ brew install tfenv
$ tfenv install 0.12.0
$ terraform --version
Terraform v0.12.0
```
## 2. googleアカウントを作成

googleアカウントをまだ作成していない方は作成しましょう。

## 3. 無料クレジットの取得（クレジット登録）

GCPのクレジットカード登録を完了して無料クレジットを受け取ってください。

## 4. credentialsファイルのダウンロード
1. GCPのコンソールを開き、API ManagerのCredentialsを選択する。
2. Create credentialsからService account keyを選択。
3. Service accountとしてCompute Engine default service accountを選択、Key typeはJSON（デフォルト）として、Create。
4. ダウンロードしたファイルをTerraformのプロジェクトと同じディレクトリにコピー。

## 5. ソースコードのDL

本リポジトリをDLしてください。
DL後、「terraform-ml-env/variables.tf」のコメントアウトの説明を参考に編集してください。
具体的には以下の項目についての設定を記載しましょう。

- 任意のバケット名
- 任意のcredentialsファイル名（4でDLしたファイル名に合わせる）
- プロジェクト名
- 任意のインスタンス名
- 任意のマシンタイプ
- 任意のゾーン
- ブートディスクのサイズ
- 任意のディスクタイプ


## 6. TerraformでVMインスタンスとGCSバケットを作成

```
$ cd terraform-ml-env
$ terraform init
$ terraform plan
$ terraform apply
```

これでVMインスタンスとGCSバケットが作成されていますので、
必要に応じてデータセットの登録などの環境設定をしてください。

# 補足
## 環境の削除方法
Terraformによって作成したリソースは以下のコマンドで一括削除することができます。

```
$ terraform destroy
```

## 環境の再作成について
同じように以下のコマンドを実行することで環境の再作成が可能です。

```
$ terraform apply
```

## 環境の微調整について
terraform-ml-env/variables.tfの内容を変更することにより
必要なリソースの微調整を行うことが可能です。