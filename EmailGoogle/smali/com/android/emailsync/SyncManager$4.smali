.class Lcom/android/emailsync/SyncManager$4;
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
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1388
    :try_start_0
    #v7=(Null);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1390
    :try_start_1
    new-instance v1, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v1=(UninitRef);
    iget-object v3, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    #v3=(Reference);
    invoke-direct {v1, v3}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->test()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1391
    const-string v1, "!!! Email application not found; stopping self"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/android/emailsync/SyncManager;->stopSelf()V

    .line 1394
    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, deviceId:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 1396
    const-string v1, "!!! deviceId unknown; stopping self and retrying"

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1397
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/android/emailsync/SyncManager;->stopSelf()V

    .line 1399
    new-instance v1, Lcom/android/emailsync/SyncManager$4$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/emailsync/SyncManager$4$1;-><init>(Lcom/android/emailsync/SyncManager$4;)V

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1408
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1426
    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->access$502(Z)Z

    .line 1428
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 1412
    :cond_1
    :try_start_2
    #v3=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v3, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v1, v3}, Lcom/android/emailsync/SyncManager;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 1414
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/android/emailsync/SyncManager;->maybeStartSyncServiceManagerThread()V

    .line 1415
    sget-object v1, Lcom/android/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    .line 1416
    const-string v1, "!!! EAS SyncServiceManager, stopping self"

    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1417
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/android/emailsync/SyncManager;->stopSelf()V

    .line 1424
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1426
    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->access$502(Z)Z

    goto :goto_0

    .line 1418
    :cond_2
    :try_start_3
    #v3=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-static {}, Lcom/android/emailsync/SyncManager;->access$600()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 1420
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, 0x1388

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/emailsync/SyncManager;->access$700(Lcom/android/emailsync/SyncManager;JJ)V

    goto :goto_1

    .line 1424
    .end local v0           #deviceId:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1426
    :catchall_1
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->access$502(Z)Z

    throw v1

    .line 1422
    .restart local v0       #deviceId:Ljava/lang/String;
    :cond_3
    :try_start_5
    #v0=(Reference);v1=(Boolean);v2=(Reference);v3=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v1, v3, v4}, Lcom/android/emailsync/SyncManager;->access$802(Lcom/android/emailsync/SyncManager;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
