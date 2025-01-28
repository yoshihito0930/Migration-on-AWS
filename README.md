## Migration-on-AWS
業務でこれから使用するAWS DMSやSCTを構築するため、セットアップする。

## Terraformコマンド
$ terraform init
Terraformの実行に必要なプラグインをインターネットから取得
実行結果にTerraform has been successfully initialized!と表示されていれば成功。

$ terraform validate
Terraformコードの構文に問題がないことを確認
何も問題が無ければSuccess! The configuration is valid.と出力

$ terraform plan
apply実行時にどんなリソースが作成されるかを確認できる

$ terraform apply
実環境上にリソースを構築します。

$ terraform destroy
構築した環境を削除