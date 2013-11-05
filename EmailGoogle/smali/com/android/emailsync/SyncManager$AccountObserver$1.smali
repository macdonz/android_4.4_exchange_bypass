.class Lcom/android/emailsync/SyncManager$AccountObserver$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager$AccountObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailsync/SyncManager$AccountObserver;


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 391
    iget-object v2, p0, Lcom/android/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/android/emailsync/SyncManager$AccountObserver;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v3, v2, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v3=(Reference);
    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/android/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/android/emailsync/SyncManager$AccountObserver;

    iget-object v2, v2, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v2, v2, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v2}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 393
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->access$000(Lcom/android/emailcommon/provider/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/android/emailsync/SyncManager$AccountObserver;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v2, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/android/emailsync/SyncManager$AccountObserver;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v4, "isActive true; release hold for "

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    #v1=(Reference);v2=(Boolean);
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    return-void
.end method
