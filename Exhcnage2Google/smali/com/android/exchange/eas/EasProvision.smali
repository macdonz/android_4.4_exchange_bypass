.class public Lcom/android/exchange/eas/EasProvision;
.super Lcom/android/exchange/eas/EasOperation;
.source "EasProvision.java"


# instance fields
.field private mPhase:I

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mPolicyKey:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/android/exchange/service/EasServerConnection;)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "connection"

    .prologue
    const/4 v0, 0x0

    .line 97
    #v0=(Null);
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;JLcom/android/exchange/service/EasServerConnection;)V

    .line 98
    #p0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 99
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/eas/EasOperation;)V
    .locals 1
    .parameter "parentOperation"

    .prologue
    const/4 v0, 0x0

    .line 105
    #v0=(Null);
    invoke-direct {p0, p1}, Lcom/android/exchange/eas/EasOperation;-><init>(Lcom/android/exchange/eas/EasOperation;)V

    .line 106
    #p0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 107
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    .line 110
    return-void
.end method

.method private final getPolicyType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasProvision;->getProtocolVersion()D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    const-wide/high16 v2, 0x4028

    #v2=(LongLo);v3=(LongHi);
    cmpl-double v0, v0, v2

    #v0=(Byte);
    if-ltz v0, :cond_0

    const-string v0, "MS-EAS-Provisioning-WBXML"

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Byte);
    const-string v0, "MS-WAP-Provisioning-XML"

    #v0=(Reference);
    goto :goto_0
.end method

.method private performAckRequest(Landroid/content/SyncResult;Z)I
    .locals 1
    .parameter "syncResult"
    .parameter "isPartial"

    .prologue
    .line 123
    const/4 v0, 0x1

    #v0=(One);
    iput v0, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    .line 124
    if-eqz p2, :cond_0

    const-string v0, "2"

    :goto_0
    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/exchange/eas/EasProvision;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    #v0=(Integer);
    return v0

    .line 124
    :cond_0
    #v0=(One);
    const-string v0, "1"

    #v0=(Reference);
    goto :goto_0
.end method

.method private performAckRequestForWipe(Landroid/content/SyncResult;)V
    .locals 1
    .parameter "syncResult"

    .prologue
    .line 118
    const/4 v0, 0x2

    #v0=(PosByte);
    iput v0, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/exchange/eas/EasProvision;->performOperation(Landroid/content/SyncResult;)I

    .line 120
    return-void
.end method

.method private performInitialRequest(Landroid/content/SyncResult;)I
    .locals 1
    .parameter "syncResult"

    .prologue
    .line 113
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/exchange/eas/EasProvision;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "Provision"

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
    const/16 v5, 0x38b

    .line 206
    #v5=(PosShort);
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 207
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    #v0=(Reference);
    const/16 v1, 0x385

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 210
    iget v1, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    #v1=(Integer);
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exchange/eas/EasProvision;->getProtocolVersion()D

    move-result-wide v1

    #v1=(DoubleLo);v2=(DoubleHi);
    const-wide v3, 0x402c333333333333L

    #v3=(LongLo);v4=(LongHi);
    cmpl-double v1, v1, v3

    #v1=(Byte);
    if-ltz v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/exchange/eas/EasProvision;->addDeviceInformationToSerlializer(Lcom/android/exchange/adapter/Serializer;)V

    .line 214
    :cond_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/16 v1, 0x386

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 215
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 216
    const/16 v1, 0x388

    invoke-direct {p0}, Lcom/android/exchange/eas/EasProvision;->getPolicyType()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 219
    iget v1, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-ne v1, v2, :cond_1

    .line 220
    const/16 v1, 0x389

    #v1=(PosShort);
    iget-object v2, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 221
    iget-object v1, p0, Lcom/android/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 223
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    iget v1, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    if-ne v1, v2, :cond_2

    .line 224
    const/16 v1, 0x38c

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 225
    const-string v1, "1"

    #v1=(Reference);
    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 226
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 228
    :cond_2
    #v1=(Conflicted);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/exchange/eas/EasProvision;->makeEntity(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    return-object v1
.end method

