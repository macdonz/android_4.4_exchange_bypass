.class public Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
.super Ljava/lang/Object;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncHandlerSynchronizer"
.end annotation


# instance fields
.field private final mPingHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/service/PingTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/service/EmailSyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/service/EmailSyncAdapterService;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$300(Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    return-object v0
.end method

.method private declared-synchronized isRunningSync(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    monitor-exit p0

    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method private stopServiceIfNoPings()V
    .locals 3

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/exchange/service/PingTask;

    .line 169
    .local v1, pingHandler:Lcom/android/exchange/service/PingTask;
    if-eqz v1, :cond_0

    .line 174
    .end local v1           #pingHandler:Lcom/android/exchange/service/PingTask;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 173
    :cond_1
    #v2=(Boolean);
    iget-object v2, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/exchange/service/EmailSyncAdapterService;->stopSelf()V

    goto :goto_0
.end method

.method private declared-synchronized waitUntilNoActivity(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 142
    monitor-enter p0

    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/exchange/service/PingTask;

    .line 144
    .local v0, pingHandler:Lcom/android/exchange/service/PingTask;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/exchange/service/PingTask;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0

    .line 153
    .end local v0           #pingHandler:Lcom/android/exchange/service/PingTask;
    :cond_1
    #v0=(Conflicted);v1=(Boolean);
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized modifyPing(Lcom/android/emailcommon/provider/Account;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 194
    #v0=(One);
    monitor-enter p0

    :try_start_0
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-direct {p0, v1, v2}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->isRunningSync(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    :try_start_1
    #v0=(One);v1=(Boolean);v2=(LongHi);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent;->isInitialSyncKey(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    .line 208
    #v2=(Reference);
    new-instance v3, Landroid/accounts/Account;

    #v3=(UninitRef);
    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v1=(Reference);
    const-string v4, "com.google.android.exchange"

    #v4=(Reference);
    invoke-direct {v3, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    #v3=(Reference);
    const/4 v1, 0x0

    .line 211
    #v1=(Null);
    iget v4, p1, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    #v4=(Integer);
    const/4 v5, -0x2

    #v5=(Byte);
    if-ne v4, v5, :cond_3

    .line 212
    invoke-static {v3}, Lcom/android/exchange/service/EmailSyncAdapterService;->access$000(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v4

    .line 214
    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_3

    .line 215
    invoke-virtual {v2}, Lcom/android/exchange/service/EmailSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    #v5=(Reference);
    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxesForPush(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 217
    if-eqz v5, :cond_3

    .line 219
    :cond_2
    :try_start_2
    #v6=(Conflicted);
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_7

    .line 220
    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 221
    #v6=(Integer);
    invoke-static {v6}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    .line 227
    :goto_1
    :try_start_3
    #v0=(Boolean);
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move v1, v0

    .line 234
    :cond_3
    #v1=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/service/PingTask;

    .line 235
    new-instance v4, Landroid/os/Bundle;

    #v4=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 236
    #v4=(Reference);
    const-string v5, "__push_only__"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    if-eqz v1, :cond_5

    .line 239
    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {v0}, Lcom/android/exchange/service/PingTask;->restart()V

    .line 255
    :goto_2
    #v1=(Conflicted);v6=(Conflicted);
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-wide/16 v1, 0xe10

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v3, v0, v4, v1, v2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 227
    :catchall_1
    #v0=(One);v1=(Null);v2=(Reference);v3=(Reference);v4=(Reference);v5=(Reference);v7=(LongHi);
    move-exception v0

    :try_start_4
    #v0=(Reference);
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 248
    :cond_4
    #v1=(Boolean);v6=(One);v7=(Conflicted);
    new-instance v0, Lcom/android/exchange/service/PingTask;

    #v0=(UninitRef);
    invoke-direct {v0, v2, p1, v3, p0}, Lcom/android/exchange/service/PingTask;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V

    .line 249
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v1=(Reference);
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v0}, Lcom/android/exchange/service/PingTask;->start()V

    .line 252
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    invoke-virtual {v2, v0}, Lcom/android/exchange/service/EmailSyncAdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 259
    :cond_5
    #v1=(Boolean);v6=(One);
    if-eqz v0, :cond_6

    .line 260
    invoke-virtual {v0}, Lcom/android/exchange/service/PingTask;->stop()V

    .line 263
    :cond_6
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_7
    #v0=(One);v1=(Null);v6=(Boolean);v7=(LongHi);
    move v0, v1

    #v0=(Null);
    goto :goto_1
.end method

.method public declared-synchronized pingComplete(Landroid/accounts/Account;JI)V
    .locals 2
    .parameter "amAccount"
    .parameter "accountId"
    .parameter "pingStatus"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const/4 v0, -0x4

    #v0=(Byte);
    if-eq p4, v0, :cond_0

    const/16 v0, -0xa

    if-ne p4, v0, :cond_1

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/android/exchange/eas/EasPing;->requestPing(Landroid/accounts/Account;)V

    .line 310
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 305
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->stopServiceIfNoPings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSync(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->waitUntilNoActivity(J)V

    .line 183
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncComplete(Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->modifyPing(Lcom/android/emailcommon/provider/Account;)V

    .line 276
    invoke-direct {p0}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->stopServiceIfNoPings()V

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method
