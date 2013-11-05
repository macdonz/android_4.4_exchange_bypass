.class public Lcom/android/mail/ui/MultiFoldersSelectionDialog;
.super Lcom/android/mail/ui/FolderSelectionDialog;
.source "MultiFoldersSelectionDialog.java"


# instance fields
.field private final mOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "updater"
    .parameter
    .parameter "isBatch"
    .parameter "currentFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/ui/ConversationUpdater;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z",
            "Lcom/android/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/mail/ui/FolderSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;)V

    .line 65
    #p0=(Reference);
    const/16 v0, 0x2000

    #v0=(PosShort);
    invoke-virtual {p2, v0}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->mSingle:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->mOperations:Ljava/util/HashMap;

    .line 69
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00d4

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    return-void

    .line 65
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private final update(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V
    .locals 10
    .parameter "row"

    .prologue
    const/4 v6, 0x0

    .line 132
    #v6=(Null);
    invoke-virtual {p1}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->isPresent()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    const/4 v0, 0x1

    .line 133
    .local v0, add:Z
    :goto_0
    #v0=(Boolean);
    iget-boolean v5, p0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->mSingle:Z

    if-eqz v5, :cond_3

    .line 134
    if-nez v0, :cond_1

    .line 154
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .end local v0           #add:Z
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Null);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    move v0, v6

    .line 132
    #v0=(Null);
    goto :goto_0

    .line 140
    .restart local v0       #add:Z
    :cond_1
    #v0=(Boolean);
    const/4 v2, 0x0

    .local v2, i:I
    #v2=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/SeparatedFolderListAdapter;->getCount()I

    move-result v4

    .local v4, size:I
    :goto_2
    #v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Integer);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-ge v2, v4, :cond_3

    .line 141
    iget-object v5, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    #v5=(Reference);
    invoke-virtual {v5, v2}, Lcom/android/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 142
    .local v3, item:Ljava/lang/Object;
    #v3=(Reference);
    instance-of v5, v3, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v5=(Boolean);
    if-eqz v5, :cond_2

    move-object v5, v3

    .line 143
    #v5=(Reference);
    check-cast v5, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    invoke-virtual {v5, v6}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->setIsPresent(Z)V

    .line 144
    check-cast v3, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v3           #item:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 145
    .local v1, folder:Lcom/android/mail/providers/Folder;
    #v1=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->mOperations:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    new-instance v8, Lcom/android/mail/ui/FolderOperation;

    #v8=(UninitRef);
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v8, v1, v9}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    #v8=(Reference);
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v1           #folder:Lcom/android/mail/providers/Folder;
    :cond_2
    #v1=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p1, v0}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->setIsPresent(Z)V

    .line 151
    iget-object v5, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/SeparatedFolderListAdapter;->notifyDataSetChanged()V

    .line 152
    invoke-virtual {p1}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 153
    .restart local v1       #folder:Lcom/android/mail/providers/Folder;
    #v1=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->mOperations:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    new-instance v7, Lcom/android/mail/ui/FolderOperation;

    #v7=(UninitRef);
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    #v8=(Reference);
    invoke-direct {v7, v1, v8}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 158
    packed-switch p2, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 160
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    iget-object v1, p0, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->mOperations:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mTarget:Ljava/util/Collection;

    #v2=(Reference);
    iget-boolean v3, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mBatch:Z

    #v3=(Boolean);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/ui/ConversationUpdater;->assignFolder(Ljava/util/Collection;Ljava/util/Collection;ZZZ)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, item:Ljava/lang/Object;
    #v0=(Reference);
    instance-of v1, v0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v0           #item:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MultiFoldersSelectionDialog;->update(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected updateAdapterInBackground(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 75
    const/4 v7, 0x0

    .line 77
    .local v7, foldersCursor:Landroid/database/Cursor;
    :try_start_0
    #v7=(Null);
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    :goto_0
    sget-object v2, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    #v7=(Reference);
    new-instance v3, Ljava/util/HashSet;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v3, checked:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mTarget:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    #v6=(Conflicted);v8=(Reference);v9=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/providers/Conversation;

    .line 84
    .local v6, conversation:Lcom/android/mail/providers/Conversation;
    invoke-virtual {v6}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v9

    .line 85
    .local v9, rawFolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Folder;>;"
    #v9=(Reference);
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_2

    .line 87
    invoke-static {v9}, Lcom/android/mail/providers/Folder;->getUriArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    .end local v3           #checked:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #conversation:Lcom/android/mail/providers/Conversation;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #rawFolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Folder;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v7, :cond_0

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 77
    :cond_1
    :try_start_1
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    goto :goto_0

    .line 91
    .restart local v3       #checked:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6       #conversation:Lcom/android/mail/providers/Conversation;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #rawFolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Folder;>;"
    :cond_2
    #v0=(Integer);v2=(Reference);v3=(Reference);v4=(Null);v5=(Null);v6=(Reference);v7=(Reference);v8=(Reference);v9=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mCurrentFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v6           #conversation:Lcom/android/mail/providers/Conversation;
    .end local v9           #rawFolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Folder;>;"
    :cond_3
    #v0=(Boolean);v6=(Conflicted);v9=(Conflicted);
    iget-object v10, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    #v10=(Reference);
    new-instance v0, Lcom/android/mail/ui/AddableFolderSelectorAdapter;

    #v0=(UninitRef);
    const/16 v1, 0x400

    #v1=(PosShort);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/mail/ui/AddableFolderSelectorAdapter;->filterFolders(Landroid/database/Cursor;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v2

    const v4, 0x7f040055

    #v4=(Integer);
    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/AddableFolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v10, v0}, Lcom/android/mail/ui/SeparatedFolderListAdapter;->addSection(Lcom/android/mail/ui/FolderSelectorAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/android/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v7, :cond_4

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_4
    return-void
.end method