.method protected handleProvisionError(Landroid/content/SyncResult;J)Z
    .locals 1
    .parameter "syncResult"
    .parameter "accountId"

    .prologue
    .line 272
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method protected handleResponse(Lcom/android/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 6
    .parameter "response"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    #v3=(PosByte);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x2

    .line 236
    #v2=(PosByte);
    new-instance v0, Lcom/android/exchange/adapter/ProvisionParser;

    #v0=(UninitRef);
    iget-object v4, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v4=(Reference);
    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    #v5=(Reference);
    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 239
    .local v0, pp:Lcom/android/exchange/adapter/ProvisionParser;
    #v0=(Reference);
    iget v4, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    #v4=(Integer);
    if-ne v4, v2, :cond_1

    move v1, v3

    .line 266
    :cond_0
    :goto_0
    #v1=(PosByte);v3=(Conflicted);
    return v1

    .line 243
    :cond_1
    #v1=(One);v3=(PosByte);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 244
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Error while parsing response"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 248
    :cond_2
    #v1=(One);v2=(PosByte);
    iget v4, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    #v4=(Integer);
    if-nez v4, :cond_4

    .line 249
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    move v1, v3

    .line 250
    #v1=(PosByte);
    goto :goto_0

    .line 252
    :cond_3
    #v1=(One);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 253
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 255
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    move v1, v2

    #v1=(PosByte);
    goto :goto_0

    .line 259
    :cond_4
    #v1=(One);v3=(PosByte);v4=(Integer);
    iget v3, p0, Lcom/android/exchange/eas/EasProvision;->mPhase:I

    #v3=(Integer);
    if-ne v3, v1, :cond_5

    .line 260
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 261
    iget-object v3, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    if-nez v3, :cond_0

    move v1, v2

    #v1=(PosByte);
    goto :goto_0

    :cond_5
    #v1=(One);v3=(Integer);
    move v1, v2

    .line 266
    #v1=(PosByte);
    goto :goto_0
.end method

.method public final provision(Landroid/content/SyncResult;J)Z
    .locals 10
    .parameter "syncResult"
    .parameter "accountId"

    .prologue
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    .line 153
    #v6=(Null);
    invoke-direct {p0, p1}, Lcom/android/exchange/eas/EasProvision;->performInitialRequest(Landroid/content/SyncResult;)I

    move-result v0

    .line 155
    .local v0, result:I
    #v0=(Integer);
    if-gez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);v7=(Conflicted);
    return v6

    .line 159
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(One);v6=(Null);v7=(Uninit);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v0, v4, :cond_2

    .line 160
    invoke-direct {p0, p1}, Lcom/android/exchange/eas/EasProvision;->performAckRequestForWipe(Landroid/content/SyncResult;)V

    .line 161
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Executing remote wipe"

    #v5=(Reference);
    new-array v7, v6, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v4, v5, v7}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    iget-object v4, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe(Landroid/content/Context;)V

    goto :goto_0

    .line 167
    :cond_2
    #v4=(PosByte);v5=(One);v7=(Uninit);
    iget-object v4, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v4=(Reference);
    iput-object v9, v4, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v7=(Reference);
    invoke-static {v4, p2, p3, v7, v9}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-static {v4, v7}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 174
    if-ne v0, v8, :cond_5

    move v4, v5

    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/eas/EasProvision;->performAckRequest(Landroid/content/SyncResult;Z)I

    move-result v4

    #v4=(Integer);
    if-eq v4, v8, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v4=(Reference);
    iget-object v6, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    invoke-static {v4, p2, p3, v6, v7}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasProvision;->getProtocolVersion()D

    move-result-wide v2

    .line 186
    .local v2, version:D
    #v2=(DoubleLo);v3=(DoubleHi);
    const-wide v6, 0x4028333333333333L

    #v6=(LongLo);v7=(LongHi);
    cmpl-double v4, v2, v6

    #v4=(Byte);
    if-eqz v4, :cond_3

    const-wide/high16 v6, 0x402c

    cmpl-double v4, v2, v6

    if-nez v4, :cond_4

    .line 188
    :cond_3
    new-instance v1, Lcom/android/exchange/eas/EasSettings;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/exchange/eas/EasSettings;-><init>(Lcom/android/exchange/eas/EasOperation;)V

    .line 189
    .local v1, settingsOperation:Lcom/android/exchange/eas/EasSettings;
    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/exchange/eas/EasSettings;->sendDeviceInformation(Landroid/content/SyncResult;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_4

    .end local v1           #settingsOperation:Lcom/android/exchange/eas/EasSettings;
    :cond_4
    #v1=(Conflicted);v4=(Byte);
    move v6, v5

    .line 196
    #v6=(One);
    goto :goto_0

    .end local v2           #version:D
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v6=(Null);v7=(Reference);
    move v4, v6

    .line 174
    #v4=(Null);
    goto :goto_1
.end method

.method public final test()Lcom/android/emailcommon/provider/Policy;
    .locals 5

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v1, 0x0

    .line 133
    #v1=(Null);
    invoke-direct {p0, v1}, Lcom/android/exchange/eas/EasProvision;->performInitialRequest(Landroid/content/SyncResult;)I

    move-result v0

    .line 134
    .local v0, result:I
    #v0=(Integer);
    if-ne v0, v4, :cond_0

    .line 136
    invoke-direct {p0, v1, v3}, Lcom/android/exchange/eas/EasProvision;->performAckRequest(Landroid/content/SyncResult;Z)I

    move-result v0

    .line 138
    :cond_0
    if-ne v0, v3, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v2=(Reference);
    iput-object v1, v2, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 142
    :cond_1
    #v2=(Conflicted);
    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    :cond_3
    #v1=(Reference);
    return-object v1
.end method
