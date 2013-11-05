.class public Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;
.super Lcom/android/mail/ui/FolderDisplayer;
.source "WidgetConversationListItemViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WidgetFolderDisplayer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderDisplayer;-><init>(Landroid/content/Context;)V

    .line 60
    #p0=(Reference);
    return-void
.end method

.method private static getFolderViewId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 83
    const/4 v0, 0x0

    :goto_0
    #v0=(Integer);
    return v0

    .line 77
    :pswitch_0
    #v0=(Uninit);
    const v0, 0x7f080159

    #v0=(Integer);
    goto :goto_0

    .line 79
    :pswitch_1
    #v0=(Uninit);
    const v0, 0x7f08015a

    #v0=(Integer);
    goto :goto_0

    .line 81
    :pswitch_2
    #v0=(Uninit);
    const v0, 0x7f08015b

    #v0=(Integer);
    goto :goto_0

    .line 75
    #v0=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public displayFolders(Landroid/widget/RemoteViews;)V
    .locals 11
    .parameter "remoteViews"

    .prologue
    const/4 v10, 0x3

    #v10=(PosByte);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x1

    .line 90
    #v8=(One);
    const/4 v2, 0x0

    .line 91
    .local v2, displayedFolder:I
    #v2=(Null);
    iget-object v7, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/providers/Folder;

    .line 92
    .local v3, folderValues:Lcom/android/mail/providers/Folder;
    invoke-static {v2}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;->getFolderViewId(I)I

    move-result v6

    .line 93
    .local v6, viewId:I
    #v6=(Integer);
    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {p1, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    new-array v1, v8, [I

    #v1=(Reference);
    iget v7, p0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultBgColor:I

    #v7=(Integer);
    invoke-virtual {v3, v7}, Lcom/android/mail/providers/Folder;->getBackgroundColor(I)I

    move-result v7

    aput v7, v1, v9

    .line 98
    .local v1, color:[I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #v7=(Reference);
    invoke-static {v1, v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, bitmap:Landroid/graphics/Bitmap;
    #v0=(Reference);
    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_0

    .line 106
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #color:[I
    .end local v3           #folderValues:Lcom/android/mail/providers/Folder;
    .end local v6           #viewId:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move v4, v2

    .local v4, i:I
    :goto_0
    #v4=(Integer);v8=(PosByte);
    if-ge v4, v10, :cond_2

    .line 107
    invoke-static {v4}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;->getFolderViewId(I)I

    move-result v7

    #v7=(Integer);
    const/16 v8, 0x8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    :cond_2
    #v7=(Conflicted);
    return-void
.end method

.method public loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V
    .locals 0
    .parameter "conv"
    .parameter "ignoreFolderUri"
    .parameter "ignoreFolderType"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/FolderDisplayer;->loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V

    .line 72
    return-void
.end method
