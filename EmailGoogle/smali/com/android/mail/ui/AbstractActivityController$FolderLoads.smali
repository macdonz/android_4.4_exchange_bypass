.class Lcom/android/mail/ui/AbstractActivityController$FolderLoads;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderLoads"
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
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 3417
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3417
    invoke-direct {p0, p1}, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;-><init>(Lcom/android/mail/ui/AbstractActivityController;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10
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
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x0

    .line 3420
    #v9=(Null);
    sget-object v1, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 3421
    .local v1, everything:[Ljava/lang/String;
    #v1=(Reference);
    packed-switch p1, :pswitch_data_0

    .line 3463
    :pswitch_0
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "FolderLoads.onCreateLoader(%d) for invalid id"

    #v6=(Reference);
    new-array v7, v8, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3466
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    return-object v4

    .line 3423
    :pswitch_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(One);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "LOADER_FOLDER_CURSOR created"

    #v6=(Reference);
    new-array v7, v9, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3424
    new-instance v4, Lcom/android/mail/content/ObjectCursorLoader;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v6, v6, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v6, v6, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    .line 3427
    .local v4, loader:Lcom/android/mail/content/ObjectCursorLoader;,"Lcom/android/mail/content/ObjectCursorLoader<Lcom/android/mail/providers/Folder;>;"
    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$1700(Lcom/android/mail/ui/AbstractActivityController;)I

    move-result v5

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Lcom/android/mail/content/ObjectCursorLoader;->setUpdateThrottle(J)V

    goto :goto_0

    .line 3430
    .end local v4           #loader:Lcom/android/mail/content/ObjectCursorLoader;,"Lcom/android/mail/content/ObjectCursorLoader<Lcom/android/mail/providers/Folder;>;"
    :pswitch_2
    #v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "LOADER_RECENT_FOLDERS created"

    #v6=(Reference);
    new-array v7, v9, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3431
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 3433
    new-instance v4, Lcom/android/mail/content/ObjectCursorLoader;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v6, v6, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v4=(Reference);
    goto :goto_0

    .line 3438
    :pswitch_3
    #v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "LOADER_ACCOUNT_INBOX created"

    #v6=(Reference);
    new-array v7, v9, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3439
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-static {v5}, Lcom/android/mail/providers/Settings;->getDefaultInboxUri(Lcom/android/mail/providers/Settings;)Landroid/net/Uri;

    move-result-object v0

    .line 3440
    .local v0, defaultInbox:Landroid/net/Uri;
    #v0=(Reference);
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v3, v5, Lcom/android/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 3442
    .local v3, inboxUri:Landroid/net/Uri;
    :goto_1
    #v3=(Reference);v5=(Conflicted);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "Loading the default inbox: %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3443
    if-eqz v3, :cond_0

    .line 3444
    new-instance v4, Lcom/android/mail/content/ObjectCursorLoader;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    invoke-direct {v4, v5, v3, v1, v6}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v4=(Reference);
    goto/16 :goto_0

    .end local v3           #inboxUri:Landroid/net/Uri;
    :cond_1
    #v3=(Uninit);v4=(Null);v5=(Boolean);
    move-object v3, v0

    .line 3440
    #v3=(Reference);
    goto :goto_1

    .line 3449
    .end local v0           #defaultInbox:Landroid/net/Uri;
    :pswitch_4
    #v0=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "LOADER_SEARCH created"

    #v6=(Reference);
    new-array v7, v9, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3450
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    const-string v6, "query"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v7}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/mail/providers/Folder;->forSearchResults(Lcom/android/mail/providers/Account;Ljava/lang/String;Landroid/content/Context;)Lcom/android/mail/content/ObjectCursorLoader;

    move-result-object v4

    #v4=(Reference);
    goto/16 :goto_0

    .line 3454
    :pswitch_5
    #v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "LOADER_FIRST_FOLDER created"

    #v6=(Reference);
    new-array v7, v9, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3455
    const-string v5, "folderUri"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/net/Uri;

    .line 3456
    .local v2, folderUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    const-string v5, "conversationUri"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/mail/providers/Conversation;

    invoke-static {v6, v5}, Lcom/android/mail/ui/AbstractActivityController;->access$1802(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/providers/Conversation;

    .line 3457
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$1800(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/providers/Conversation;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$1800(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/providers/Conversation;

    move-result-object v5

    iget v5, v5, Lcom/android/mail/providers/Conversation;->position:I

    #v5=(Integer);
    if-gez v5, :cond_2

    .line 3458
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$1800(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/providers/Conversation;

    move-result-object v5

    iput v9, v5, Lcom/android/mail/providers/Conversation;->position:I

    .line 3460
    :cond_2
    #v5=(Conflicted);
    new-instance v4, Lcom/android/mail/content/ObjectCursorLoader;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/mail/providers/Folder;->FACTORY:Lcom/android/mail/content/CursorCreator;

    invoke-direct {v4, v5, v2, v1, v6}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v4=(Reference);
    goto/16 :goto_0

    .line 3421
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 12
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
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    .line 3471
    #v6=(Null);
    if-nez p2, :cond_0

    .line 3472
    sget-object v7, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "Received null cursor from loader id: %d"

    #v8=(Reference);
    new-array v9, v5, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v10

    #v10=(Integer);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #v10=(Reference);
    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3474
    :cond_0
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    #v7=(Integer);
    packed-switch v7, :pswitch_data_0

    .line 3569
    :cond_1
    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v11=(Conflicted);
    return-void

    .line 3476
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(One);v6=(Null);v7=(Integer);v11=(Uninit);
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 3477
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 3478
    .local v0, folder:Lcom/android/mail/providers/Folder;
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    invoke-static {v5, v0}, Lcom/android/mail/ui/AbstractActivityController;->access$1900(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Folder;)V

    .line 3479
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object v0, v5, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    .line 3480
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$2000(Lcom/android/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0

    .line 3482
    .end local v0           #folder:Lcom/android/mail/providers/Folder;
    :cond_2
    #v0=(Uninit);v5=(One);v7=(Integer);
    sget-object v7, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "Unable to get the folder %s"

    #v8=(Reference);
    new-array v9, v5, [Ljava/lang/Object;

    #v9=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    :goto_1
    aput-object v5, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const-string v5, ""

    goto :goto_1

    .line 3494
    :pswitch_2
    #v5=(One);v7=(Integer);v8=(Conflicted);v9=(Conflicted);
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v7

    if-gt v7, v5, :cond_4

    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/ui/AbstractActivityController;->access$2100(Lcom/android/mail/ui/AbstractActivityController;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_4

    .line 3504
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v4, v7, Lcom/android/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 3505
    .local v4, uri:Landroid/net/Uri;
    #v4=(Reference);
    sget-object v7, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Default recents at %s"

    #v8=(Reference);
    new-array v9, v5, [Ljava/lang/Object;

    #v9=(Reference);
    aput-object v4, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3506
    new-instance v7, Lcom/android/mail/ui/AbstractActivityController$FolderLoads$1PopulateDefault;

    #v7=(UninitRef);
    invoke-direct {v7, p0}, Lcom/android/mail/ui/AbstractActivityController$FolderLoads$1PopulateDefault;-><init>(Lcom/android/mail/ui/AbstractActivityController$FolderLoads;)V

    #v7=(Reference);
    new-array v5, v5, [Landroid/net/Uri;

    #v5=(Reference);
    aput-object v4, v5, v6

    invoke-virtual {v7, v5}, Lcom/android/mail/ui/AbstractActivityController$FolderLoads$1PopulateDefault;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3509
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    #v4=(Uninit);v5=(One);v7=(Integer);v8=(Conflicted);v9=(Conflicted);
    sget-object v7, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "Reading recent folders from the cursor."

    #v8=(Reference);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v7, v8, v6}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3510
    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/android/mail/ui/AbstractActivityController;->mRecentFolderList:Lcom/android/mail/ui/RecentFolderList;

    invoke-virtual {v6, p2}, Lcom/android/mail/ui/RecentFolderList;->loadFromUiProvider(Lcom/android/mail/content/ObjectCursor;)V

    .line 3511
    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v6}, Lcom/android/mail/ui/AbstractActivityController;->isAnimating()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_5

    .line 3512
    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v6=(Reference);
    invoke-static {v6, v5}, Lcom/android/mail/ui/AbstractActivityController;->access$2202(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    goto/16 :goto_0

    .line 3514
    :cond_5
    #v6=(Boolean);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$2300(Lcom/android/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto/16 :goto_0

    .line 3518
    :pswitch_3
    #v5=(One);v6=(Null);v7=(Integer);v8=(Conflicted);
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->isClosed()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3519
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/providers/Folder;

    .line 3520
    .local v2, inbox:Lcom/android/mail/providers/Folder;
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    invoke-virtual {v5, v2, v6}, Lcom/android/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/android/mail/providers/Folder;Z)V

    .line 3523
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 3525
    .end local v2           #inbox:Lcom/android/mail/providers/Folder;
    :cond_6
    #v2=(Uninit);v5=(One);v6=(Null);v7=(Integer);
    sget-object v7, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v7=(Reference);
    const-string v8, "Unable to get the account inbox for account %s"

    #v8=(Reference);
    new-array v9, v5, [Ljava/lang/Object;

    #v9=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    :goto_2
    aput-object v5, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_7
    const-string v5, ""

    goto :goto_2

    .line 3530
    :pswitch_4
    #v5=(One);v7=(Integer);v8=(Conflicted);v9=(Conflicted);
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_9

    .line 3531
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    .line 3532
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/providers/Folder;

    .line 3533
    .local v3, search:Lcom/android/mail/providers/Folder;
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v7=(Reference);
    invoke-static {v7, v3}, Lcom/android/mail/ui/AbstractActivityController;->access$2400(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Folder;)V

    .line 3534
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    iget-object v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v9, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v9=(Reference);
    iget-object v9, v9, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v10, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v10}, Lcom/android/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "query"

    #v11=(Reference);
    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/mail/ConversationListContext;->forSearchQuery(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Ljava/lang/String;)Lcom/android/mail/ConversationListContext;

    move-result-object v8

    iput-object v8, v7, Lcom/android/mail/ui/AbstractActivityController;->mConvListContext:Lcom/android/mail/ConversationListContext;

    .line 3537
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mConvListContext:Lcom/android/mail/ConversationListContext;

    invoke-virtual {v7, v8}, Lcom/android/mail/ui/AbstractActivityController;->showConversationList(Lcom/android/mail/ConversationListContext;)V

    .line 3538
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v7}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 3539
    iget-object v7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget v8, v3, Lcom/android/mail/providers/Folder;->totalCount:I

    #v8=(Integer);
    if-lez v8, :cond_8

    :goto_3
    #v5=(Boolean);
    invoke-static {v7, v5}, Lcom/android/mail/ui/AbstractActivityController;->access$2502(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 3540
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x6

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    :cond_8
    #v5=(One);v6=(Null);
    move v5, v6

    .line 3539
    #v5=(Null);
    goto :goto_3

    .line 3542
    .end local v3           #search:Lcom/android/mail/providers/Folder;
    :cond_9
    #v3=(Uninit);v5=(One);v7=(Integer);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Uninit);
    sget-object v5, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v7, "Null/empty cursor returned by LOADER_SEARCH loader"

    #v7=(Reference);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v5, v7, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 3546
    :pswitch_5
    #v5=(One);v6=(Null);v7=(Integer);
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v5

    #v5=(Integer);
    if-lez v5, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 3549
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 3550
    .restart local v0       #folder:Lcom/android/mail/providers/Folder;
    const/4 v1, 0x0

    .line 3551
    .local v1, handled:Z
    #v1=(Null);
    if-eqz v0, :cond_a

    .line 3552
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    invoke-virtual {v5, v0, v6}, Lcom/android/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/android/mail/providers/Folder;Z)V

    .line 3553
    const/4 v1, 0x1

    .line 3555
    :cond_a
    #v1=(Boolean);v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/AbstractActivityController;->access$1800(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/providers/Conversation;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 3557
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/mail/ui/AbstractActivityController;->access$1800(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/providers/Conversation;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mail/ui/AbstractActivityController;->access$2600(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Conversation;)V

    .line 3558
    const/4 v1, 0x1

    .line 3560
    :cond_b
    if-nez v1, :cond_c

    .line 3562
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v5}, Lcom/android/mail/ui/AbstractActivityController;->loadAccountInbox()V

    .line 3564
    :cond_c
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v5, v6}, Lcom/android/mail/ui/AbstractActivityController;->access$1802(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/providers/Conversation;

    .line 3566
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/16 v6, 0x8

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 3474
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3417
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController$FolderLoads;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

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
    .line 3573
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;>;"
    return-void
.end method
