.class Lcom/android/mail/ui/NestedFolderTeaserView$3;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/NestedFolderTeaserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/android/mail/content/ObjectCursorLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$1000(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    sget-object v4, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    #v4=(Reference);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    .line 532
    .local v0, loader:Lcom/android/mail/content/ObjectCursorLoader;,"Lcom/android/mail/content/ObjectCursorLoader<Lcom/android/mail/providers/Folder;>;"
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$1100(Lcom/android/mail/ui/NestedFolderTeaserView;)I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/content/ObjectCursorLoader;->setUpdateThrottle(J)V

    .line 533
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    const/4 v10, 0x1

    .line 461
    #v10=(One);
    if-eqz p2, :cond_8

    .line 463
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v8

    #v8=(Integer);
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v7, oldFolderIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    #v7=(Reference);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v3=(Integer);v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v8

    #v8=(Integer);
    if-ge v3, v8, :cond_0

    .line 465
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_0
    #v8=(Integer);
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_4

    .line 470
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 471
    .local v0, folder:Lcom/android/mail/providers/Folder;
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    iget v9, v0, Lcom/android/mail/providers/Folder;->id:I

    #v9=(Integer);
    invoke-virtual {v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 473
    .local v2, holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    if-eqz v2, :cond_5

    .line 474
    invoke-virtual {v2}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v6

    .line 475
    .local v6, oldFolder:Lcom/android/mail/providers/Folder;
    #v6=(Reference);
    invoke-virtual {v2, v0}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->setFolder(Lcom/android/mail/providers/Folder;)V

    .line 481
    if-eqz v6, :cond_2

    iget v8, v6, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v8=(Integer);
    iget v9, v0, Lcom/android/mail/providers/Folder;->unreadCount:I

    if-eq v8, v9, :cond_3

    .line 482
    :cond_2
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8, v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$500(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 502
    .end local v6           #oldFolder:Lcom/android/mail/providers/Folder;
    :cond_3
    :goto_1
    #v6=(Conflicted);v8=(Conflicted);
    iget v8, v0, Lcom/android/mail/providers/Folder;->id:I

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_1

    .line 506
    .end local v0           #folder:Lcom/android/mail/providers/Folder;
    .end local v2           #holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_4
    #v0=(Conflicted);v2=(Conflicted);v9=(Conflicted);
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    #v1=(Conflicted);v4=(Reference);v8=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 508
    .local v1, folderId:I
    #v1=(Integer);
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 509
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$800(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;

    move-result-object v8

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$700(I)I

    move-result v9

    #v9=(Integer);
    invoke-virtual {v8, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 510
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v8, v10}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$202(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z

    goto :goto_2

    .line 486
    .end local v1           #folderId:I
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v0       #folder:Lcom/android/mail/providers/Folder;
    .restart local v2       #holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_5
    #v0=(Reference);v1=(Uninit);v2=(Reference);v4=(Uninit);
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    iget-object v9, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v9=(Reference);
    invoke-static {v8, v9}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$600(Lcom/android/mail/ui/NestedFolderTeaserView;Ljava/lang/CharSequence;)Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    move-result-object v5

    .line 487
    .local v5, newHolder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    #v5=(Reference);
    invoke-virtual {v5, v0}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->setFolder(Lcom/android/mail/providers/Folder;)V

    .line 488
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    iget v9, v0, Lcom/android/mail/providers/Folder;->id:I

    #v9=(Integer);
    invoke-virtual {v8, v9, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 495
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v8, v5}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$500(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 497
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v8, v10}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$202(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z

    goto :goto_1

    .line 515
    .end local v0           #folder:Lcom/android/mail/providers/Folder;
    .end local v2           #holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    .end local v5           #newHolder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Reference);v5=(Conflicted);v8=(Boolean);v9=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$200(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_7

    .line 516
    iget-object v8, p0, Lcom/android/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$300(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 521
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #oldFolderIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    #v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    return-void

    .line 519
    :cond_8
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(One);
    const-string v8, "NestedFolderTeaserView"

    #v8=(Reference);
    const-string v9, "Problem with folder list cursor returned from loader"

    #v9=(Reference);
    const/4 v10, 0x0

    #v10=(Null);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 452
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/NestedFolderTeaserView$3;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    return-void
.end method
