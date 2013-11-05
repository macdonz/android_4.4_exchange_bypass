.class Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;
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
    name = "ConversationListLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/browse/ConversationCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 3348
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3348
    invoke-direct {p0, p1}, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;-><init>(Lcom/android/mail/ui/AbstractActivityController;)V

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
            "Lcom/android/mail/browse/ConversationCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3353
    const-string v2, "account"

    #v2=(Reference);
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Account;

    .line 3354
    .local v0, account:Lcom/android/mail/providers/Account;
    const-string v2, "folder"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 3355
    .local v1, folder:Lcom/android/mail/providers/Folder;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3356
    :cond_0
    const/4 v2, 0x0

    .line 3358
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v2

    :cond_1
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v3, Lcom/android/mail/ui/ConversationCursorLoader;

    #v3=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    check-cast v2, Landroid/app/Activity;

    iget-object v4, v1, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v5=(Reference);
    invoke-direct {v3, v2, v0, v4, v5}, Lcom/android/mail/ui/ConversationCursorLoader;-><init>(Landroid/app/Activity;Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;)V

    #v3=(Reference);
    move-object v2, v3

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 9
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationCursor;",
            ">;",
            "Lcom/android/mail/browse/ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/browse/ConversationCursor;>;"
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x1

    .line 3364
    #v7=(One);
    sget-object v3, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "IN AAC.ConversationCursor.onLoadFinished, data=%s loader=%s this=%s"

    #v4=(Reference);
    const/4 v5, 0x3

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    aput-object p2, v5, v8

    aput-object p1, v5, v7

    const/4 v6, 0x2

    #v6=(PosByte);
    aput-object p0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3367
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v3}, Lcom/android/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/ui/AbstractActivityController;->mDrawerListener:Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;

    invoke-virtual {v3}, Lcom/android/mail/ui/AbstractActivityController$MailDrawerListener;->getDrawerState()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_0

    .line 3368
    sget-object v3, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "ConversationListLoaderCallbacks.onLoadFinished: ignoring."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3369
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v3, v7}, Lcom/android/mail/ui/AbstractActivityController;->access$1002(Lcom/android/mail/ui/AbstractActivityController;Z)Z

    .line 3393
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 3373
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v3, v4}, Lcom/android/mail/ui/AbstractActivityController;->access$1100(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/ui/DestructiveAction;)V

    .line 3374
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object p2, v3, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    .line 3375
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v3, v3, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Lcom/android/mail/browse/ConversationCursor;->addListener(Lcom/android/mail/browse/ConversationCursor$ConversationListener;)V

    .line 3376
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v3}, Lcom/android/mail/ui/AbstractActivityController;->access$1200(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/utils/DrawIdler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4}, Lcom/android/mail/utils/DrawIdler;->setListener(Lcom/android/mail/utils/DrawIdler$IdleListener;)V

    .line 3377
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v3, v3, Lcom/android/mail/ui/AbstractActivityController;->mTracker:Lcom/android/mail/ui/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationPositionTracker;->onCursorUpdated()V

    .line 3378
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v3}, Lcom/android/mail/ui/AbstractActivityController;->access$1300(Lcom/android/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 3380
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v3}, Lcom/android/mail/ui/AbstractActivityController;->access$1400(Lcom/android/mail/ui/AbstractActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AbstractActivityController$LoadFinishedCallback;

    .line 3381
    .local v0, callback:Lcom/android/mail/ui/AbstractActivityController$LoadFinishedCallback;
    invoke-interface {v0}, Lcom/android/mail/ui/AbstractActivityController$LoadFinishedCallback;->onLoadFinished()V

    goto :goto_1

    .line 3383
    .end local v0           #callback:Lcom/android/mail/ui/AbstractActivityController$LoadFinishedCallback;
    :cond_1
    #v0=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ui/AbstractActivityController;->access$1400(Lcom/android/mail/ui/AbstractActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3385
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v3}, Lcom/android/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/android/mail/ui/ConversationListFragment;

    move-result-object v1

    .line 3386
    .local v1, convList:Lcom/android/mail/ui/ConversationListFragment;
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v3, v1}, Lcom/android/mail/ui/AbstractActivityController;->access$1500(Lcom/android/mail/ui/AbstractActivityController;Landroid/app/Fragment;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 3390
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    invoke-virtual {v3, v7}, Lcom/android/mail/ui/AbstractActivityController;->informCursorVisiblity(Z)V

    .line 3392
    :cond_2
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ui/AbstractActivityController;->access$1600(Lcom/android/mail/ui/AbstractActivityController;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3348
    check-cast p2, Lcom/android/mail/browse/ConversationCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/ConversationCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/browse/ConversationCursor;>;"
    const/4 v5, 0x0

    .line 3397
    #v5=(Null);
    sget-object v0, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "IN AAC.ConversationCursor.onLoaderReset, data=%s loader=%s this=%s"

    #v1=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    aput-object p1, v2, v3

    const/4 v3, 0x2

    #v3=(PosByte);
    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3401
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 3403
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationCursor;->removeListener(Lcom/android/mail/browse/ConversationCursor$ConversationListener;)V

    .line 3404
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v0}, Lcom/android/mail/ui/AbstractActivityController;->access$1200(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/utils/DrawIdler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/mail/utils/DrawIdler;->setListener(Lcom/android/mail/utils/DrawIdler$IdleListener;)V

    .line 3405
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object v5, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    .line 3408
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mTracker:Lcom/android/mail/ui/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationPositionTracker;->onCursorUpdated()V

    .line 3409
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v0}, Lcom/android/mail/ui/AbstractActivityController;->access$1300(Lcom/android/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 3411
    :cond_0
    return-void
.end method
