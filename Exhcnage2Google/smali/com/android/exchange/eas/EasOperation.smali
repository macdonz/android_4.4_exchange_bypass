.class public abstract Lcom/android/exchange/eas/EasOperation;
.super Ljava/lang/Object;
.source "EasOperation.java"


# instance fields
.field protected final mAccountId:J

.field private final mConnection:Lcom/android/exchange/service/EasServerConnection;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;JLcom/android/exchange/service/EasServerConnection;)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "connection"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    .line 110
    iput-wide p2, p0, Lcom/android/exchange/eas/EasOperation;->mAccountId:J

    .line 111
    iput-object p4, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    .line 112
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 119
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 120
    #p0=(Reference);
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "hostAuth"

    .prologue
    .line 115
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    new-instance v2, Lcom/android/exchange/service/EasServerConnection;

    #v2=(UninitRef);
    invoke-direct {v2, p1, p2, p3}, Lcom/android/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    #v2=(Reference);
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;JLcom/android/exchange/service/EasServerConnection;)V

    .line 116
    #p0=(Reference);
    return-void
.end method

.method protected constructor <init>(Lcom/android/exchange/eas/EasOperation;)V
    .locals 4
    .parameter "parentOperation"

    .prologue
    .line 128
    iget-object v0, p1, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-wide v1, p1, Lcom/android/exchange/eas/EasOperation;->mAccountId:J

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p1, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v3=(Reference);
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;JLcom/android/exchange/service/EasServerConnection;)V

    .line 129
    #p0=(Reference);
    return-void
.end method

.method private final makeRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, requestUri:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/exchange/service/EasServerConnection;->makeOptions()Lorg/apache/http/client/methods/HttpOptions;

    move-result-object v1

    .line 339
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getRequestEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getRequestContentType()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->addPolicyKeyHeaderToRequest()Z

    move-result v4

    #v4=(Boolean);
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/exchange/service/EasServerConnection;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    goto :goto_0
.end method

.method protected static requestNoOpSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "amAccount"
    .parameter "authority"

    .prologue
    const/4 v6, 0x1

    .line 579
    #v6=(One);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 580
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "__noop__"

    #v1=(Reference);
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 582
    const-string v1, "Exchange"

    const-string v2, "requestSync EasOperation requestNoOpSync %s, %s"

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

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 584
    return-void
.end method

