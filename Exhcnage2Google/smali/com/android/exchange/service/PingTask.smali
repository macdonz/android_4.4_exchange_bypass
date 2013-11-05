.class public Lcom/android/exchange/service/PingTask;
.super Landroid/os/AsyncTask;
.source "PingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOperation:Lcom/android/exchange/eas/EasPing;

.field private final mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "amAccount"
    .parameter "syncHandlerMap"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    #p0=(Reference);
    new-instance v0, Lcom/android/exchange/eas/EasPing;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/eas/EasPing;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    .line 42
    iput-object p4, p0, Lcom/android/exchange/service/PingTask;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .line 43
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/PingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 62
    #v7=(Null);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "Ping task starting for %d"

    #v3=(Reference);
    new-array v4, v8, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :cond_0
    :try_start_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v2, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/exchange/eas/EasPing;->doPing()I

    move-result v1

    .line 67
    .local v1, pingStatus:I
    #v1=(Integer);
    invoke-static {v1}, Lcom/android/exchange/adapter/PingParser;->shouldPingAgain(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 75
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "Ping task ending with status: %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    iget-object v2, p0, Lcom/android/exchange/service/PingTask;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    iget-object v3, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    invoke-virtual {v3}, Lcom/android/exchange/eas/EasPing;->getAmAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    invoke-virtual {v4}, Lcom/android/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->pingComplete(Landroid/accounts/Account;JI)V

    .line 79
    const/4 v2, 0x0

    #v2=(Null);
    return-object v2

    .line 68
    .end local v1           #pingStatus:I
    :catch_0
    #v0=(Uninit);v1=(Conflicted);v2=(Conflicted);v4=(Reference);v5=(Reference);
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "Ping exception for account %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    invoke-virtual {v5}, Lcom/android/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v5

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    const/4 v1, -0x4

    .restart local v1       #pingStatus:I
    #v1=(Byte);
    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/PingTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 86
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Ping cancelled for %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    iget-object v0, p0, Lcom/android/exchange/service/PingTask;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    iget-object v1, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    invoke-virtual {v1}, Lcom/android/exchange/eas/EasPing;->getAmAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    invoke-virtual {v2}, Lcom/android/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    const/4 v4, -0x4

    #v4=(Byte);
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->pingComplete(Landroid/accounts/Account;JI)V

    .line 89
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/eas/EasPing;->restart()V

    .line 58
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/android/exchange/service/PingTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    new-array v1, v1, [Ljava/lang/Void;

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/service/PingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exchange/service/PingTask;->mOperation:Lcom/android/exchange/eas/EasPing;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/eas/EasPing;->abort()V

    .line 53
    return-void
.end method
