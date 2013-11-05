.class public abstract Lcom/android/exchange/service/EasSyncHandler;
.super Lcom/android/exchange/service/EasServerConnection;
.source "EasSyncHandler.java"


# instance fields
.field protected final mContentResolver:Landroid/content/ContentResolver;

.field protected final mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected final mSyncExtras:Landroid/os/Bundle;

.field protected final mSyncResult:Landroid/content/SyncResult;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "context"
    .parameter "contentResolver"
    .parameter "account"
    .parameter "mailbox"
    .parameter "syncExtras"
    .parameter "syncResult"

    .prologue
    .line 102
    invoke-direct {p0, p1, p3}, Lcom/android/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 103
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    iput-object p4, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 105
    iput-object p5, p0, Lcom/android/exchange/service/EasSyncHandler;->mSyncExtras:Landroid/os/Bundle;

    .line 106
    iput-object p6, p0, Lcom/android/exchange/service/EasSyncHandler;->mSyncResult:Landroid/content/SyncResult;

    .line 107
    return-void
.end method

.method private buildEasRequest(Ljava/lang/String;ZI)Lcom/android/exchange/adapter/Serializer;
    .locals 8
    .parameter "syncKey"
    .parameter "initialSync"
    .parameter "numWindows"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/exchange/service/EasSyncHandler;->getFolderClassName()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, className:Ljava/lang/String;
    #v0=(Reference);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "Syncing account %d mailbox %d (class %s) with syncKey %s"

    #v3=(Reference);
    const/4 v4, 0x4

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v6, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v6=(Reference);
    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    const/4 v5, 0x1

    #v5=(One);
    iget-object v6, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    const/4 v5, 0x2

    #v5=(PosByte);
    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 273
    .local v1, s:Lcom/android/exchange/adapter/Serializer;
    #v1=(Reference);
    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 274
    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 275
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 277
    invoke-virtual {p0}, Lcom/android/exchange/service/EasSyncHandler;->getProtocolVersion()D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    const-wide v4, 0x4028333333333333L

    #v4=(LongLo);v5=(LongHi);
    cmpg-double v2, v2, v4

    #v2=(Byte);
    if-gez v2, :cond_0

    .line 278
    const/16 v2, 0x10

    #v2=(PosByte);
    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 280
    :cond_0
    #v2=(Byte);
    const/16 v2, 0xb

    #v2=(PosByte);
    invoke-virtual {v1, v2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 281
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 282
    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/exchange/service/EasSyncHandler;->setInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;)V

    .line 288
    :goto_0
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 290
    return-object v1

    .line 285
    :cond_1
    #v2=(PosByte);
    invoke-virtual {p0, v1, p3}, Lcom/android/exchange/service/EasSyncHandler;->setNonInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;I)V

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/exchange/service/EasSyncHandler;->setUpsyncCommands(Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_0
.end method

.method public static getEasSyncHandler(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)Lcom/android/exchange/service/EasSyncHandler;
    .locals 8
    .parameter "context"
    .parameter "contentResolver"
    .parameter "accountManagerAccount"
    .parameter "account"
    .parameter "mailbox"
    .parameter "syncExtras"
    .parameter "syncResult"

    .prologue
    .line 127
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 128
    iget v0, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 145
    :cond_0
    #v0=(Conflicted);
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Invalid mailbox type %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget v4, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    const/4 v0, 0x0

    :goto_0
    #v3=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-object v0

    .line 134
    :sswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    new-instance v0, Lcom/android/exchange/service/EasMailboxSyncHandler;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move-object v4, p4

    #v4=(Reference);
    move-object v5, p5

    #v5=(Reference);
    move-object v6, p6

    #v6=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/service/EasMailboxSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    #v0=(Reference);
    goto :goto_0

    .line 137
    :sswitch_1
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v0, Lcom/android/exchange/service/EasCalendarSyncHandler;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    move-object v4, p3

    #v4=(Reference);
    move-object v5, p4

    #v5=(Reference);
    move-object v6, p5

    #v6=(Reference);
    move-object v7, p6

    #v7=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/service/EasCalendarSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    #v0=(Reference);
    goto :goto_0

    .line 140
    :sswitch_2
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    new-instance v0, Lcom/android/exchange/service/EasContactsSyncHandler;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    move-object v4, p3

    #v4=(Reference);
    move-object v5, p4

    #v5=(Reference);
    move-object v6, p5

    #v6=(Reference);
    move-object v7, p6

    #v7=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/service/EasContactsSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    #v0=(Reference);
    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x41 -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private parse(Lcom/android/exchange/EasResponse;)I
    .locals 5
    .parameter "resp"

    .prologue
    const/4 v3, -0x1

    .line 301
    :try_start_0
    #v3=(Byte);
    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p0, v4}, Lcom/android/exchange/service/EasSyncHandler;->getParser(Ljava/io/InputStream;)Lcom/android/exchange/adapter/AbstractSyncParser;

    move-result-object v2

    .line 302
    .local v2, parser:Lcom/android/exchange/adapter/AbstractSyncParser;
    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->parse()Z
    :try_end_0
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 303
    .local v1, moreAvailable:Z
    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 304
    const/4 v3, 0x1

    .line 313
    .end local v1           #moreAvailable:Z
    .end local v2           #parser:Lcom/android/exchange/adapter/AbstractSyncParser;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return v3

    .line 308
    :catch_0
    #v0=(Uninit);v1=(Uninit);
    move-exception v0

    .line 309
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    #v0=(Uninit);
    move-exception v0

    .line 311
    .local v0, e:Lcom/android/exchange/CommandStatusException;
    #v0=(Reference);
    goto :goto_0

    .line 306
    .end local v0           #e:Lcom/android/exchange/CommandStatusException;
    :catch_2
    #v0=(Uninit);
    move-exception v3

    .line 313
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method

