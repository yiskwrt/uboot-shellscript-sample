# apply Device Tree Patch with Flattened Device Tree (FDT) command family

## やること

SDカードのルートに置かれたDevice Tree blob (dtb)をロードして、隣に置かれたdtboでパッチする。

## ポイント

* Device Treeの操作はfdtコマンドを使う
* patchされるDevice Treeはsymbolつきでビルドする必要がある。dtc のオプションに"-@"をつける。
* fdt addrで処理対象のDevice Treeを指定する
* 慣習として変数fdt_addrにDevice Treeを格納したアドレスが入る
* fdt resizeで受け側の領域を拡張してから、fdt applyを使用する
  * 慣習としてloadコマンドで取り込んだファイルサイズは変数filesizeに保存される。これで、fdt resizeで増やすべきサイズが分かる。
* 注意: fdt applyコマンドが失敗した場合、対象となったDevice Treeは失われる。もう一度ロードしなおさないといけない。