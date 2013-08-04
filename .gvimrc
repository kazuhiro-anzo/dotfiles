if has('gui_macvim')
    " 透明度
    set transparency=4
    " タブ表示
    set showtabline=2
    " カラム数
    set columns=110
    " 行数
    set lines=34
    " GUIメニュー非表示
    set guioptions-=T
    " 選択範囲のコピー
    set guioptions+=a
    " IM制御
    "set imdisable
    " 入力モードでIMを自動ON
    "set iminsert
    " モード切替でIMを自動ON/OFF
    set noimdisableactivate
    " ビープ音
    set visualbell t_vb=
    " 行番号
    set number
    " バックアップ
    set nobackup

    " 行間
    "set linespace=2
    set linespace=2 "SorceCodePro
    " フォント
    "set guifont=Menlo-Regular:h14
    "set guifont=Osaka-Mono:h15
    "set guifont=Consolas:h14
    set guifont=Source\ Code\ Pro:h14
    "set guifont=Osaka-Mono:h15
    set guifontwide=ヒラギノ丸ゴ\ ProN\ W4:h12
endif