.method private performOneSync(Landroid/content/SyncResult;I)I
    .locals 17
    .parameter "syncResult"
    .parameter "numWindows"

    .prologue
    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/service/EasSyncHandler;->getSyncKey()Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, syncKey:Ljava/lang/String;
    #v9=(Reference);
    if-nez v9, :cond_1

    .line 326
    const/4 v7, -0x1

    .line 382
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return v7

    .line 328
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    const-string v12, "0"

    #v12=(Reference);
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 332
    .local v4, initialSync:Z
    :try_start_0
    #v4=(Boolean);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, p2

    #v1=(Integer);
    invoke-direct {v0, v9, v4, v1}, Lcom/android/exchange/service/EasSyncHandler;->buildEasRequest(Ljava/lang/String;ZI)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    .line 333
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    #v8=(Reference);
    if-eqz v4, :cond_2

    const-wide/32 v10, 0x1d4c0

    .line 334
    .local v10, timeout:J
    :goto_1
    #v10=(LongLo);v11=(LongHi);
    const-string v12, "Sync"

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    #v13=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lcom/android/exchange/service/EasSyncHandler;->sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 343
    .local v6, resp:Lcom/android/exchange/EasResponse;
    :try_start_1
    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 344
    .local v2, code:I
    #v2=(Integer);
    const/16 v12, 0xc8

    #v12=(PosShort);
    if-ne v2, v12, :cond_4

    .line 348
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v12

    #v12=(Boolean);
    if-nez v12, :cond_3

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/service/EasSyncHandler;->parse(Lcom/android/exchange/EasResponse;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 373
    .local v7, result:I
    :goto_2
    #v5=(Conflicted);v7=(Integer);v13=(Conflicted);v14=(Conflicted);
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->close()V

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/service/EasSyncHandler;->cleanup(I)V

    .line 378
    if-eqz v4, :cond_0

    const/4 v12, -0x1

    #v12=(Byte);
    if-eq v7, v12, :cond_0

    goto :goto_0

    .line 333
    .end local v2           #code:I
    .end local v6           #resp:Lcom/android/exchange/EasResponse;
    .end local v7           #result:I
    .end local v10           #timeout:J
    :cond_2
    #v2=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Reference);v13=(Uninit);v14=(Uninit);
    const-wide/16 v10, 0x7530

    #v10=(LongLo);v11=(LongHi);
    goto :goto_1

    .line 335
    .end local v8           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_0
    #v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);
    move-exception v3

    .line 336
    .local v3, e:Ljava/io/IOException;
    #v3=(Reference);
    const-string v12, "Exchange"

    const-string v13, "Sync error:"

    #v13=(Reference);
    const/4 v14, 0x0

    #v14=(Null);
    new-array v14, v14, [Ljava/lang/Object;

    #v14=(Reference);
    invoke-static {v12, v3, v13, v14}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    #v13=(LongLo);v14=(LongHi);
    const-wide/16 v15, 0x1

    #v15=(LongLo);v16=(LongHi);
    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    .line 338
    const/4 v7, -0x1

    #v7=(Byte);
    goto :goto_0

    .line 351
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #code:I
    .restart local v6       #resp:Lcom/android/exchange/EasResponse;
    .restart local v8       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v10       #timeout:J
    :cond_3
    #v2=(Integer);v3=(Uninit);v6=(Reference);v7=(Uninit);v8=(Reference);v10=(LongLo);v11=(LongHi);v12=(Boolean);v13=(Reference);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    const/4 v7, 0x0

    .restart local v7       #result:I
    #v7=(Null);
    goto :goto_2

    .line 354
    .end local v7           #result:I
    :cond_4
    :try_start_2
    #v7=(Uninit);v12=(PosShort);
    const-string v12, "Exchange"

    #v12=(Reference);
    new-instance v13, Ljava/lang/StringBuilder;

    #v13=(UninitRef);
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #v13=(Reference);
    const-string v14, "Sync failed with Status: "

    #v14=(Reference);
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    #v14=(Null);
    new-array v14, v14, [Ljava/lang/Object;

    #v14=(Reference);
    invoke-static {v12, v13, v14}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->isProvisionError()Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_6

    .line 356
    new-instance v5, Lcom/android/exchange/eas/EasProvision;

    #v5=(UninitRef);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v12=(Reference);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v13=(LongLo);v14=(LongHi);
    move-object/from16 v0, p0

    invoke-direct {v5, v12, v13, v14, v0}, Lcom/android/exchange/eas/EasProvision;-><init>(Landroid/content/Context;JLcom/android/exchange/service/EasServerConnection;)V

    .line 357
    .local v5, provision:Lcom/android/exchange/eas/EasProvision;
    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v12=(LongLo);v13=(LongHi);
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v12, v13}, Lcom/android/exchange/eas/EasProvision;->provision(Landroid/content/SyncResult;J)Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_5

    .line 359
    const/4 v7, 0x1

    .restart local v7       #result:I
    #v7=(One);
    goto :goto_2

    .line 361
    .end local v7           #result:I
    :cond_5
    #v7=(Uninit);
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #v12=(Reference);
    iget-wide v13, v12, Landroid/content/SyncStats;->numAuthExceptions:J

    #v13=(LongLo);
    const-wide/16 v15, 0x1

    #v15=(LongLo);v16=(LongHi);
    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    const/4 v7, -0x1

    .line 373
    .end local v5           #provision:Lcom/android/exchange/eas/EasProvision;
    :goto_3
    #v5=(Conflicted);v7=(Byte);
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 364
    :cond_6
    :try_start_3
    #v5=(Uninit);v7=(Uninit);v12=(Boolean);v13=(Reference);v14=(Reference);v15=(Uninit);v16=(Uninit);
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->isAuthError()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 365
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #v12=(Reference);
    iget-wide v13, v12, Landroid/content/SyncStats;->numAuthExceptions:J

    #v13=(LongLo);v14=(LongHi);
    const-wide/16 v15, 0x1

    #v15=(LongLo);v16=(LongHi);
    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 366
    const/4 v7, -0x1

    #v7=(Byte);
    goto :goto_3

    .line 368
    :cond_7
    #v7=(Uninit);v12=(Boolean);v13=(Reference);v14=(Reference);v15=(Uninit);v16=(Uninit);
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #v12=(Reference);
    iget-wide v13, v12, Landroid/content/SyncStats;->numParseExceptions:J

    #v13=(LongLo);v14=(LongHi);
    const-wide/16 v15, 0x1

    #v15=(LongLo);v16=(LongHi);
    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    const/4 v7, -0x1

    #v7=(Byte);
    goto :goto_3

    .line 373
    .end local v2           #code:I
    :catchall_0
    #v2=(Conflicted);v5=(Conflicted);v7=(Uninit);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v12

    #v12=(Reference);
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->close()V

    throw v12
.end method


# virtual methods
.method protected abstract cleanup(I)V
.end method

.method protected abstract getFolderClassName()Ljava/lang/String;
.end method

.method protected abstract getParser(Ljava/io/InputStream;)Lcom/android/exchange/adapter/AbstractSyncParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getSyncKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 171
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .line 168
    :cond_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string v1, "0"

    #v1=(Reference);
    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 171
    :cond_1
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract getTrafficFlag()I
.end method

.method public final performSync(Landroid/content/SyncResult;)V
    .locals 10
    .parameter "syncResult"

    .prologue
    const/4 v9, 0x1

    .line 397
    #v9=(One);
    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v6=(Reference);
    invoke-static {v5, v6}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v4

    .line 398
    .local v4, trafficFlags:I
    #v4=(Integer);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasSyncHandler;->getTrafficFlag()I

    move-result v5

    #v5=(Integer);
    or-int/2addr v5, v4

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 402
    const/4 v3, 0x1

    .line 403
    .local v3, result:I
    #v3=(One);
    const/4 v2, 0x0

    .line 404
    .local v2, numWindows:I
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasSyncHandler;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, key:Ljava/lang/String;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Integer);v3=(Integer);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-ne v3, v9, :cond_1

    .line 406
    invoke-direct {p0, p1, v2}, Lcom/android/exchange/service/EasSyncHandler;->performOneSync(Landroid/content/SyncResult;I)I

    move-result v3

    .line 408
    add-int/lit8 v2, v2, 0x1

    .line 409
    invoke-virtual {p0}, Lcom/android/exchange/service/EasSyncHandler;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, newKey:Ljava/lang/String;
    #v1=(Reference);
    if-ne v3, v9, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 411
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Server has more data but we have the same key: %s numWindows: %d"

    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v0, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 414
    add-int/lit8 v2, v2, 0x1

    .line 418
    :goto_1
    #v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-object v0, v1

    .line 419
    goto :goto_0

    .line 416
    :cond_0
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_1

    .line 420
    .end local v1           #newKey:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v2=(Integer);
    return-void
.end method

.method protected abstract setInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setNonInitialSyncOptions(Lcom/android/exchange/adapter/Serializer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPimSyncOptions(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;I)V
    .locals 4
    .parameter "s"
    .parameter "filter"
    .parameter "windowSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/16 v0, 0x1e

    #v0=(PosByte);
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 236
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 237
    const/16 v0, 0x15

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 238
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 240
    if-eqz p2, :cond_0

    .line 241
    const/16 v0, 0x18

    invoke-virtual {p1, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/service/EasSyncHandler;->getProtocolVersion()D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    const-wide/high16 v2, 0x4028

    #v2=(LongLo);v3=(LongHi);
    cmpl-double v0, v0, v2

    #v0=(Byte);
    if-ltz v0, :cond_1

    .line 245
    const/16 v0, 0x445

    #v0=(PosShort);
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 247
    const/16 v0, 0x446

    const-string v1, "1"

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 248
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 249
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 253
    :goto_0
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 254
    return-void

    .line 251
    :cond_1
    #v0=(Byte);v1=(DoubleHi);
    const/16 v0, 0x19

    #v0=(PosByte);
    const-string v1, "7"

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method protected abstract setUpsyncCommands(Lcom/android/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
