.class public Lcom/android/mail/browse/WebViewContextMenu;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/WebViewContextMenu$1;,
        Lcom/android/mail/browse/WebViewContextMenu$Share;,
        Lcom/android/mail/browse/WebViewContextMenu$Copy;,
        Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;,
        Lcom/android/mail/browse/WebViewContextMenu$MenuType;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mSupportsDial:Z

.field private final mSupportsSms:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .parameter "host"

    .prologue
    const/high16 v6, 0x1

    #v6=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 82
    #v3=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    .line 88
    iget-object v1, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 89
    .local v0, pm:Landroid/content/pm/PackageManager;
    #v0=(Reference);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v4, "android.intent.action.DIAL"

    #v4=(Reference);
    const-string v5, "tel:"

    #v5=(Reference);
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v1=(Reference);
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mail/browse/WebViewContextMenu;->mSupportsDial:Z

    .line 92
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v1=(Reference);
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    :goto_1
    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/mail/browse/WebViewContextMenu;->mSupportsSms:Z

    .line 96
    return-void

    :cond_0
    #v2=(One);
    move v1, v3

    .line 89
    #v1=(Null);
    goto :goto_0

    :cond_1
    #v1=(Boolean);
    move v2, v3

    .line 92
    #v2=(Null);
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/mail/browse/WebViewContextMenu;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/mail/browse/WebViewContextMenu;->shareLink(Ljava/lang/String;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    #v1=(Reference);
    const-string v2, "clipboard"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/ClipboardManager;

    .line 152
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 153
    return-void
.end method

.method private shareLink(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.SEND"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, send:Landroid/content/Intent;
    #v0=(Reference);
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    #v2=(Reference);
    sget-object v3, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/mail/browse/WebViewContextMenu;->getChooserTitleStringResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showShareLinkMenuItem()Z
    .locals 4

    .prologue
    .line 129
    iget-object v3, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    .local v0, pm:Landroid/content/pm/PackageManager;
    #v0=(Reference);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, send:Landroid/content/Intent;
    #v2=(Reference);
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v3, 0x1

    #v3=(Integer);
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 133
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    #v1=(Reference);
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    #v3=(Boolean);
    return v3

    :cond_0
    #v3=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method


# virtual methods
.method protected getChooserTitleStringResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I
    .locals 2
    .parameter "menuType"

    .prologue
    .line 391
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "Unexpected MenuType"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 393
    :pswitch_0
    #v0=(Integer);v1=(Integer);
    const v0, 0x7f0a0085

    return v0

    .line 391
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected getMenuGroupResId(Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;)I
    .locals 2
    .parameter "menuGroupType"

    .prologue
    .line 405
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 415
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "Unexpected MenuGroupType"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 407
    :pswitch_0
    #v0=(Integer);v1=(Integer);
    const v0, 0x7f080191

    .line 413
    :goto_0
    return v0

    .line 409
    :pswitch_1
    const v0, 0x7f080196

    goto :goto_0

    .line 411
    :pswitch_2
    const v0, 0x7f080198

    goto :goto_0

    .line 413
    :pswitch_3
    const v0, 0x7f08019b

    goto :goto_0

    .line 405
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I
    .locals 2
    .parameter "menuType"

    .prologue
    .line 357
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "Unexpected MenuType"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 359
    :pswitch_0
    #v0=(Integer);v1=(Integer);
    const v0, 0x7f08019c

    .line 379
    :goto_0
    return v0

    .line 361
    :pswitch_1
    const v0, 0x7f08019d

    goto :goto_0

    .line 363
    :pswitch_2
    const v0, 0x7f08019e

    goto :goto_0

    .line 365
    :pswitch_3
    const v0, 0x7f080192

    goto :goto_0

    .line 367
    :pswitch_4
    const v0, 0x7f080193

    goto :goto_0

    .line 369
    :pswitch_5
    const v0, 0x7f080194

    goto :goto_0

    .line 371
    :pswitch_6
    const v0, 0x7f080195

    goto :goto_0

    .line 373
    :pswitch_7
    const v0, 0x7f080197

    goto :goto_0

    .line 375
    :pswitch_8
    const v0, 0x7f080182

    goto :goto_0

    .line 377
    :pswitch_9
    const v0, 0x7f080199

    goto :goto_0

    .line 379
    :pswitch_a
    const v0, 0x7f08019a

    goto :goto_0

    .line 357
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected getMenuResourceId()I
    .locals 1

    .prologue
    .line 423
    const v0, 0x7f110010

    #v0=(Integer);
    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 24
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    .line 160
    move-object/from16 v18, p2

    #v18=(Reference);
    check-cast v18, Landroid/webkit/WebView;

    .line 161
    .local v18, webview:Landroid/webkit/WebView;
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v14

    .line 162
    .local v14, result:Landroid/webkit/WebView$HitTestResult;
    #v14=(Reference);
    if-nez v14, :cond_0

    .line 311
    :goto_0
    :sswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    return-void

    .line 166
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);
    invoke-virtual {v14}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v16

    .line 167
    .local v16, type:I
    #v16=(Integer);
    sparse-switch v16, :sswitch_data_0

    .line 178
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    .line 181
    .local v11, inflater:Landroid/view/MenuInflater;
    #v11=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResourceId()I

    move-result v19

    #v19=(Integer);
    move/from16 v0, v19

    #v0=(Integer);
    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v11, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    #v0=(Conflicted);v9=(Integer);v12=(Conflicted);
    invoke-interface/range {p1 .. p1}, Landroid/view/ContextMenu;->size()I

    move-result v19

    move/from16 v0, v19

    #v0=(Integer);
    if-ge v9, v0, :cond_1

    .line 186
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-interface {v0, v9}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 187
    .local v12, menuItem:Landroid/view/MenuItem;
    #v12=(Reference);
    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 185
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 192
    .end local v12           #menuItem:Landroid/view/MenuItem;
    :cond_1
    #v0=(Integer);v12=(Conflicted);
    invoke-virtual {v14}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, extra:Ljava/lang/String;
    #v7=(Reference);
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v19=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    #v20=(Integer);
    const/16 v19, 0x2

    #v19=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_2
    #v19=(Boolean);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Integer);
    move/from16 v2, v19

    #v2=(Boolean);
    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 195
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v19=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x4

    #v19=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_3
    #v19=(Boolean);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Integer);
    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 197
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v19=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x3

    #v19=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_4
    #v19=(Boolean);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Integer);
    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 199
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v19=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x7

    #v19=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    const/16 v19, 0x8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v19, 0x1

    :goto_5
    #v19=(Boolean);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Integer);
    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 204
    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 208
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 215
    .local v5, decodedPhoneExtra:Ljava/lang/String;
    :goto_6
    #v5=(Reference);v10=(Conflicted);v19=(Conflicted);
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 217
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v19=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 220
    .local v6, dialMenuItem:Landroid/view/MenuItem;
    #v6=(Reference);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/browse/WebViewContextMenu;->mSupportsDial:Z

    #v0=(Boolean);
    move/from16 v19, v0

    #v19=(Boolean);
    if-eqz v19, :cond_7

    .line 222
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 223
    new-instance v19, Landroid/content/Intent;

    #v19=(UninitRef);
    const-string v20, "android.intent.action.DIAL"

    #v20=(Reference);
    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "tel:"

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    #v0=(Reference);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v19=(Reference);
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 230
    :goto_7
    #v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 232
    .local v15, sendSmsMenuItem:Landroid/view/MenuItem;
    #v15=(Reference);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/browse/WebViewContextMenu;->mSupportsSms:Z

    #v0=(Boolean);
    move/from16 v19, v0

    #v19=(Boolean);
    if-eqz v19, :cond_8

    .line 234
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 235
    new-instance v19, Landroid/content/Intent;

    #v19=(UninitRef);
    const-string v20, "android.intent.action.SENDTO"

    #v20=(Reference);
    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "smsto:"

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    #v0=(Reference);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v19=(Reference);
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 242
    :goto_8
    #v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef);
    const-string v19, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, addIntent:Landroid/content/Intent;
    #v3=(Reference);
    const-string v19, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v19, "phone"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 249
    .local v4, addToContactsMenuItem:Landroid/view/MenuItem;
    #v4=(Reference);
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 250
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 253
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v19=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    new-instance v20, Lcom/android/mail/browse/WebViewContextMenu$Copy;

    #v20=(UninitRef);
    move-object/from16 v0, v20

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1, v7}, Lcom/android/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    #v0=(Reference);v20=(Reference);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 193
    .end local v3           #addIntent:Landroid/content/Intent;
    .end local v4           #addToContactsMenuItem:Landroid/view/MenuItem;
    .end local v5           #decodedPhoneExtra:Ljava/lang/String;
    .end local v6           #dialMenuItem:Landroid/view/MenuItem;
    .end local v15           #sendSmsMenuItem:Landroid/view/MenuItem;
    :cond_3
    #v0=(Integer);v1=(PosByte);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v10=(Uninit);v15=(Uninit);v19=(PosByte);v20=(Integer);v21=(Uninit);v22=(Uninit);
    const/16 v19, 0x0

    #v19=(Null);
    goto/16 :goto_2

    .line 195
    :cond_4
    #v2=(Boolean);v19=(PosByte);
    const/16 v19, 0x0

    #v19=(Null);
    goto/16 :goto_3

    .line 197
    :cond_5
    #v19=(PosByte);
    const/16 v19, 0x0

    #v19=(Null);
    goto/16 :goto_4

    .line 199
    :cond_6
    #v19=(PosByte);
    const/16 v19, 0x0

    #v19=(Null);
    goto/16 :goto_5

    .line 210
    :catch_0
    #v0=(Reference);v1=(Integer);v19=(Conflicted);
    move-exception v10

    .line 212
    .local v10, ignore:Ljava/io/UnsupportedEncodingException;
    #v10=(Reference);
    move-object v5, v7

    .restart local v5       #decodedPhoneExtra:Ljava/lang/String;
    #v5=(Reference);
    goto/16 :goto_6

    .line 226
    .end local v10           #ignore:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #dialMenuItem:Landroid/view/MenuItem;
    :cond_7
    #v0=(Boolean);v6=(Reference);v10=(Conflicted);v19=(Boolean);
    const/16 v19, 0x0

    #v19=(Null);
    move/from16 v0, v19

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 238
    .restart local v15       #sendSmsMenuItem:Landroid/view/MenuItem;
    :cond_8
    #v0=(Boolean);v15=(Reference);v19=(Boolean);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    const/16 v19, 0x0

    #v19=(Null);
    move/from16 v0, v19

    #v0=(Null);
    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 258
    .end local v5           #decodedPhoneExtra:Ljava/lang/String;
    .end local v6           #dialMenuItem:Landroid/view/MenuItem;
    .end local v15           #sendSmsMenuItem:Landroid/view/MenuItem;
    :pswitch_2
    #v0=(Reference);v5=(Uninit);v6=(Uninit);v10=(Uninit);v15=(Uninit);v19=(Boolean);v20=(Integer);v21=(Uninit);v22=(Uninit);
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 259
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v19=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    new-instance v20, Landroid/content/Intent;

    #v20=(UninitRef);
    const-string v21, "android.intent.action.VIEW"

    #v21=(Reference);
    new-instance v22, Ljava/lang/StringBuilder;

    #v22=(UninitRef);
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #v22=(Reference);
    const-string v23, "mailto:"

    #v23=(Reference);
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 262
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    new-instance v20, Lcom/android/mail/browse/WebViewContextMenu$Copy;

    #v20=(UninitRef);
    move-object/from16 v0, v20

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1, v7}, Lcom/android/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    #v0=(Reference);v20=(Reference);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 267
    :pswitch_3
    #v1=(Integer);v19=(Boolean);v20=(Integer);v21=(Uninit);v22=(Uninit);v23=(Uninit);
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 268
    const-string v8, ""

    .line 270
    .local v8, geoExtra:Ljava/lang/String;
    :try_start_1
    #v8=(Reference);
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 275
    :goto_9
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 278
    .local v17, viewMapMenuItem:Landroid/view/MenuItem;
    #v17=(Reference);
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #v1=(Null);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 279
    new-instance v19, Landroid/content/Intent;

    #v19=(UninitRef);
    const-string v20, "android.intent.action.VIEW"

    #v20=(Reference);
    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "geo:0,0?q="

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v19=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 281
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    new-instance v20, Lcom/android/mail/browse/WebViewContextMenu$Copy;

    #v20=(UninitRef);
    move-object/from16 v0, v20

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1, v7}, Lcom/android/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    #v0=(Reference);v20=(Reference);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 287
    .end local v8           #geoExtra:Ljava/lang/String;
    .end local v17           #viewMapMenuItem:Landroid/view/MenuItem;
    :pswitch_4
    #v1=(Integer);v8=(Uninit);v17=(Uninit);v19=(Boolean);v20=(Integer);v21=(Uninit);v22=(Uninit);
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v19=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    invoke-direct/range {p0 .. p0}, Lcom/android/mail/browse/WebViewContextMenu;->showShareLinkMenuItem()Z

    move-result v20

    #v20=(Boolean);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 296
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    new-instance v20, Lcom/android/mail/browse/WebViewContextMenu$Copy;

    #v20=(UninitRef);
    move-object/from16 v0, v20

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1, v7}, Lcom/android/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    #v0=(Reference);v20=(Reference);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 299
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 302
    .local v13, openLinkMenuItem:Landroid/view/MenuItem;
    #v13=(Reference);
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 303
    new-instance v19, Landroid/content/Intent;

    #v19=(UninitRef);
    const-string v20, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    #v21=(Reference);
    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v19=(Reference);
    move-object/from16 v0, v19

    #v0=(Reference);
    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 305
    sget-object v19, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    #v19=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v19

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    #v19=(Reference);
    new-instance v20, Lcom/android/mail/browse/WebViewContextMenu$Share;

    #v20=(UninitRef);
    move-object/from16 v0, v20

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1, v7}, Lcom/android/mail/browse/WebViewContextMenu$Share;-><init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    #v0=(Reference);v20=(Reference);
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 272
    .end local v13           #openLinkMenuItem:Landroid/view/MenuItem;
    .restart local v8       #geoExtra:Ljava/lang/String;
    :catch_1
    #v1=(Integer);v8=(Reference);v13=(Uninit);v19=(Conflicted);v20=(Integer);v21=(Uninit);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_9

    .line 167
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);v22=(Unknown);v23=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 204
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/WebViewContextMenu;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
