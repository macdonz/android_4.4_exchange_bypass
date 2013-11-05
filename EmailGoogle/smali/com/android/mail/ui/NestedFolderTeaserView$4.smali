.class Lcom/android/mail/ui/NestedFolderTeaserView$4;
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
        "Lcom/android/mail/providers/Conversation;",
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
    .line 538
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
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
            "Lcom/android/mail/providers/Conversation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 616
    invoke-static {p1}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$1200(I)I

    move-result v0

    .line 617
    .local v0, folderId:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    invoke-static {v2}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->access$1300(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "use_network"

    #v3=(Reference);
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 623
    .local v1, uri:Landroid/net/Uri;
    #v1=(Reference);
    new-instance v2, Lcom/android/mail/content/ObjectCursorLoader;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v3}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mail/providers/Conversation;->FACTORY:Lcom/android/mail/content/CursorCreator;

    #v5=(Reference);
    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v2=(Reference);
    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;>;",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Conversation;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Conversation;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 550
    .local v2, emailToNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v2=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 552
    .local v13, senders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #v13=(Reference);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v15

    #v15=(Integer);
    invoke-static {v15}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$1200(I)I

    move-result v5

    .line 554
    .local v5, folderId:I
    #v5=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v15, v0, Lcom/android/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v15=(Reference);
    invoke-static {v15}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 555
    .local v4, folderHolder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    invoke-static {v4}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->access$1300(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)Lcom/android/mail/providers/Folder;

    move-result-object v15

    iget v8, v15, Lcom/android/mail/providers/Folder;->unreadCount:I

    .line 557
    .local v8, maxSenders:I
    #v8=(Integer);
    if-lez v8, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_8

    .line 558
    const-string v15, "NestedFolderTeaserView"

    #v15=(Reference);
    const-string v16, "Folder id %d loader finished"

    #v16=(Reference);
    const/16 v17, 0x1

    #v17=(One);
    move/from16 v0, v17

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v17, v0

    #v17=(Reference);
    const/16 v18, 0x0

    #v18=(Null);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    #v19=(Reference);
    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 561
    const/4 v14, 0x0

    .line 564
    .local v14, sendersFound:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Integer);v15=(Conflicted);v16=(Conflicted);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Conversation;

    .line 566
    .local v1, conversation:Lcom/android/mail/providers/Conversation;
    iget-boolean v15, v1, Lcom/android/mail/providers/Conversation;->read:Z

    #v15=(Boolean);
    if-nez v15, :cond_4

    .line 567
    const/4 v11, 0x0

    .line 568
    .local v11, sender:Ljava/lang/String;
    #v11=(Null);
    const/4 v12, 0x0

    .line 569
    .local v12, senderEmail:Ljava/lang/String;
    #v12=(Null);
    const/high16 v10, -0x8000

    .line 573
    .local v10, priority:I
    #v10=(Integer);
    iget-object v15, v1, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v15=(Reference);
    iget-object v15, v15, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    #v6=(Reference);v11=(Reference);v12=(Reference);v15=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Lcom/android/mail/providers/MessageInfo;

    .line 574
    .local v9, messageInfo:Lcom/android/mail/providers/MessageInfo;
    if-eqz v11, :cond_2

    iget v15, v9, Lcom/android/mail/providers/MessageInfo;->priority:I

    #v15=(Integer);
    if-ge v10, v15, :cond_1

    .line 575
    :cond_2
    iget-object v11, v9, Lcom/android/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 576
    iget-object v12, v9, Lcom/android/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    .line 577
    iget v10, v9, Lcom/android/mail/providers/MessageInfo;->priority:I

    goto :goto_0

    .line 581
    .end local v9           #messageInfo:Lcom/android/mail/providers/MessageInfo;
    :cond_3
    #v9=(Conflicted);v15=(Boolean);
    if-eqz v11, :cond_4

    .line 582
    add-int/lit8 v14, v14, 0x1

    .line 583
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/String;

    .line 584
    .local v3, existingSender:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 586
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    #v15=(Integer);
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    #v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    if-lt v15, v0, :cond_6

    .line 588
    move-object v11, v3

    .line 597
    :goto_1
    #v0=(Conflicted);v16=(Conflicted);
    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v3           #existingSender:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #priority:I
    .end local v11           #sender:Ljava/lang/String;
    .end local v12           #senderEmail:Ljava/lang/String;
    :cond_4
    #v3=(Conflicted);v6=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/content/ObjectCursor;->moveToNext()Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_5

    if-lt v14, v8, :cond_0

    .line 605
    .end local v1           #conversation:Lcom/android/mail/providers/Conversation;
    .end local v14           #sendersFound:I
    :cond_5
    :goto_2
    #v1=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    invoke-virtual {v4, v13}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->setUnreadSenders(Ljava/util/List;)V

    .line 611
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v15, v0, Lcom/android/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v15=(Reference);
    invoke-static {v15, v4}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$500(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 612
    return-void

    .line 591
    .restart local v1       #conversation:Lcom/android/mail/providers/Conversation;
    .restart local v3       #existingSender:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v10       #priority:I
    .restart local v11       #sender:Ljava/lang/String;
    .restart local v12       #senderEmail:Ljava/lang/String;
    .restart local v14       #sendersFound:I
    :cond_6
    #v0=(Integer);v1=(Reference);v3=(Reference);v6=(Reference);v10=(Integer);v11=(Reference);v12=(Reference);v14=(Integer);v15=(Integer);v16=(Integer);v18=(Null);v19=(Reference);
    invoke-interface {v13, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 592
    .local v7, index:I
    #v7=(Integer);
    invoke-interface {v13, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 595
    .end local v7           #index:I
    :cond_7
    #v0=(Conflicted);v7=(Conflicted);v15=(Boolean);v16=(Conflicted);
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 602
    .end local v1           #conversation:Lcom/android/mail/providers/Conversation;
    .end local v3           #existingSender:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #priority:I
    .end local v11           #sender:Ljava/lang/String;
    .end local v12           #senderEmail:Ljava/lang/String;
    .end local v14           #sendersFound:I
    :cond_8
    #v0=(Reference);v1=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Conflicted);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    const-string v15, "NestedFolderTeaserView"

    #v15=(Reference);
    const-string v16, "Problem with folder cursor returned from loader"

    #v16=(Reference);
    const/16 v17, 0x0

    #v17=(Null);
    move/from16 v0, v17

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v15 .. v17}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/NestedFolderTeaserView$4;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

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
            "Lcom/android/mail/providers/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Conversation;>;>;"
    return-void
.end method
