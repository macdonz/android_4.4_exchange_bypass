.class public Lcom/android/exchange/EasAccountService;
.super Lcom/android/exchange/EasSyncService;
.source "EasAccountService.java"


# instance fields
.field private final mBindArguments:[Ljava/lang/String;

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    #v1=(Null);
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;-><init>()V

    .line 119
    #p0=(Reference);
    const/16 v0, 0x78

    #v0=(PosByte);
    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 121
    const/16 v0, 0x122

    #v0=(PosShort);
    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 123
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 125
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 127
    iput v1, p0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 129
    iput-boolean v1, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 131
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    .line 140
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 2
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v1, 0x0

    .line 135
    #v1=(Null);
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 119
    #p0=(Reference);
    const/16 v0, 0x78

    #v0=(PosByte);
    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 121
    const/16 v0, 0x122

    #v0=(PosShort);
    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 123
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 125
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 127
    iput v1, p0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 129
    iput-boolean v1, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 131
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method private canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    .locals 7
    .parameter "resp"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 201
    #v3=(Null);
    new-array v4, v2, [Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "AccountMailbox redirect error"

    #v5=(Reference);
    aput-object v5, v4, v3

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 204
    .local v0, ha:Lcom/android/emailcommon/provider/HostAuth;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/EasAccountService;->getValidateRedirect(Lcom/android/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 206
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v1, haValues:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v3, "address"

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 211
    .end local v1           #haValues:Landroid/content/ContentValues;
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    :cond_0
    #v1=(Uninit);v2=(One);v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_0
.end method

.method private static isLikelyNatFailure(Ljava/lang/String;)Z
    .locals 2
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 477
    #v0=(Null);
    if-nez p0, :cond_1

    .line 481
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .line 478
    :cond_1
    #v0=(Null);v1=(Uninit);
    const-string v1, "reset by peer"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 479
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v11, 0x3

    #v11=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v10, 0x1

    .line 779
    #v10=(One);
    new-instance v7, Lcom/android/exchange/adapter/PingParser;

    #v7=(UninitRef);
    invoke-direct {v7, p1}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;)V

    .line 780
    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_6

    .line 783
    iget-object v0, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    aput-object v1, v0, v3

    .line 784
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    .line 785
    iget-object v0, p0, Lcom/android/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Reference);v9=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    move-object v6, v0

    #v6=(Reference);
    check-cast v6, Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    aput-object v6, v0, v10

    .line 787
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "accountKey=? and serverId=?"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    #v4=(Reference);
    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 789
    if-nez v1, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 791
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 808
    const/16 v0, 0xd

    #v0=(PosByte);
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v2

    .line 811
    #v2=(Integer);
    if-ne v2, v11, :cond_1

    .line 812
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v0

    .line 813
    #v0=(Integer);
    if-lez v0, :cond_3

    .line 814
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_1
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    const/4 v0, 0x3

    #v0=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v2, v3, v0, v4}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/emailsync/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :cond_2
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Reference);
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 815
    :cond_3
    #v0=(Integer);v2=(Integer);v3=(Reference);
    if-nez v0, :cond_1

    .line 818
    const/4 v0, 0x1

    :try_start_1
    #v0=(One);
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 819
    #v2=(Reference);
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    .line 820
    if-nez v0, :cond_4

    .line 821
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "Last ping reported changes in error for: "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    #v3=(One);
    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 839
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 823
    :cond_4
    :try_start_2
    #v2=(Reference);v3=(Reference);v4=(Reference);
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    if-le v3, v10, :cond_5

    .line 825
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasAccountService;->pushFallback(J)V

    goto :goto_2

    .line 828
    :cond_5
    #v0=(Reference);v2=(Reference);v3=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v9, "Last ping reported changes in error for: "

    #v9=(Reference);
    aput-object v9, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 843
    :cond_6
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->getPingStatus()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private pushFallback(J)V
    .locals 6
    .parameter "mailboxId"

    .prologue
    const/4 v5, 0x0

    .line 452
    #v5=(Null);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 453
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 467
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void

    .line 456
    :cond_0
    #v0=(Uninit);v2=(Uninit);v4=(Uninit);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const/16 v2, 0x19

    .line 458
    .local v2, mins:I
    #v2=(PosByte);
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v3=(Integer);
    if-nez v3, :cond_1

    .line 459
    const/4 v2, 0x5

    .line 461
    :cond_1
    const-string v3, "syncInterval"

    #v3=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "*** PING ERROR LOOP: Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    .line 466
    const-string v3, "push fallback"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runPingLoop()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 510
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v5, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 511
    #v5=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "runPingLoop"

    #v4=(Reference);
    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    const-wide/32 v6, 0x1b7740

    #v6=(LongLo);v7=(LongHi);
    add-long v15, v2, v6

    .line 514
    #v15=(LongLo);v16=(LongHi);
    new-instance v17, Ljava/util/HashMap;

    #v17=(UninitRef);
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 515
    #v17=(Reference);
    new-instance v18, Ljava/util/ArrayList;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 516
    #v18=(Reference);
    new-instance v19, Ljava/util/ArrayList;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 517
    #v19=(Reference);
    const/4 v4, 0x0

    .line 518
    #v4=(Null);
    const-wide/16 v2, -0x1

    .line 519
    new-instance v20, Landroid/accounts/Account;

    #v20=(UninitRef);
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.google.android.exchange"

    #v7=(Reference);
    move-object/from16 v0, v20

    #v0=(UninitRef);
    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);v20=(Reference);
    move-wide v8, v2

    #v8=(LongLo);v9=(LongHi);
    move v10, v4

    #v10=(Null);
    move v11, v5

    .line 521
    :goto_0
    #v1=(Conflicted);v4=(Integer);v6=(Conflicted);v7=(Conflicted);v10=(Integer);v11=(Integer);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v15

    #v2=(Byte);
    if-gez v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->isStopped()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2a

    .line 523
    const/4 v14, 0x0

    .line 525
    #v14=(Null);
    const/4 v13, 0x0

    .line 527
    #v13=(Null);
    const/4 v12, 0x0

    .line 529
    #v12=(Null);
    new-instance v21, Lcom/android/exchange/adapter/Serializer;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 530
    #v21=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "accountKey="

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 533
    #v22=(Reference);
    if-nez v22, :cond_0

    new-instance v2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    #v2=(UninitRef);
    invoke-direct {v2}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    #v2=(Reference);
    throw v2

    .line 534
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 535
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 537
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v8, v2

    #v2=(Byte);
    if-nez v2, :cond_2d

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v2=(Reference);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    move v7, v12

    move v5, v13

    move v8, v14

    .line 542
    :goto_1
    :try_start_0
    #v4=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Integer);v8=(Integer);v9=(Conflicted);v12=(Reference);v13=(Conflicted);
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_9

    .line 543
    add-int/lit8 v6, v8, 0x1

    .line 547
    #v6=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 548
    #v8=(LongLo);v9=(LongHi);
    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 551
    const/4 v4, 0x5

    #v4=(PosByte);
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 552
    #v13=(Integer);
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    .line 553
    #v4=(Reference);
    packed-switch v13, :pswitch_data_0

    .line 564
    :goto_2
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 565
    const/4 v4, 0x4

    .line 571
    :goto_3
    #v4=(Integer);
    if-nez v4, :cond_5

    .line 572
    const/4 v4, 0x7

    #v4=(PosByte);
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 573
    #v4=(Reference);
    if-eqz v4, :cond_1

    const-string v8, "0"

    #v8=(Reference);
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 575
    :cond_1
    #v4=(Conflicted);v8=(Conflicted);
    add-int/lit8 v6, v6, -0x1

    .line 576
    add-int/lit8 v4, v7, 0x1

    #v4=(Integer);
    move v7, v4

    move v8, v6

    .line 577
    #v8=(Integer);
    goto :goto_1

    .line 555
    :pswitch_0
    #v4=(Reference);v8=(LongLo);
    const-string v4, "com.android.calendar"

    goto :goto_2

    .line 558
    :pswitch_1
    const-string v4, "com.android.contacts"

    goto :goto_2

    .line 567
    :cond_2
    #v4=(Boolean);
    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->pingStatus(J)I

    move-result v4

    #v4=(Integer);
    goto :goto_3

    .line 580
    :cond_3
    #v4=(Boolean);v8=(Reference);
    add-int/lit8 v4, v5, 0x1

    #v4=(Integer);
    if-nez v5, :cond_4

    .line 582
    const/16 v5, 0x345

    #v5=(PosShort);
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    #v5=(Reference);
    const/16 v8, 0x348

    #v8=(PosShort);
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v5, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v8, 0x349

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 588
    :cond_4
    #v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/exchange/EasAccountService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 589
    #v5=(Reference);
    const/16 v8, 0x34a

    #v8=(PosShort);
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    #v8=(Reference);
    const/16 v9, 0x34b

    #v9=(PosShort);
    const/4 v13, 0x2

    #v13=(PosByte);
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    #v13=(Reference);
    invoke-virtual {v8, v9, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x34c

    invoke-virtual {v8, v9, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 593
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    #v1=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Conflicted);
    move v5, v4

    #v5=(Integer);
    move v8, v6

    .line 606
    #v8=(Integer);
    goto/16 :goto_1

    .line 594
    :cond_5
    #v8=(LongLo);v9=(LongHi);v13=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    if-eq v4, v8, :cond_6

    const/4 v8, 0x2

    #v8=(PosByte);
    if-ne v4, v8, :cond_7

    .line 596
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_4

    .line 597
    :cond_7
    const/4 v8, 0x3

    if-ne v4, v8, :cond_8

    .line 598
    add-int/lit8 v4, v6, -0x1

    .line 599
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v12, v6, v8

    const/4 v8, 0x1

    #v8=(One);
    const-string v9, " in error state; ignore"

    #v9=(Reference);
    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    move v8, v4

    .line 600
    #v8=(Integer);
    goto/16 :goto_1

    .line 601
    :cond_8
    #v6=(Integer);v8=(PosByte);v9=(LongHi);
    const/4 v8, 0x4

    if-ne v4, v8, :cond_2c

    .line 602
    add-int/lit8 v4, v6, -0x1

    .line 603
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v12, v6, v8

    const/4 v8, 0x1

    #v8=(One);
    const-string v9, " disabled by user; ignore"

    #v9=(Reference);
    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v4

    .line 604
    #v8=(Integer);
    goto/16 :goto_1

    .line 608
    :catchall_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_9
    #v2=(LongLo);v4=(Boolean);v5=(Integer);v8=(Integer);
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 611
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_b

    .line 612
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 613
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v12, "Ping not ready for: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 615
    :cond_a
    #v4=(Conflicted);v6=(Conflicted);v9=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_b

    .line 616
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v12, "Ping ready for: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 622
    :cond_b
    #v4=(Conflicted);v6=(Conflicted);v9=(Conflicted);
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_d

    const/4 v4, 0x5

    #v4=(PosByte);
    if-le v10, v4, :cond_d

    const/4 v4, 0x1

    #v4=(One);
    move v6, v4

    .line 624
    :goto_5
    #v4=(Boolean);v6=(Boolean);
    if-lez v5, :cond_25

    if-eq v5, v8, :cond_c

    if-eqz v6, :cond_25

    .line 626
    :cond_c
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 627
    const/4 v10, 0x0

    .line 628
    #v10=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 629
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->isStopped()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_e

    .line 773
    :goto_6
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Integer);v12=(Conflicted);v14=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    return-void

    .line 622
    :cond_d
    #v2=(LongLo);v4=(PosByte);v5=(Integer);v7=(Integer);v8=(Integer);v12=(Reference);v14=(Null);v21=(Reference);v22=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    move v6, v4

    #v6=(Null);
    goto :goto_5

    .line 634
    :cond_e
    #v4=(Boolean);v6=(Boolean);v10=(Null);
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 637
    #v12=(LongLo);v13=(LongHi);
    if-eqz v6, :cond_f

    .line 638
    const/4 v4, 0x1

    :try_start_1
    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v7, "Forcing ping after waiting for all boxes to be ready"

    #v7=(Reference);
    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 640
    :cond_f
    #v4=(Conflicted);v5=(Integer);v7=(Conflicted);
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    #v5=(Reference);
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    :goto_7
    #v4=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/EasAccountService;->sendPing([BI)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 644
    :try_start_2
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v4

    .line 645
    const-string v7, "Ping response: "

    #v7=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_10

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->stop()V

    .line 654
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 655
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "Stopping pingLoop"

    #v7=(Reference);
    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 700
    :try_start_3
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 702
    :catch_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v4

    #v4=(Reference);
    move-object v8, v4

    #v8=(Reference);
    move v7, v11

    .line 703
    :goto_8
    #v7=(Integer);
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 706
    #v6=(Reference);
    if-eqz v6, :cond_1b

    const/4 v4, 0x1

    .line 707
    :goto_9
    #v4=(Boolean);
    const/4 v5, 0x1

    #v5=(One);
    new-array v9, v5, [Ljava/lang/String;

    #v9=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v14, "IOException runPingLoop: "

    #v14=(Reference);
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v4, :cond_1c

    move-object v5, v6

    :goto_a
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    #v5=(Boolean);
    if-eqz v5, :cond_1d

    :cond_11
    :goto_b
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move v4, v10

    #v4=(Null);
    move v5, v7

    :goto_c
    #v4=(Integer);v5=(Integer);v10=(Integer);v13=(Conflicted);
    move-wide v8, v2

    #v8=(LongLo);v9=(LongHi);
    move v10, v4

    move v11, v5

    .line 769
    #v11=(Integer);
    goto/16 :goto_0

    :cond_12
    #v4=(Conflicted);v5=(Reference);v6=(Boolean);v7=(Conflicted);v8=(Integer);v9=(Conflicted);v10=(Null);v12=(LongLo);v13=(LongHi);v14=(Null);
    move v4, v11

    .line 640
    #v4=(Integer);
    goto :goto_7

    .line 659
    :cond_13
    #v7=(Boolean);
    const/16 v7, 0xc8

    #v7=(PosShort);
    if-ne v4, v7, :cond_1a

    .line 660
    :try_start_4
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_19

    .line 661
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 662
    #v4=(Reference);
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    #v7=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-direct {v0, v4, v7, v1}, Lcom/android/exchange/EasAccountService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v4

    .line 666
    #v4=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    if-ne v4, v7, :cond_17

    if-nez v6, :cond_17

    .line 667
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    if-le v11, v4, :cond_14

    .line 668
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 669
    const-string v4, "Setting high water mark at: "

    #v4=(Reference);
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    #v6=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 671
    :cond_14
    #v4=(Conflicted);
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    #v4=(Integer);
    if-ge v11, v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    #v4=(Boolean);
    if-nez v4, :cond_16

    .line 673
    add-int/lit16 v11, v11, 0xb4

    .line 674
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    #v4=(Integer);
    if-le v11, v4, :cond_15

    .line 675
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 677
    :cond_15
    const-string v4, "Increase ping heartbeat to "

    #v4=(Reference);
    const-string v6, "s"

    #v6=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v6}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 688
    :cond_16
    #v4=(Conflicted);v6=(Conflicted);
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/emailsync/AbstractSyncService;->mMailboxId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v7, v11

    .line 700
    :goto_d
    :try_start_5
    #v1=(Conflicted);v6=(Conflicted);v7=(Integer);
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    .line 702
    :catch_1
    move-exception v4

    #v4=(Reference);
    move-object v8, v4

    #v8=(Reference);
    goto/16 :goto_8

    .line 679
    :cond_17
    #v1=(Reference);v4=(Integer);v6=(Boolean);v7=(One);v8=(Integer);
    const/4 v6, 0x3

    #v6=(PosByte);
    if-eq v4, v6, :cond_18

    const/16 v6, 0x8

    if-ne v4, v6, :cond_16

    .line 683
    :cond_18
    const/4 v6, 0x1

    :try_start_6
    #v6=(One);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "Server error during Ping: "

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 685
    new-instance v4, Ljava/io/IOException;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #v4=(Reference);
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 700
    :catchall_1
    #v1=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v4

    :try_start_7
    #v4=(Reference);
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V

    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 690
    :cond_19
    #v4=(Boolean);v6=(Boolean);v7=(PosShort);v8=(Integer);
    const/4 v4, 0x1

    :try_start_8
    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "Ping returned empty result; throwing IOException"

    #v7=(Reference);
    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 692
    new-instance v4, Ljava/io/IOException;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #v4=(Reference);
    throw v4

    .line 694
    :cond_1a
    #v4=(Integer);v6=(Boolean);v7=(PosShort);
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->isAuthError()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 695
    const/4 v6, 0x2

    #v6=(PosByte);
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    .line 696
    const-string v6, "Authorization error during Ping: "

    #v6=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 697
    new-instance v4, Ljava/io/IOException;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #v4=(Reference);
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 706
    :cond_1b
    #v5=(Conflicted);v7=(Integer);v8=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    goto/16 :goto_9

    .line 707
    :cond_1c
    #v4=(Boolean);v5=(Reference);v9=(Reference);v11=(Null);v14=(Reference);
    const-string v5, "[no message]"

    goto/16 :goto_a

    .line 711
    :cond_1d
    #v5=(Boolean);
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-nez v5, :cond_1e

    invoke-static {v6}, Lcom/android/exchange/EasAccountService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 712
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    sub-long/2addr v4, v12

    .line 713
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    #v6=(Integer);
    if-le v7, v6, :cond_20

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    if-le v7, v6, :cond_20

    .line 715
    add-int/lit16 v4, v7, -0xb4

    .line 716
    #v4=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 717
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    #v5=(Integer);
    if-ge v4, v5, :cond_1f

    .line 718
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 720
    :cond_1f
    const-string v5, "Decreased ping heartbeat to "

    #v5=(Reference);
    const-string v6, "s"

    #v6=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    :goto_e
    #v11=(Conflicted);v12=(Conflicted);
    move v7, v4

    .line 734
    goto/16 :goto_b

    .line 721
    :cond_20
    #v4=(LongLo);v5=(LongHi);v6=(Integer);v11=(Null);v12=(LongLo);
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    #v6=(Boolean);
    if-eqz v6, :cond_21

    .line 727
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "Ping aborted; retry"

    #v6=(Reference);
    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    move v4, v7

    #v4=(Integer);
    goto :goto_e

    .line 728
    :cond_21
    #v4=(LongLo);v5=(LongHi);v6=(Boolean);
    const-wide/16 v11, 0x7d0

    #v11=(LongLo);v12=(LongHi);
    cmp-long v4, v4, v11

    #v4=(Byte);
    if-gez v4, :cond_22

    .line 729
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "Abort or NAT type return < 2 seconds; throwing IOException"

    #v4=(Reference);
    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 730
    throw v8

    .line 732
    :cond_22
    #v2=(LongLo);v3=(LongHi);v4=(Byte);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "NAT type IOException"

    #v6=(Reference);
    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    move v4, v7

    #v4=(Integer);
    goto :goto_e

    .line 734
    :cond_23
    #v4=(Boolean);v5=(Boolean);v11=(Null);v12=(LongLo);
    if-eqz v4, :cond_24

    const-string v4, "roken pipe"

    #v4=(Reference);
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_11

    .line 739
    :cond_24
    throw v8

    .line 742
    :cond_25
    #v5=(Integer);v6=(Boolean);v8=(Integer);v9=(Conflicted);v10=(Integer);v11=(Integer);v12=(Reference);v13=(Conflicted);v14=(Null);
    if-eqz v6, :cond_26

    .line 745
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "pingLoop waiting 60s for any pingable boxes"

    #v6=(Reference);
    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 746
    const-wide/32 v4, 0xea60

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    move v4, v10

    #v4=(Integer);
    move v5, v11

    #v5=(Integer);
    goto/16 :goto_c

    .line 747
    :cond_26
    #v4=(Boolean);v6=(Boolean);
    if-lez v8, :cond_27

    .line 750
    const-wide/16 v4, 0x7d0

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    .line 751
    add-int/lit8 v10, v10, 0x1

    move v4, v10

    #v4=(Integer);
    move v5, v11

    #v5=(Integer);
    goto/16 :goto_c

    .line 753
    :cond_27
    #v4=(Boolean);v6=(Boolean);
    if-lez v7, :cond_28

    .line 757
    const-string v4, "pingLoop waiting for initial sync of "

    #v4=(Reference);
    const-string v5, " box(es)"

    #v5=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 758
    const-wide/16 v4, 0x2710

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    move v4, v10

    #v4=(Integer);
    move v5, v11

    #v5=(Integer);
    goto/16 :goto_c

    .line 759
    :cond_28
    #v4=(Boolean);v6=(Boolean);
    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    cmp-long v4, v2, v4

    #v4=(Byte);
    if-nez v4, :cond_29

    .line 761
    const-wide/32 v4, 0xafc8

    #v4=(LongLo);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    move v4, v10

    #v4=(Integer);
    move v5, v11

    #v5=(Integer);
    goto/16 :goto_c

    .line 766
    :cond_29
    #v4=(Byte);v5=(LongHi);v6=(Boolean);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "Account mailbox sleeping for 20m"

    #v6=(Reference);
    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 767
    const-wide/32 v4, 0x124f80

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasAccountService;->sleep(JZ)V

    move v4, v10

    #v4=(Integer);
    move v5, v11

    #v5=(Integer);
    goto/16 :goto_c

    .line 772
    :cond_2a
    #v2=(Byte);v6=(Conflicted);v7=(Conflicted);v8=(LongLo);v9=(LongHi);v12=(Conflicted);v14=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    goto/16 :goto_6

    :cond_2b
    #v2=(LongLo);v5=(Reference);v6=(Boolean);v7=(PosShort);v8=(Integer);v9=(Conflicted);v10=(Null);v12=(LongLo);v13=(LongHi);v14=(Null);v21=(Reference);v22=(Reference);
    move v7, v11

    #v7=(Integer);
    goto/16 :goto_d

    :cond_2c
    #v5=(Integer);v6=(Integer);v8=(PosByte);v9=(LongHi);v10=(Integer);v12=(Reference);v13=(Integer);
    move v4, v5

    goto/16 :goto_4

    :cond_2d
    #v2=(Byte);v4=(Reference);v5=(Reference);v6=(Null);v7=(Null);v8=(LongLo);v12=(Null);v13=(Null);
    move v7, v12

    move v5, v13

    #v5=(Null);
    move-wide v2, v8

    #v2=(LongLo);
    move v8, v14

    #v8=(Null);
    goto/16 :goto_1

    .line 553
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);v22=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sleep(JZ)V
    .locals 4
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 485
    if-eqz p3, :cond_0

    .line 486
    iget-wide v0, p0, Lcom/android/emailsync/AbstractSyncService;->mMailboxId:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x1388

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 489
    :cond_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    if-eqz p3, :cond_1

    .line 494
    iget-wide v0, p0, Lcom/android/emailsync/AbstractSyncService;->mMailboxId:J

    :goto_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 497
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 493
    :catchall_0
    move-exception v0

    #v0=(Reference);
    if-eqz p3, :cond_2

    .line 494
    iget-wide v1, p0, Lcom/android/emailsync/AbstractSyncService;->mMailboxId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 493
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);
    throw v0

    .line 490
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    .line 493
    #v0=(Reference);
    if-eqz p3, :cond_1

    .line 494
    iget-wide v0, p0, Lcom/android/emailsync/AbstractSyncService;->mMailboxId:J

    #v0=(LongLo);v1=(LongHi);
    goto :goto_0