.method protected static requestSyncForMailboxes(Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "amAccount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 563
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 564
    const-string v1, "Exchange"

    const-string v2, "requestSync EasOperation requestSyncForMailboxes  %s, %s"

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

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 566
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/exchange/service/EasServerConnection;->stop(I)V

    .line 137
    return-void
.end method

.method protected final addDeviceInformationToSerlializer(Lcom/android/exchange/adapter/Serializer;)V
    .locals 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v4, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v4=(Reference);
    const-string v5, "phone"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 489
    .local v3, tm:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_3

    .line 490
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, deviceId:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, phoneNumber:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, operator:Ljava/lang/String;
    :goto_0
    #v1=(Reference);
    const/16 v4, 0x496

    #v4=(PosShort);
    invoke-virtual {p1, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    #v4=(Reference);
    const/16 v5, 0x488

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 503
    const/16 v4, 0x497

    #v4=(PosShort);
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {p1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 504
    if-eqz v0, :cond_0

    .line 505
    const/16 v4, 0x498

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 509
    :cond_0
    const/16 v4, 0x49a

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Android "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 510
    if-eqz v2, :cond_1

    .line 511
    const/16 v4, 0x49c

    invoke-virtual {p1, v4, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 518
    :cond_1
    const/16 v4, 0x4a0

    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 519
    if-eqz v1, :cond_2

    .line 520
    const/16 v4, 0x4a2

    invoke-virtual {p1, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 522
    :cond_2
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 523
    return-void

    .line 494
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v1           #operator:Ljava/lang/String;
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v6=(Uninit);
    const/4 v0, 0x0

    .line 495
    .restart local v0       #deviceId:Ljava/lang/String;
    #v0=(Null);
    const/4 v2, 0x0

    .line 496
    .restart local v2       #phoneNumber:Ljava/lang/String;
    #v2=(Null);
    const/4 v1, 0x0

    .restart local v1       #operator:Ljava/lang/String;
    #v1=(Null);
    goto :goto_0
.end method

.method protected addPolicyKeyHeaderToRequest()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected abstract getCommand()Ljava/lang/String;
.end method

.method protected final getProtocolVersion()D
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/service/EasServerConnection;->getProtocolVersion()D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    return-wide v0
.end method

.method protected getRequestContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    const-string v0, "application/vnd.ms-sync.wbxml"

    #v0=(Reference);
    return-object v0
.end method

.method protected abstract getRequestEntity()Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getRequestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getCommand()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeout()J
    .locals 2

    .prologue
    .line 412
    const-wide/16 v0, 0x7530

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method protected final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleForbidden()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method protected handleProvisionError(Landroid/content/SyncResult;J)Z
    .locals 2
    .parameter "syncResult"
    .parameter "accountId"

    .prologue
    .line 432
    new-instance v0, Lcom/android/exchange/eas/EasProvision;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/eas/EasProvision;-><init>(Lcom/android/exchange/eas/EasOperation;)V

    .line 433
    .local v0, provisionOperation:Lcom/android/exchange/eas/EasProvision;
    #v0=(Reference);
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/eas/EasProvision;->provision(Landroid/content/SyncResult;J)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method protected abstract handleResponse(Lcom/android/exchange/EasResponse;Landroid/content/SyncResult;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final makeEntity(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;
    .locals 2
    .parameter "s"

    .prologue
    .line 444
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    #v0=(UninitRef);
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #v0=(Reference);
    return-object v0
.end method

.method protected final performOperation(Landroid/content/SyncResult;)I
    .locals 10
    .parameter "syncResult"

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 177
    .local v2, redirectCount:I
    :cond_0
    :try_start_0
    #v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->registerClientCert()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 178
    iget-object v5, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v5=(Reference);
    invoke-direct {p0}, Lcom/android/exchange/eas/EasOperation;->makeRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getTimeout()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/exchange/service/EasServerConnection;->executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 221
    .local v3, response:Lcom/android/exchange/EasResponse;
    :try_start_1
    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->isSuccess()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    .line 223
    :try_start_2
    invoke-virtual {p0, v3, p1}, Lcom/android/exchange/eas/EasOperation;->handleResponse(Lcom/android/exchange/EasResponse;Landroid/content/SyncResult;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 224
    .local v4, result:I
    #v4=(Integer);
    if-ltz v4, :cond_8

    .line 291
    .end local v4           #result:I
    :goto_0
    #v0=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    .line 301
    .end local v3           #response:Lcom/android/exchange/EasResponse;
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);
    return v4

    .line 180
    :cond_1
    :try_start_3
    #v0=(Uninit);v1=(Uninit);v4=(Conflicted);v5=(Boolean);v9=(Uninit);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Problem registering client cert"

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    if-eqz p1, :cond_2

    .line 183
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    :cond_2
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v4, -0x8

    #v4=(Byte);
    goto :goto_1

    .line 187
    :catch_0
    #v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    iget-object v5, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/exchange/service/EasServerConnection;->getStoppedReason()I

    move-result v5

    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, message:Ljava/lang/String;
    #v1=(Reference);
    if-nez v1, :cond_3

    .line 200
    const-string v1, "(no message)"

    .line 202
    :cond_3
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "IOException while sending request: %s"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    if-eqz p1, :cond_4

    .line 204
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 206
    :cond_4
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v4, -0x4

    #v4=(Byte);
    goto :goto_1

    .line 191
    .end local v1           #message:Ljava/lang/String;
    :pswitch_0
    #v1=(Uninit);v4=(Conflicted);v5=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    goto :goto_1

    .line 193
    :pswitch_1
    #v4=(Conflicted);
    const/4 v4, -0x2

    #v4=(Byte);
    goto :goto_1

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    #v0=(Uninit);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IllegalStateException;
    #v0=(Reference);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Exception while sending request"

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v0, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    if-eqz p1, :cond_5

    .line 212
    const/4 v5, 0x1

    #v5=(One);
    iput-boolean v5, p1, Landroid/content/SyncResult;->databaseError:Z

    .line 214
    :cond_5
    #v5=(Conflicted);
    const/16 v4, -0xa

    #v4=(Byte);
    goto :goto_1

    .line 227
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v3       #response:Lcom/android/exchange/EasResponse;
    :catch_2
    #v0=(Uninit);v3=(Reference);v4=(Conflicted);v5=(Boolean);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    move-exception v0

    .line 228
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    #v0=(Reference);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Exception while handling response"

    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v0, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    if-eqz p1, :cond_6

    .line 230
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 232
    :cond_6
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v4, -0x4

    #v4=(Byte);
    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    :cond_7
    #v0=(Uninit);v4=(Conflicted);v5=(Boolean);v6=(Reference);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    const/16 v4, -0xa

    .line 239
    .restart local v4       #result:I
    :cond_8
    #v4=(Integer);
    const/4 v5, -0x5

    #v5=(Byte);
    if-eq v4, v5, :cond_9

    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->isForbidden()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->handleForbidden()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 240
    :cond_9
    #v5=(Byte);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Forbidden response"

    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    if-eqz p1, :cond_a

    .line 243
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 245
    :cond_a
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v4, -0x5

    #v4=(Byte);
    goto/16 :goto_0

    .line 249
    :cond_b
    #v4=(Integer);v5=(Boolean);v6=(Reference);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    const/4 v5, -0x6

    #v5=(Byte);
    if-eq v4, v5, :cond_c

    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->isProvisionError()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_10

    .line 250
    :cond_c
    #v5=(Byte);
    iget-wide v5, p0, Lcom/android/exchange/eas/EasOperation;->mAccountId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/exchange/eas/EasOperation;->handleProvisionError(Landroid/content/SyncResult;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_e

    .line 291
    :goto_2
    #v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    .line 293
    const/4 v5, 0x3

    #v5=(PosByte);
    if-lt v2, v5, :cond_0

    .line 297
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Too many redirects"

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 298
    if-eqz p1, :cond_d

    .line 299
    const/4 v5, 0x1

    #v5=(One);
    iput-boolean v5, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 301
    :cond_d
    #v5=(Conflicted);
    const/4 v4, -0x3

    #v4=(Byte);
    goto/16 :goto_1

    .line 255
    :cond_e
    #v4=(Integer);v5=(Boolean);v6=(LongHi);v7=(LongLo);
    if-eqz p1, :cond_f

    .line 256
    :try_start_5
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Issue with provisioning"

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 260
    :cond_f
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v4, -0x6

    #v4=(Byte);
    goto/16 :goto_0

    .line 264
    :cond_10
    #v4=(Integer);v5=(Boolean);v6=(Reference);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->isAuthError()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 265
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Authentication error"

    const/4 v7, 0x0

    #v7=(Null);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    if-eqz p1, :cond_11

    .line 267
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 269
    :cond_11
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_12

    .line 270
    const/4 v4, -0x8

    #v4=(Byte);
    goto/16 :goto_0

    .line 272
    :cond_12
    #v4=(Integer);
    const/4 v4, -0x7

    #v4=(Byte);
    goto/16 :goto_0

    .line 276
    :cond_13
    #v4=(Integer);v6=(Reference);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->isRedirectError()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    iget-object v5, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v5=(Reference);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getRedirectAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/service/EasServerConnection;->redirectHostAuth(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 291
    .end local v4           #result:I
    :catchall_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v5

    #v5=(Reference);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    throw v5

    .line 282
    .restart local v4       #result:I
    :cond_14
    :try_start_6
    #v0=(Uninit);v4=(Integer);v5=(Boolean);v6=(Reference);v7=(LongLo);v8=(LongHi);v9=(Uninit);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Generic error for operation %s: status %d, result %d"

    const/4 v7, 0x3

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getCommand()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v9

    #v9=(Integer);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/4 v8, 0x2

    #v8=(PosByte);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    if-eqz p1, :cond_15

    .line 286
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x1

    #v8=(LongLo);v9=(LongHi);
    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    :cond_15
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/16 v4, -0xa

    #v4=(Byte);
    goto/16 :goto_0

    .line 189
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final registerClientCert()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/service/EasServerConnection;->registerClientCert()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public final restart()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/exchange/service/EasServerConnection;->stop(I)V

    .line 145
    return-void
.end method

.method protected final setProtocolVersion(Ljava/lang/String;)V
    .locals 11
    .parameter "protocolVersion"

    .prologue
    const/4 v3, 0x0

    .line 310
    #v3=(Null);
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/exchange/service/EasServerConnection;->setProtocolVersion(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/android/exchange/eas/EasOperation;->mAccountId:J

    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, -0x1

    #v6=(LongLo);v7=(LongHi);
    cmp-long v0, v4, v6

    #v0=(Byte);
    if-eqz v0, :cond_1

    .line 311
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    iget-wide v4, p0, Lcom/android/exchange/eas/EasOperation;->mAccountId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 312
    .local v1, uri:Landroid/net/Uri;
    #v1=(Reference);
    new-instance v8, Landroid/content/ContentValues;

    #v8=(UninitRef);
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 313
    .local v8, cv:Landroid/content/ContentValues;
    #v8=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasOperation;->getProtocolVersion()D

    move-result-wide v4

    #v4=(DoubleLo);v5=(DoubleHi);
    const-wide/high16 v6, 0x4028

    cmpl-double v0, v4, v6

    #v0=(Byte);
    if-ltz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v0=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    move-object v4, v3

    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 317
    .local v10, oldFlags:I
    #v10=(Integer);
    or-int/lit16 v9, v10, 0x1800

    .line 319
    .local v9, newFlags:I
    #v9=(Integer);
    if-eq v10, v9, :cond_0

    .line 320
    const-string v0, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    .end local v9           #newFlags:I
    .end local v10           #oldFlags:I
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    const-string v0, "protocolVersion"

    #v0=(Reference);
    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);
    return-void
.end method

.method protected final shouldGetProtocolVersion()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/exchange/eas/EasOperation;->mConnection:Lcom/android/exchange/service/EasServerConnection;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/service/EasServerConnection;->isProtocolVersionSet()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
