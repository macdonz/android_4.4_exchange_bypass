.class Lcom/android/emailsync/SyncManager$3;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1364
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$500()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1374
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1365
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    monitor-enter v1

    .line 1366
    :try_start_0
    const-string v0, "!!! onCreate"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/emailsync/SyncManager$3;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v2, p0, Lcom/android/emailsync/SyncManager$3;->this$0:Lcom/android/emailsync/SyncManager;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/emailsync/SyncManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1370
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$600()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 1371
    monitor-exit v1

    goto :goto_0

    .line 1373
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    #v0=(Boolean);v2=(Reference);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
