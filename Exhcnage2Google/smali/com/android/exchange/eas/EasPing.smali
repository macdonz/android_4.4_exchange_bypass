.class public Lcom/android/exchange/eas/EasPing;
.super Lcom/android/exchange/eas/EasOperation;
.source "EasPing.java"


# instance fields
.field private final mAccountId:J

.field private final mAmAccount:Landroid/accounts/Account;

.field private mPingDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "amAccount"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 100
    #p0=(Reference);
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    .line 101
    iput-object p3, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    .line 102
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    iput-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    .line 103
    iget-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 104
    const-wide/16 v0, 0x1e0

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    .line 106
    :cond_0
    #v0=(Conflicted);
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "initial ping duration "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " account "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 107
    return-void
.end method

.method private decreasePingDuration()V
    .locals 6

    .prologue
    .line 123
    const-wide/16 v0, 0x1e0

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x12c

    #v4=(LongLo);v5=(LongHi);
    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    .line 125
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "decreasePingDuration adjusting by 300 new duration "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " account "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    invoke-direct {p0}, Lcom/android/exchange/eas/EasPing;->storePingDuration()V

    .line 128
    return-void
.end method

.method private handleOneMailbox(Lcom/android/exchange/adapter/Serializer;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter "s"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    #v0=(Reference);
    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    #v0=(Reference);
    iget v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v1=(Integer);
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 306
    if-nez p1, :cond_0

    .line 310
    new-instance p1, Lcom/android/exchange/adapter/Serializer;

    .end local p1
    #p1=(UninitRef);
    invoke-direct {p1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 311
    .restart local p1
    #p1=(Reference);
    const/16 v0, 0x345

    #v0=(PosShort);
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 312
    const/16 v0, 0x348

    iget-wide v1, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 313
    const/16 v0, 0x349

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 315
    :cond_0
    #v2=(Conflicted);
    const/16 v0, 0x34a

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 316
    const/16 v0, 0x34b

    iget-object v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 317
    const/16 v0, 0x34c

    iget v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v1=(Integer);
    invoke-static {v1}, Lcom/android/exchange/Eas;->getFolderClass(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 318
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 321
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-object p1
.end method

.method private increasePingDuration()V
    .locals 6

    .prologue
    .line 131
    const-wide/16 v0, 0x690

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x12c

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    .line 133
    const-string v0, "Exchange"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "increasePingDuration adjusting by 300 new duration "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " account "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    invoke-direct {p0}, Lcom/android/exchange/eas/EasPing;->storePingDuration()V

    .line 136
    return-void
.end method

.method private requestFolderSync()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 419
    #v6=(One);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 420
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "__account_only__"

    #v1=(Reference);
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    iget-object v1, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 422
    const-string v1, "Exchange"

    const-string v2, "requestFolderSync EasOperation %s, %s"

    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    return-void
.end method

.method public static requestPing(Landroid/accounts/Account;)V
    .locals 7
    .parameter "amAccount"

    .prologue
    const/4 v6, 0x1

    .line 427
    #v6=(One);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 428
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "__push_only__"

    #v1=(Reference);
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 430
    const-string v1, "Exchange"

    const-string v2, "requestPing EasOperation %s, %s"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    return-void
.end method

.method private requestSyncForSyncList(Ljava/util/ArrayList;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, syncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v4, v0, [Ljava/lang/String;

    .line 331
    .local v4, bindArguments:[Ljava/lang/String;
    #v4=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iget-wide v1, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    aput-object v1, v4, v0

    .line 333
    new-instance v12, Ljava/util/ArrayList;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v12, mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    #v12=(Reference);
    new-instance v8, Ljava/util/HashSet;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 336
    .local v8, contentTypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    #v8=(Reference);
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Reference);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Ljava/lang/String;

    .line 337
    .local v13, serverId:Ljava/lang/String;
    const/4 v0, 0x1

    #v0=(One);
    aput-object v13, v4, v0

    .line 339
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "accountKey=? and serverId=?"

    #v3=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    if-nez v6, :cond_1

    .line 399
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #serverId:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v13=(Conflicted);
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    #v14=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 400
    .local v14, type:I
    #v14=(Integer);
    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v14}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/eas/EasPing;->requestNoOpSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v14           #type:I
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v13       #serverId:Ljava/lang/String;
    :cond_1
    :try_start_0
    #v2=(Reference);v3=(Reference);v5=(Null);v6=(Reference);v13=(Reference);v14=(Uninit);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 389
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 390
    .local v10, mailboxId:J
    #v10=(LongLo);v11=(LongHi);
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 391
    .local v7, contentType:I
    #v7=(Integer);
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v7           #contentType:I
    .end local v10           #mailboxId:J
    :cond_2
    #v0=(Conflicted);v7=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 412
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #serverId:Ljava/lang/String;
    :cond_3
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    iget-object v0, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    #v0=(Reference);
    invoke-static {v0, v12}, Lcom/android/exchange/eas/EasPing;->requestSyncForMailboxes(Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 413
    return-void

    .line 400
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private storePingDuration()V
    .locals 5

    .prologue
    .line 139
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 140
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "pingDuration"

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    iget-object v1, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 142
    return-void
.end method


# virtual methods
.method protected addPolicyKeyHeaderToRequest()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public final doPing()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 110
    #v5=(One);
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 111
    .local v1, startTime:J
    #v1=(LongLo);v2=(LongHi);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p0, v6}, Lcom/android/exchange/eas/EasPing;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    .line 112
    .local v0, result:I
    #v0=(Integer);
    const/4 v6, -0x2

    #v6=(Byte);
    if-ne v0, v6, :cond_1

    move v0, v5

    .line 119
    .end local v0           #result:I
    :cond_0
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return v0

    .line 114
    .restart local v0       #result:I
    :cond_1
    #v3=(Uninit);v4=(Uninit);v5=(One);v6=(Byte);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const/4 v6, -0x4

    if-ne v0, v6, :cond_0

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    sub-long v3, v6, v1

    .line 116
    .local v3, timeoutDuration:J
    #v3=(LongLo);v4=(LongHi);
    const-string v6, "Exchange"

    #v6=(Reference);
    const-string v7, "doPing request failure, timed out after %d millis"

    #v7=(Reference);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v5, v8

    invoke-static {v6, v7, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    invoke-direct {p0}, Lcom/android/exchange/eas/EasPing;->decreasePingDuration()V

    goto :goto_0
.end method

.method public final getAccountId()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public final getAmAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    #v0=(Reference);
    return-object v0
.end method

.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "Ping"

    #v0=(Reference);
    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v3, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxesForPush(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    .line 162
    .local v0, c:Landroid/database/Cursor;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    #v3=(UninitRef);
    const-string v4, "Could not read mailboxes"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 167
    :cond_0
    #v4=(LongLo);
    const/4 v2, 0x0

    .line 169
    .local v2, s:Lcom/android/exchange/adapter/Serializer;
    :goto_0
    :try_start_0
    #v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 170
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 171
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 172
    invoke-direct {p0, v2, v1}, Lcom/android/exchange/eas/EasPing;->handleOneMailbox(Lcom/android/exchange/adapter/Serializer;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/exchange/adapter/Serializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 173
    goto :goto_0

    .line 175
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :catchall_0
    #v1=(Conflicted);v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    #v3=(Boolean);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    if-nez v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasPing;->abort()V

    .line 180
    new-instance v3, Ljava/io/IOException;

    #v3=(UninitRef);
    const-string v4, "No mailboxes want push"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 184
    :cond_2
    #v3=(Boolean);v4=(LongLo);
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/exchange/eas/EasPing;->makeEntity(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    return-object v3
.end method

.method protected getTimeout()J
    .locals 4

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x3e8

    #v2=(LongLo);v3=(LongHi);
    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected handleResponse(Lcom/android/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 11
    .parameter "response"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    .line 191
    #v9=(Null);
    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 193
    new-instance v4, Ljava/io/IOException;

    #v4=(UninitRef);
    const-string v5, "Empty ping response"

    #v5=(Reference);
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 197
    :cond_0
    #v4=(Boolean);v5=(Uninit);
    new-instance v3, Lcom/android/exchange/adapter/PingParser;

    #v3=(UninitRef);
    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    #v4=(Reference);
    invoke-direct {v3, v4}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v3, pp:Lcom/android/exchange/adapter/PingParser;
    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    .line 199
    invoke-virtual {v3}, Lcom/android/exchange/adapter/PingParser;->getPingStatus()I

    move-result v2

    .line 204
    .local v2, pingStatus:I
    #v2=(Integer);
    sparse-switch v2, :sswitch_data_0

    .line 279
    .end local v2           #pingStatus:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v2

    .line 206
    .restart local v2       #pingStatus:I
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Ping expired for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    invoke-direct {p0}, Lcom/android/exchange/eas/EasPing;->increasePingDuration()V

    goto :goto_0

    .line 211
    :sswitch_1
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Ping found changed folders for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    invoke-virtual {v3}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exchange/eas/EasPing;->requestSyncForSyncList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 219
    :sswitch_2
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Bad ping request for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 222
    :sswitch_3
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-virtual {v3}, Lcom/android/exchange/adapter/PingParser;->getHeartbeatInterval()I

    move-result v4

    #v4=(Integer);
    int-to-long v0, v4

    .line 223
    .local v0, newDuration:J
    #v0=(LongLo);v1=(LongHi);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Heartbeat out of bounds for account %d, old duration %d new duration %d"

    #v5=(Reference);
    const/4 v6, 0x3

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    #v7=(LongLo);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v10

    const/4 v7, 0x2

    #v7=(PosByte);
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    iput-wide v0, p0, Lcom/android/exchange/eas/EasPing;->mPingDuration:J

    .line 226
    invoke-direct {p0}, Lcom/android/exchange/eas/EasPing;->storePingDuration()V

    goto :goto_0

    .line 229
    .end local v0           #newDuration:J
    :sswitch_4
    #v0=(Uninit);v1=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Too many folders for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 232
    :sswitch_5
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "FolderSync needed for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    invoke-direct {p0}, Lcom/android/exchange/eas/EasPing;->requestFolderSync()V

    goto/16 :goto_0

    .line 236
    :sswitch_6
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Server error for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 240
    :sswitch_7
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Retryable server error for account %d"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    iget-wide v7, p0, Lcom/android/exchange/eas/EasPing;->mAccountId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    const/4 v2, -0x2

    #v2=(Byte);
    goto/16 :goto_0

    .line 253
    :sswitch_8
    #v2=(Integer);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Unexpected error %d on ping"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    const/4 v2, -0x7

    #v2=(Byte);
    goto/16 :goto_0

    .line 272
    :sswitch_9
    #v2=(Integer);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    const-string v4, "Exchange"

    const-string v5, "Unexpected error %d on ping"

    #v5=(Reference);
    new-array v6, v10, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    const/16 v2, -0xa

    #v2=(Byte);
    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x6f -> :sswitch_7
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
        0x80 -> :sswitch_8
        0x81 -> :sswitch_8
        0x82 -> :sswitch_8
        0x83 -> :sswitch_8
        0x84 -> :sswitch_9
        0x85 -> :sswitch_9
        0x86 -> :sswitch_9
        0x87 -> :sswitch_9
        0x88 -> :sswitch_9
        0x89 -> :sswitch_9
        0x8a -> :sswitch_9
        0x8b -> :sswitch_8
        0x8c -> :sswitch_9
        0x8d -> :sswitch_8
        0x8e -> :sswitch_9
        0x8f -> :sswitch_9
        0x90 -> :sswitch_9
        0x91 -> :sswitch_9
        0x93 -> :sswitch_9
        0x94 -> :sswitch_9
        0x96 -> :sswitch_9
        0xb1 -> :sswitch_8
    .end sparse-switch
.end method
