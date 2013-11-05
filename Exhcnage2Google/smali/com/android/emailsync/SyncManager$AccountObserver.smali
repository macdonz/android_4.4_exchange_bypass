.class public abstract Lcom/android/emailsync/SyncManager$AccountObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AccountObserver"
.end annotation


# instance fields
.field mAccountSelector:Ljava/lang/String;

.field mSyncableMailboxSelector:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;)V
    .locals 10
    .parameter
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    .line 365
    #v5=(Null);
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    .line 366
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 360
    #p0=(Reference);
    iput-object v5, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 361
    iput-object v5, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->mAccountSelector:Ljava/lang/String;

    .line 369
    invoke-static {}, Lcom/android/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 370
    .local v2, context:Landroid/content/Context;
    #v2=(Reference);
    iget-object v6, p1, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v6=(Reference);
    monitor-enter v6

    .line 372
    :try_start_0
    iget-object v5, p1, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v5=(Reference);
    invoke-virtual {p1, v2, v5}, Lcom/android/emailsync/SyncManager;->collectAccounts(Landroid/content/Context;Lcom/android/emailsync/SyncManager$AccountList;)Lcom/android/emailsync/SyncManager$AccountList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :try_start_1
    iget-object v5, p1, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v5}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Reference);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 379
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "accountKey="

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v2, v5, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 381
    .local v1, cnt:I
    #v1=(Integer);
    if-nez v1, :cond_0

    .line 383
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {p0, v7, v8}, Lcom/android/emailsync/SyncManager$AccountObserver;->newAccount(J)V

    goto :goto_0

    .line 386
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #cnt:I
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v5

    #v5=(Reference);
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 373
    :catch_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    move-exception v3

    .line 375
    .local v3, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_2
    #v3=(Reference);
    monitor-exit v6

    .line 405
    .end local v3           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 386
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    #v3=(Uninit);v4=(Reference);v5=(Boolean);
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    new-instance v5, Lcom/android/emailsync/SyncManager$AccountObserver$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0, p1}, Lcom/android/emailsync/SyncManager$AccountObserver$1;-><init>(Lcom/android/emailsync/SyncManager$AccountObserver;Lcom/android/emailsync/SyncManager;)V

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/emailsync/SyncManager$AccountObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/emailsync/SyncManager$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private onAccountChanged()V
    .locals 20

    .prologue
    .line 434
    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    #v12=(Reference);
    invoke-virtual {v12}, Lcom/android/emailsync/SyncManager;->maybeStartSyncServiceManagerThread()V

    .line 435
    invoke-static {}, Lcom/android/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 439
    .local v4, context:Landroid/content/Context;
    #v4=(Reference);
    new-instance v5, Lcom/android/emailsync/SyncManager$AccountList;

    #v5=(UninitRef);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-direct {v5, v12}, Lcom/android/emailsync/SyncManager$AccountList;-><init>(Lcom/android/emailsync/SyncManager;)V
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .local v5, currentAccounts:Lcom/android/emailsync/SyncManager$AccountList;
    :try_start_1
    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v12, v4, v5}, Lcom/android/emailsync/SyncManager;->collectAccounts(Landroid/content/Context;Lcom/android/emailsync/SyncManager$AccountList;)Lcom/android/emailsync/SyncManager$AccountList;
    :try_end_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v13, v12, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v13=(Reference);
    monitor-enter v13
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 447
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v12, v12, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v12}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Reference);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/emailcommon/provider/Account;

    .line 448
    .local v2, account:Lcom/android/emailcommon/provider/Account;
    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v12=(Integer);
    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_1

    const/4 v3, 0x1

    .line 452
    .local v3, accountIncomplete:Z
    :goto_1
    #v3=(Boolean);
    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v14=(LongLo);v15=(LongHi);
    invoke-virtual {v5, v14, v15}, Lcom/android/emailsync/SyncManager$AccountList;->contains(J)Z

    move-result v12

    #v12=(Boolean);
    if-nez v12, :cond_3

    if-nez v3, :cond_3

    .line 454
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v14, "Observer found deleted account: "

    #v14=(Reference);
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v12, v14}, Lcom/android/emailsync/SyncManager;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 458
    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v14=(LongLo);
    invoke-static {v4, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 460
    .local v7, deletedAccount:Lcom/android/emailcommon/provider/Account;
    #v7=(Reference);
    if-eqz v7, :cond_2

    .line 462
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v14, "Account still in provider: "

    #v14=(Reference);
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5, v2}, Lcom/android/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    goto :goto_0

    .line 522
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v3           #accountIncomplete:Z
    .end local v7           #deletedAccount:Lcom/android/emailcommon/provider/Account;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    move-exception v12

    #v12=(Reference);
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    .line 526
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #currentAccounts:Lcom/android/emailsync/SyncManager$AccountList;
    :catch_0
    #v4=(Conflicted);v5=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v8

    .line 527
    .local v8, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    #v8=(Reference);
    const-string v12, "Observer failed; provider unavailable"

    #v12=(Reference);
    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 529
    .end local v8           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_2
    #v8=(Conflicted);
    return-void

    .line 442
    .restart local v4       #context:Landroid/content/Context;
    .restart local v5       #currentAccounts:Lcom/android/emailsync/SyncManager$AccountList;
    :catch_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Reference);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    move-exception v8

    .restart local v8       #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    #v8=(Reference);
    goto :goto_2

    .line 448
    .end local v8           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v2       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Uninit);v10=(Reference);v11=(Conflicted);v12=(Integer);v13=(Reference);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 466
    .restart local v3       #accountIncomplete:Z
    .restart local v7       #deletedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_2
    :try_start_5
    #v0=(Reference);v3=(Boolean);v7=(Reference);v12=(Reference);v14=(LongLo);v15=(LongHi);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v14, "Account deletion confirmed: "

    #v14=(Reference);
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v14=(LongLo);
    const/16 v16, 0x1

    #v16=(One);
    move/from16 v0, v16

    #v0=(One);
    invoke-virtual {v12, v14, v15, v0}, Lcom/android/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 468
    const/4 v12, 0x0

    #v12=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 469
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->mAccountSelector:Ljava/lang/String;

    goto/16 :goto_0

    .line 473
    .end local v7           #deletedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_3
    #v0=(Conflicted);v7=(Conflicted);v12=(Boolean);v16=(Conflicted);
    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 475
    .local v11, updatedAccount:Lcom/android/emailcommon/provider/Account;
    #v11=(Reference);
    if-eqz v11, :cond_0

    .line 476
    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    #v12=(Integer);
    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    #v14=(Integer);
    if-ne v12, v14, :cond_4

    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    if-eq v12, v14, :cond_5

    .line 480
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    #v6=(UninitRef);
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v6, cv:Landroid/content/ContentValues;
    #v6=(Reference);
    const-string v12, "syncInterval"

    #v12=(Reference);
    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    #v14=(Reference);
    invoke-virtual {v6, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v12}, Lcom/android/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v14, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "accountKey=? and type = 0"

    #v15=(Reference);
    const/16 v16, 0x1

    #v16=(One);
    move/from16 v0, v16

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v16, v0

    #v16=(Reference);
    const/16 v17, 0x0

    #v17=(Null);
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v18, v0

    #v18=(LongLo);v19=(LongHi);
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    #v18=(Reference);
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    #v0=(Reference);
    invoke-virtual {v12, v14, v6, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 487
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v14, "Account "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " changed; stop syncs"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v14=(LongLo);v15=(LongHi);
    const/16 v16, 0x1

    #v16=(One);
    move/from16 v0, v16

    #v0=(One);
    invoke-virtual {v12, v14, v15, v0}, Lcom/android/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 492
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v12=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    invoke-static {v2}, Lcom/android/emailsync/SyncManager;->access$000(Lcom/android/emailcommon/provider/Account;)Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_6

    invoke-static {v11}, Lcom/android/emailsync/SyncManager;->access$000(Lcom/android/emailcommon/provider/Account;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 493
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    #v12=(Reference);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    #v14=(Reference);
    const/4 v15, 0x4

    #v15=(PosByte);
    invoke-virtual {v12, v14, v15, v2}, Lcom/android/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 498
    :cond_6
    #v0=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    #v12=(Integer);
    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 499
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 500
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mFlags:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto/16 :goto_0

    .line 504
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v3           #accountIncomplete:Z
    .end local v11           #updatedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_7
    #v2=(Conflicted);v3=(Conflicted);v11=(Conflicted);v12=(Boolean);
    invoke-virtual {v5}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    #v9=(Conflicted);v12=(Conflicted);
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/emailcommon/provider/Account;

    .line 505
    .restart local v2       #account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v14=(LongLo);v15=(LongHi);
    invoke-virtual {v12, v14, v15}, Lcom/android/emailsync/SyncManager$AccountList;->contains(J)Z

    move-result v12

    #v12=(Boolean);
    if-nez v12, :cond_8

    .line 507
    invoke-static {}, Lcom/android/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v12

    #v12=(Reference);
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v12, v14, v15}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 509
    .local v9, ha:Lcom/android/emailcommon/provider/HostAuth;
    #v9=(Reference);
    if-eqz v9, :cond_8

    .line 510
    iput-object v9, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 512
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v14, "Account observer found new account: "

    #v14=(Reference);
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 513
    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v14=(LongLo);
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/emailsync/SyncManager$AccountObserver;->newAccount(J)V

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v12, v12, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v12, v2}, Lcom/android/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 515
    const/4 v12, 0x0

    #v12=(Null);
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 516
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->mAccountSelector:Ljava/lang/String;

    goto :goto_3

    .line 520
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #ha:Lcom/android/emailcommon/provider/HostAuth;
    :cond_9
    #v0=(Conflicted);v2=(Conflicted);v9=(Conflicted);v12=(Boolean);v14=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v12}, Lcom/android/emailsync/SyncManager$AccountList;->clear()V

    .line 521
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v12, v12, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v12, v5}, Lcom/android/emailsync/SyncManager$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 522
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 525
    :try_start_6
    const-string v12, "account changed"

    invoke-static {v12}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public getSyncableMailboxWhere()Ljava/lang/String;
    .locals 8

    .prologue
    .line 413
    iget-object v4, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    #v4=(Reference);
    if-nez v4, :cond_2

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    const-string v4, "(type=4 or syncInterval<-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .local v3, sb:Ljava/lang/StringBuilder;
    #v3=(Reference);
    const/4 v1, 0x1

    .line 416
    .local v1, first:Z
    #v1=(One);
    iget-object v4, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v5, v4, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    #v5=(Reference);
    monitor-enter v5

    .line 417
    :try_start_0
    iget-object v4, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v4, v4, Lcom/android/emailsync/SyncManager;->mAccountList:Lcom/android/emailsync/SyncManager$AccountList;

    invoke-virtual {v4}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 418
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 419
    const/16 v4, 0x2c

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :goto_1
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 425
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 421
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v2=(Reference);v4=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 425
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_1
    :try_start_1
    #v0=(Conflicted);v1=(Boolean);
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    const/16 v4, 0x29

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 429
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    iget-object v4, p0, Lcom/android/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public abstract newAccount(J)V
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 533
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    new-instance v1, Lcom/android/emailsync/SyncManager$AccountObserver$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/emailsync/SyncManager$AccountObserver$2;-><init>(Lcom/android/emailsync/SyncManager$AccountObserver;)V

    #v1=(Reference);
    const-string v2, "Account Observer"

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 538
    return-void
.end method