.end method


# virtual methods
.method resetHeartbeats(I)V
    .locals 4
    .parameter "legalHeartbeat"

    .prologue
    const/4 v3, 0x0

    .line 418
    #v3=(Null);
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Resetting min/max heartbeat, legal = "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 422
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    #v0=(Integer);
    if-le p1, v0, :cond_3

    .line 426
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 427
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 429
    :cond_0
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 430
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 433
    :cond_1
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    #v1=(Integer);
    if-le v0, v1, :cond_2

    .line 434
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 446
    :cond_2
    :goto_0
    #v1=(Conflicted);
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    .line 448
    iput-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 449
    return-void

    .line 436
    :cond_3
    #v1=(Reference);
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 439
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 441
    iget v0, p0, Lcom/android/exchange/EasAccountService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    #v1=(Integer);
    if-ge v0, v1, :cond_2

    .line 442
    iput p1, p0, Lcom/android/exchange/EasAccountService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 144
    #v8=(Null);
    iput v8, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/EasAccountService;->setupService()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 149
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 152
    :try_start_1
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    .line 154
    .local v2, trafficFlags:I
    #v2=(Integer);
    or-int/lit8 v3, v2, 0x0

    #v3=(Integer);
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 155
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v3=(Reference);
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v3, :cond_3

    .line 170
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/emailsync/AbstractSyncService;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    #v3=(Boolean);
    if-nez v3, :cond_9

    .line 172
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Sync finished"

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 173
    iget v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 188
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v3, "sync finished"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    .end local v2           #trafficFlags:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);
    move-exception v0

    .line 191
    .local v0, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "EmailProvider unavailable; sync ended prematurely"

    #v4=(Reference);
    new-array v5, v8, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 158
    .end local v0           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v2       #trafficFlags:I
    :cond_3
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    invoke-virtual {p0}, Lcom/android/exchange/EasAccountService;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 170
    :try_start_4
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/emailsync/AbstractSyncService;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    #v3=(Boolean);
    if-nez v3, :cond_a

    .line 172
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Sync finished"

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 173
    iget v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    #v3=(Integer);
    packed-switch v3, :pswitch_data_1

    .line 188
    :goto_2
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v3, "sync finished"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 160
    .end local v2           #trafficFlags:I
    :catch_1
    #v2=(Conflicted);v3=(Conflicted);v5=(Uninit);v6=(Uninit);
    move-exception v0

    .line 161
    .local v0, e:Lcom/android/exchange/EasAuthenticationException;
    #v0=(Reference);
    const/4 v3, 0x1

    :try_start_5
    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Caught authentication error"

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 162
    const/4 v3, 0x2

    #v3=(PosByte);
    iput v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    :try_start_6
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/emailsync/AbstractSyncService;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    #v3=(Boolean);
    if-nez v3, :cond_6

    .line 172
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 173
    iget v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    #v3=(Integer);
    packed-switch v3, :pswitch_data_2

    .line 188
    :goto_3
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v3, "sync finished"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 163
    .end local v0           #e:Lcom/android/exchange/EasAuthenticationException;
    :catch_2
    #v0=(Uninit);v3=(Conflicted);v5=(Uninit);v6=(Uninit);
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, message:Ljava/lang/String;
    #v1=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Caught IOException: "

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    if-nez v1, :cond_4

    const-string v1, "No message"

    .end local v1           #message:Ljava/lang/String;
    :cond_4
    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 166
    const/4 v3, 0x1

    #v3=(One);
    iput v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    :try_start_8
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/emailsync/AbstractSyncService;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    #v3=(Boolean);
    if-nez v3, :cond_7

    .line 172
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 173
    iget v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    #v3=(Integer);
    packed-switch v3, :pswitch_data_3

    .line 188
    :goto_4
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v3, "sync finished"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    #v0=(Uninit);v1=(Uninit);v3=(Conflicted);v5=(Uninit);v6=(Uninit);
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    #v0=(Reference);
    const-string v3, "Uncaught exception in AccountMailboxService"

    #v3=(Reference);
    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 170
    :try_start_a
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/emailsync/AbstractSyncService;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    #v3=(Boolean);
    if-nez v3, :cond_8

    .line 172
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Sync finished"

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 173
    iget v3, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    #v3=(Integer);
    packed-switch v3, :pswitch_data_4

    .line 188
    :goto_5
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v3, "sync finished"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v6=(Uninit);
    move-exception v3

    #v3=(Reference);
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/emailsync/AbstractSyncService;)V

    .line 171
    iget-boolean v4, p0, Lcom/android/exchange/EasAccountService;->mStop:Z

    #v4=(Boolean);
    if-nez v4, :cond_5

    .line 172
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "Sync finished"

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 173
    iget v4, p0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    #v4=(Integer);
    packed-switch v4, :pswitch_data_5

    .line 188
    :goto_6
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const-string v4, "sync finished"

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 170
    throw v3

    .line 184
    :cond_5
    #v4=(Boolean);v6=(Uninit);v7=(Uninit);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "Stopped sync finished."

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto :goto_6

    .line 180
    :pswitch_0
    #v4=(Integer);
    const-string v4, "Sync ended due to an exception."

    #v4=(Reference);
    invoke-virtual {p0, v4}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_6

    .line 177
    :pswitch_1
    #v4=(Integer);
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v5=(Reference);
    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 184
    .local v0, e:Lcom/android/exchange/EasAuthenticationException;
    :cond_6
    #v0=(Reference);v1=(Uninit);v3=(Boolean);v4=(Null);v5=(Reference);v6=(Uninit);v7=(Uninit);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 180
    :pswitch_2
    #v3=(Integer);
    const-string v3, "Sync ended due to an exception."

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 177
    :pswitch_3
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_3

    .line 184
    .local v0, e:Ljava/io/IOException;
    :cond_7
    #v1=(Reference);v3=(Boolean);v4=(One);v5=(Reference);v6=(Uninit);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 180
    :pswitch_4
    #v3=(Integer);
    const-string v3, "Sync ended due to an exception."

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 177
    :pswitch_5
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_4

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :cond_8
    #v1=(Uninit);v3=(Boolean);v4=(Conflicted);v5=(Uninit);v6=(Uninit);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Stopped sync finished."

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_5

    .line 180
    :pswitch_6
    #v3=(Integer);
    const-string v3, "Sync ended due to an exception."

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 177
    :pswitch_7
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_5

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #trafficFlags:I
    :cond_9
    #v0=(Uninit);v2=(Integer);v3=(Boolean);v4=(Reference);v5=(Uninit);v6=(Uninit);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Stopped sync finished."

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :pswitch_8
    #v3=(Integer);
    const-string v3, "Sync ended due to an exception."

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :pswitch_9
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1

    .line 184
    :cond_a
    #v3=(Boolean);v4=(Reference);v5=(Uninit);v6=(Uninit);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Stopped sync finished."

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 180
    :pswitch_a
    #v3=(Integer);
    const-string v3, "Sync ended due to an exception."

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 177
    :pswitch_b
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V
    :try_end_a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    .line 173
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected sendPing([BI)Lcom/android/exchange/EasResponse;
    .locals 6
    .parameter "bytes"
    .parameter "heartbeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 501
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Send ping, timeout: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasAccountService;->mPingHighWaterMark:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x73

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 504
    :cond_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    const-string v0, "Ping"

    #v0=(Reference);
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #v1=(Reference);
    add-int/lit8 v2, p2, 0x5

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x3e8

    #v4=(LongLo);v5=(LongHi);
    mul-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasAccountService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sync()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    .line 222
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v14=(Reference);
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v15=(Reference);
    iget-wide v15, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v14 .. v16}, Lcom/android/emailcommon/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 225
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v15, "0"

    #v15=(Reference);
    iput-object v15, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 227
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Account syncKey INIT to 0"

    #v16=(Reference);
    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 228
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v3, cv:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v14, "syncKey"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v15=(Reference);
    iget-object v15, v15, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v3}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 233
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_0
    #v3=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    const-string v15, "0"

    #v15=(Reference);
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 234
    .local v5, firstSync:Z
    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 235
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Initial FolderSync"

    #v16=(Reference);
    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 239
    :cond_1
    #v15=(Reference);v16=(Conflicted);
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .restart local v3       #cv:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v14, "syncInterval"

    const/4 v15, -0x2

    #v15=(Byte);
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    #v15=(Reference);
    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v16, "accountKey=? and syncInterval=-3"

    #v16=(Reference);
    const/16 v17, 0x1

    #v17=(One);
    move/from16 v0, v17

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v17, v0

    #v17=(Reference);
    const/16 v18, 0x0

    #v18=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    #v19=(LongLo);v20=(LongHi);
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    #v19=(Reference);
    aput-object v19, v17, v18

    move-object/from16 v0, v16

    #v0=(Reference);
    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    #v14=(Integer);
    if-lez v14, :cond_2

    .line 244
    const-string v14, "change ping boxes to push"

    #v14=(Reference);
    invoke-static {v14}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 249
    :cond_2
    #v14=(Conflicted);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v14=(Reference);
    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v14, :cond_3

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    #v14=(LongLo);v15=(LongHi);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v16, v0

    #v16=(LongLo);v17=(LongHi);
    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    cmp-long v14, v14, v16

    #v14=(Byte);
    if-lez v14, :cond_5

    .line 251
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Determine EAS protocol version"

    #v16=(Reference);
    aput-object v16, v14, v15

    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 254
    .local v10, resp:Lcom/android/exchange/EasResponse;
    :try_start_1
    #v10=(Reference);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 255
    .local v2, code:I
    #v2=(Integer);
    const-string v14, "OPTIONS response: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 256
    const/16 v14, 0xc8

    #v14=(PosShort);
    if-ne v2, v14, :cond_8

    .line 257
    const-string v14, "MS-ASProtocolCommands"

    #v14=(Reference);
    invoke-virtual {v10, v14}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 258
    .local v6, header:Lorg/apache/http/Header;
    #v6=(Reference);
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 259
    const-string v14, "ms-asprotocolversions"

    invoke-virtual {v10, v14}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 261
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-virtual {v0, v1, v6}, Lcom/android/exchange/EasAccountService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    :try_start_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 271
    const-string v14, "protocolVersion"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    #v15=(Reference);
    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    #v14=(DoubleLo);v15=(DoubleHi);
    const-wide/high16 v16, 0x4028

    #v16=(LongLo);v17=(LongHi);
    cmpl-double v14, v14, v16

    #v14=(Byte);
    if-ltz v14, :cond_4

    .line 273
    const-string v14, "flags"

    #v14=(Reference);
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v15=(Reference);
    iget v15, v15, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v15=(Integer);
    or-int/lit16 v15, v15, 0x80

    or-int/lit16 v15, v15, 0x800

    or-int/lit16 v15, v15, 0x1000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    #v15=(Reference);
    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :cond_4
    #v14=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v14=(Reference);
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v15=(Reference);
    invoke-virtual {v14, v15, v3}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 280
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 282
    const-string v14, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    #v15=(Reference);
    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v3}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V

    .line 302
    .end local v2           #code:I
    .end local v6           #header:Lorg/apache/http/Header;
    .end local v10           #resp:Lcom/android/exchange/EasResponse;
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v10=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v14=(Reference);
    iget v14, v14, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    #v14=(Integer);
    const/4 v15, -0x2

    #v15=(Byte);
    if-ne v14, v15, :cond_6

    .line 303
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 304
    const-string v14, "syncInterval"

    #v14=(Reference);
    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    #v15=(Reference);
    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v16, "accountKey=? and type in (0,68,66,65)"

    #v16=(Reference);
    const/16 v17, 0x1

    #v17=(One);
    move/from16 v0, v17

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v17, v0

    #v17=(Reference);
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    #v19=(LongLo);
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    #v19=(Reference);
    aput-object v19, v17, v18

    move-object/from16 v0, v16

    #v0=(Reference);
    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    #v14=(Integer);
    if-lez v14, :cond_6

    .line 308
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Push account; set pushable boxes to push..."

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 312
    :cond_6
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->isStopped()Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_7

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v14=(Reference);
    invoke-static {v14}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_d

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v14=(Reference);
    invoke-static {v14}, Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_c

    .line 316
    const/4 v14, 0x4

    #v14=(PosByte);
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I
    :try_end_4
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_4 .. :try_end_4} :catch_1

    .line 411
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #firstSync:Z
    :cond_7
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v12=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return-void

    .line 262
    .restart local v2       #code:I
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v5       #firstSync:Z
    .restart local v6       #header:Lorg/apache/http/Header;
    .restart local v10       #resp:Lcom/android/exchange/EasResponse;
    :catch_0
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(Reference);v4=(Uninit);v5=(Boolean);v6=(Reference);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Reference);v15=(Null);v16=(Reference);v18=(Null);v19=(Reference);v20=(LongHi);
    move-exception v4

    .line 265
    .local v4, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_5
    #v4=(Reference);
    new-instance v14, Ljava/io/IOException;

    #v14=(UninitRef);
    invoke-direct {v14, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #v14=(Reference);
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 297
    .end local v2           #code:I
    .end local v4           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v6           #header:Lorg/apache/http/Header;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v14

    :try_start_6
    #v14=(Reference);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V

    throw v14
    :try_end_6
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_6 .. :try_end_6} :catch_1

    .line 390
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #firstSync:Z
    .end local v10           #resp:Lcom/android/exchange/EasResponse;
    :catch_1
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-exception v4

    .line 396
    .local v4, e:Lcom/android/exchange/CommandStatusException;
    #v4=(Reference);
    iget v12, v4, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 397
    .local v12, status:I
    #v12=(Integer);
    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_16

    .line 398
    invoke-static/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->tryProvision(Lcom/android/exchange/EasSyncService;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 400
    const/4 v14, 0x4

    #v14=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    goto :goto_1

    .line 284
    .end local v4           #e:Lcom/android/exchange/CommandStatusException;
    .end local v12           #status:I
    .restart local v2       #code:I
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v5       #firstSync:Z
    .restart local v10       #resp:Lcom/android/exchange/EasResponse;
    :cond_8
    #v2=(Integer);v3=(Reference);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(PosShort);v15=(Null);v16=(Reference);v18=(Null);v19=(Reference);v20=(LongHi);
    const/16 v14, 0x1c3

    if-ne v2, v14, :cond_9

    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/exchange/EasAccountService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_9

    .line 286
    new-instance v14, Ljava/io/IOException;

    #v14=(UninitRef);
    const-string v15, "Will retry after a brief hold..."

    #v15=(Reference);
    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v14=(Reference);
    throw v14

    .line 287
    :cond_9
    #v14=(PosShort);v15=(Null);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->isProvisionError()Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_a

    .line 288
    new-instance v14, Lcom/android/exchange/CommandStatusException;

    #v14=(UninitRef);
    const/16 v15, 0x8e

    #v15=(PosShort);
    invoke-direct {v14, v15}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    #v14=(Reference);
    throw v14

    .line 289
    :cond_a
    #v14=(Boolean);v15=(Null);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->isAuthError()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 290
    const/4 v14, 0x2

    #v14=(PosByte);
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 297
    :try_start_8
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_8
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 293
    :cond_b
    :try_start_9
    #v14=(Boolean);
    const-string v14, "OPTIONS command failed; throwing IOException"

    #v14=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    .line 294
    new-instance v14, Ljava/io/IOException;

    #v14=(UninitRef);
    invoke-direct {v14}, Ljava/io/IOException;-><init>()V

    #v14=(Reference);
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 319
    .end local v2           #code:I
    .end local v10           #resp:Lcom/android/exchange/EasResponse;
    :cond_c
    #v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Boolean);v15=(Conflicted);v16=(Conflicted);
    const/4 v14, 0x1

    :try_start_a
    #v14=(One);
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    goto :goto_1

    .line 323
    :cond_d
    #v14=(Boolean);
    const/4 v14, 0x2

    #v14=(PosByte);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Sending Account syncKey: "

    #v16=(Reference);
    aput-object v16, v14, v15

    const/4 v15, 0x1

    #v15=(One);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 324
    new-instance v11, Lcom/android/exchange/adapter/Serializer;

    #v11=(UninitRef);
    invoke-direct {v11}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 325
    .local v11, s:Lcom/android/exchange/adapter/Serializer;
    #v11=(Reference);
    const/16 v14, 0x1d6

    #v14=(PosShort);
    invoke-virtual {v11, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    #v14=(Reference);
    const/16 v15, 0x1d2

    #v15=(PosShort);
    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v15=(Reference);
    iget-object v15, v15, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 327
    const-string v14, "FolderSync"

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/exchange/EasAccountService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_a
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v10

    .line 329
    .restart local v10       #resp:Lcom/android/exchange/EasResponse;
    :try_start_b
    #v10=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->isStopped()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_e

    .line 352
    :try_start_c
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_c
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_1

    .line 330
    :cond_e
    :try_start_d
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 331
    .restart local v2       #code:I
    #v2=(Integer);
    const/16 v14, 0xc8

    #v14=(PosShort);
    if-ne v2, v14, :cond_f

    .line 332
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_13

    .line 333
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 335
    .local v7, is:Ljava/io/InputStream;
    #v7=(Reference);
    new-instance v14, Lcom/android/exchange/adapter/FolderSyncParser;

    #v14=(UninitRef);
    new-instance v15, Lcom/android/exchange/adapter/AccountSyncAdapter;

    #v15=(UninitRef);
    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    #v15=(Reference);
    invoke-direct {v14, v7, v15}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    #v14=(Reference);
    invoke-virtual {v14}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_13

    .line 352
    :try_start_e
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 340
    .end local v7           #is:Ljava/io/InputStream;
    :cond_f
    :try_start_f
    #v7=(Conflicted);v14=(PosShort);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->isProvisionError()Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_10

    .line 341
    new-instance v14, Lcom/android/exchange/CommandStatusException;

    #v14=(UninitRef);
    const/16 v15, 0x8e

    #v15=(PosShort);
    invoke-direct {v14, v15}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    #v14=(Reference);
    throw v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 352
    .end local v2           #code:I
    :catchall_1
    #v2=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    move-exception v14

    :try_start_10
    #v14=(Reference);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V

    throw v14
    :try_end_10
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_10 .. :try_end_10} :catch_1

    .line 342
    .restart local v2       #code:I
    :cond_10
    :try_start_11
    #v2=(Integer);v14=(Boolean);v15=(Reference);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->isAuthError()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 343
    const/4 v14, 0x2

    #v14=(PosByte);
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 352
    :try_start_12
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_12
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_1

    .line 345
    :cond_11
    #v14=(Boolean);
    const/16 v14, 0x1c3

    #v14=(PosShort);
    if-ne v2, v14, :cond_12

    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/exchange/EasAccountService;->canHandleAccountMailboxRedirect(Lcom/android/exchange/EasResponse;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_12

    .line 352
    :try_start_14
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_14
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_0

    .line 349
    :cond_12
    :try_start_15
    #v14=(PosShort);
    const-string v14, "FolderSync response error: "

    #v14=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 352
    :cond_13
    :try_start_16
    #v14=(Conflicted);
    invoke-virtual {v10}, Lcom/android/exchange/EasResponse;->close()V

    .line 356
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 357
    const-string v14, "syncInterval"

    #v14=(Reference);
    const/4 v15, -0x2

    #v15=(Byte);
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    #v15=(Reference);
    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v16, "accountKey=? and syncInterval=-4"

    const/16 v17, 0x1

    #v17=(One);
    move/from16 v0, v17

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v17, v0

    #v17=(Reference);
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    #v19=(LongLo);
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    #v19=(Reference);
    aput-object v19, v17, v18

    move-object/from16 v0, v16

    #v0=(Reference);
    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    #v14=(Integer);
    if-lez v14, :cond_14

    .line 361
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Set push/hold boxes to push..."

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 367
    :cond_14
    #v14=(Conflicted);v15=(Reference);
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v14=(Reference);
    iget-object v8, v14, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 368
    .local v8, key:Ljava/lang/String;
    #v8=(Reference);
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_15

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    #v14=(Reference);
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v15, v15, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v14 .. v16}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v9

    .line 370
    .local v9, policy:Lcom/android/emailcommon/provider/Policy;
    #v9=(Reference);
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v14, v9}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_15

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->resetSecurityPolicies()V

    .line 376
    .end local v9           #policy:Lcom/android/emailcommon/provider/Policy;
    :cond_15
    #v9=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    #v14=(Reference);
    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_16
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_16 .. :try_end_16} :catch_1

    move-result-object v13

    .line 378
    .local v13, threadName:Ljava/lang/String;
    :try_start_17
    #v13=(Reference);
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasAccountService;->runPingLoop()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_17 .. :try_end_17} :catch_3

    .line 387
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_0

    .line 379
    :catch_2
    move-exception v4

    .line 381
    .local v4, e:Lcom/android/exchange/StaleFolderListException;
    #v4=(Reference);
    const/4 v14, 0x1

    :try_start_19
    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    const-string v16, "Ping interrupted; folder list requires sync..."

    #v16=(Reference);
    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 387
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1a .. :try_end_1a} :catch_1

    goto/16 :goto_0

    .line 382
    .end local v4           #e:Lcom/android/exchange/StaleFolderListException;
    :catch_3
    #v4=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v4

    .line 385
    .local v4, e:Lcom/android/exchange/IllegalHeartbeatException;
    :try_start_1b
    #v4=(Reference);
    iget v14, v4, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    #v14=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->resetHeartbeats(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 387
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    #v14=(Reference);
    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #e:Lcom/android/exchange/IllegalHeartbeatException;
    :catchall_2
    #v4=(Conflicted);v14=(Conflicted);
    move-exception v14

    #v14=(Reference);
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    #v15=(Reference);
    invoke-virtual {v15, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v14
    :try_end_1c
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1c .. :try_end_1c} :catch_1

    .line 403
    .end local v2           #code:I
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #firstSync:Z
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #resp:Lcom/android/exchange/EasResponse;
    .end local v11           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v13           #threadName:Ljava/lang/String;
    .local v4, e:Lcom/android/exchange/CommandStatusException;
    .restart local v12       #status:I
    :cond_16
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Integer);v13=(Conflicted);v14=(Boolean);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 404
    const/4 v14, 0x5

    #v14=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1

    .line 407
    :cond_17
    #v0=(Conflicted);v14=(Boolean);
    const/4 v14, 0x1

    #v14=(One);
    new-array v14, v14, [Ljava/lang/String;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    new-instance v16, Ljava/lang/StringBuilder;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #v16=(Reference);
    const-string v17, "Unexpected status: "

    #v17=(Reference);
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v14}, Lcom/android/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 408
    const/4 v14, 0x3

    #v14=(PosByte);
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/emailsync/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1
.end method
