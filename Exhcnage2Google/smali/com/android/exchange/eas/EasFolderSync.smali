.class public Lcom/android/exchange/eas/EasFolderSync;
.super Lcom/android/exchange/eas/EasOperation;
.source "EasFolderSync.java"


# instance fields
.field private final mAccount:Lcom/android/emailcommon/provider/Account;

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private final mStatusOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 74
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 75
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "hostAuth"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 90
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 91
    iget-object v0, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    iget-object v1, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    #v1=(Reference);
    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 1
    .parameter "context"
    .parameter "hostAuth"

    .prologue
    .line 85
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    #v0=(Reference);
    invoke-direct {p0, p1, v0, p2}, Lcom/android/exchange/eas/EasFolderSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 86
    #p0=(Reference);
    return-void
.end method

.method private writeResultCode(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "bundle"
    .parameter "resultCode"

    .prologue
    .line 204
    packed-switch p2, :pswitch_data_0

    .line 246
    :pswitch_0
    const/4 v0, 0x0

    .line 249
    .local v0, messagingExceptionCode:I
    :goto_0
    #v0=(Byte);v1=(Conflicted);v2=(Conflicted);
    const-string v1, "validate_result_code"

    #v1=(Reference);
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    return-void

    .line 206
    .end local v0           #messagingExceptionCode:I
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x1

    .line 207
    .restart local v0       #messagingExceptionCode:I
    #v0=(One);
    goto :goto_0

    .line 209
    .end local v0           #messagingExceptionCode:I
    :pswitch_2
    #v0=(Uninit);
    const/4 v0, 0x1

    .line 210
    .restart local v0       #messagingExceptionCode:I
    #v0=(One);
    goto :goto_0

    .line 212
    .end local v0           #messagingExceptionCode:I
    :pswitch_3
    #v0=(Uninit);
    const/4 v0, 0x0

    .line 213
    .restart local v0       #messagingExceptionCode:I
    #v0=(Null);
    goto :goto_0

    .line 215
    .end local v0           #messagingExceptionCode:I
    :pswitch_4
    #v0=(Uninit);
    const/4 v0, 0x1

    .line 216
    .restart local v0       #messagingExceptionCode:I
    #v0=(One);
    goto :goto_0

    .line 218
    .end local v0           #messagingExceptionCode:I
    :pswitch_5
    #v0=(Uninit);
    const/16 v0, 0xe

    .line 219
    .restart local v0       #messagingExceptionCode:I
    #v0=(PosByte);
    goto :goto_0

    .line 221
    .end local v0           #messagingExceptionCode:I
    :pswitch_6
    #v0=(Uninit);
    iget-object v1, p0, Lcom/android/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .restart local v0       #messagingExceptionCode:I
    #v0=(Null);
    goto :goto_0

    .line 224
    .end local v0           #messagingExceptionCode:I
    :cond_0
    #v0=(Uninit);
    const-string v1, "validate_policy_set"

    iget-object v2, p0, Lcom/android/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v2=(Reference);
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    iget-object v1, p0, Lcom/android/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x7

    .line 229
    .restart local v0       #messagingExceptionCode:I
    :goto_1
    #v0=(PosByte);
    goto :goto_0

    .line 225
    .end local v0           #messagingExceptionCode:I
    :cond_1
    #v0=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_1

    .line 231
    :pswitch_7
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x5

    .line 232
    .restart local v0       #messagingExceptionCode:I
    #v0=(PosByte);
    goto :goto_0

    .line 234
    .end local v0           #messagingExceptionCode:I
    :pswitch_8
    #v0=(Uninit);
    const/16 v0, 0x10

    .line 235
    .restart local v0       #messagingExceptionCode:I
    #v0=(PosByte);
    goto :goto_0

    .line 237
    .end local v0           #messagingExceptionCode:I
    :pswitch_9
    #v0=(Uninit);
    const/16 v0, 0x9

    .line 238
    .restart local v0       #messagingExceptionCode:I
    #v0=(PosByte);
    goto :goto_0

    .line 240
    .end local v0           #messagingExceptionCode:I
    :pswitch_a
    #v0=(Uninit);
    const/4 v0, 0x0

    .line 241
    .restart local v0       #messagingExceptionCode:I
    #v0=(Null);
    goto :goto_0

    .line 243
    .end local v0           #messagingExceptionCode:I
    :pswitch_b
    #v0=(Uninit);
    const/4 v0, -0x1

    .line 244
    .restart local v0       #messagingExceptionCode:I
    #v0=(Byte);
    goto :goto_0

    .line 204
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public doFolderSync(Landroid/content/SyncResult;)I
    .locals 6
    .parameter "syncResult"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x2

    .line 105
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v0

    .line 104
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Performing sync for account %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/exchange/eas/EasFolderSync;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "FolderSync"

    #v0=(Reference);
    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 150
    .local v1, syncKey:Ljava/lang/String;
    :goto_0
    #v1=(Reference);
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 151
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    #v0=(Reference);
    const/16 v2, 0x1d6

    #v2=(PosShort);
    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    #v2=(Reference);
    const/16 v3, 0x1d2

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/exchange/eas/EasFolderSync;->makeEntity(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    return-object v2

    .line 149
    .end local v0           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v1           #syncKey:Ljava/lang/String;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);
    const-string v1, "0"

    #v1=(Reference);
    goto :goto_0
.end method

.method protected handleForbidden()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    #v0=(Boolean);
    return v0
.end method

.method protected handleProvisionError(Landroid/content/SyncResult;J)Z
    .locals 2
    .parameter "syncResult"
    .parameter "accountId"

    .prologue
    .line 186
    iget-boolean v1, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Lcom/android/exchange/eas/EasProvision;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/eas/EasProvision;-><init>(Lcom/android/exchange/eas/EasOperation;)V

    .line 188
    .local v0, provisionOperation:Lcom/android/exchange/eas/EasProvision;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/eas/EasProvision;->test()Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 191
    const/4 v1, 0x0

    .line 193
    .end local v0           #provisionOperation:Lcom/android/exchange/eas/EasProvision;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :cond_0
    #v0=(Uninit);
    invoke-super {p0, p1, p2, p3}, Lcom/android/exchange/eas/EasOperation;->handleProvisionError(Landroid/content/SyncResult;J)Z

    move-result v1

    goto :goto_0
.end method

.method protected handleResponse(Lcom/android/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 9
    .parameter "response"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 159
    #v8=(One);
    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 161
    :try_start_0
    new-instance v0, Lcom/android/exchange/adapter/FolderSyncParser;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-boolean v5, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Account;Z)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_0
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move v0, v8

    .line 176
    :goto_0
    #v0=(Byte);v6=(Conflicted);v7=(Conflicted);
    return v0

    .line 163
    :catch_0
    #v0=(Conflicted);v6=(Uninit);v7=(Uninit);
    move-exception v6

    .line 164
    .local v6, e:Lcom/android/exchange/CommandStatusException;
    #v6=(Reference);
    iget v7, v6, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 165
    .local v7, status:I
    #v7=(Integer);
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "EasFolderSync.handleResponse status %d"

    #v1=(Reference);
    new-array v2, v8, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    invoke-static {v7}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 167
    const/4 v0, -0x6

    #v0=(Byte);
    goto :goto_0

    .line 169
    :cond_1
    #v0=(Boolean);
    invoke-static {v7}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const/4 v0, -0x5

    #v0=(Byte);
    goto :goto_0

    .line 172
    :cond_2
    #v0=(Boolean);
    const/16 v0, -0xa

    #v0=(Byte);
    goto :goto_0
.end method

.method public validate()Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 113
    #v7=(Null);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 114
    .local v0, bundle:Landroid/os/Bundle;
    #v0=(Reference);
    iget-boolean v4, p0, Lcom/android/exchange/eas/EasFolderSync;->mStatusOnly:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 115
    const/16 v4, -0xa

    #v4=(Byte);
    invoke-direct {p0, v0, v4}, Lcom/android/exchange/eas/EasFolderSync;->writeResultCode(Landroid/os/Bundle;I)V

    .line 139
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v0

    .line 118
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Performing validation"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasFolderSync;->registerClientCert()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 121
    const-string v4, "validate_result_code"

    #v4=(Reference);
    const/16 v5, 0x11

    #v5=(PosByte);
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_1
    #v4=(Boolean);v5=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/eas/EasFolderSync;->shouldGetProtocolVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    new-instance v1, Lcom/android/exchange/eas/EasOptions;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/exchange/eas/EasOptions;-><init>(Lcom/android/exchange/eas/EasOperation;)V

    .line 128
    .local v1, options:Lcom/android/exchange/eas/EasOptions;
    #v1=(Reference);
    invoke-virtual {v1, v7}, Lcom/android/exchange/eas/EasOptions;->getProtocolVersionFromServer(Landroid/content/SyncResult;)I

    move-result v3

    .line 129
    .local v3, result:I
    #v3=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    if-eq v3, v4, :cond_2

    .line 130
    invoke-direct {p0, v0, v3}, Lcom/android/exchange/eas/EasFolderSync;->writeResultCode(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v1}, Lcom/android/exchange/eas/EasOptions;->getProtocolVersionString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, protocolVersion:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/exchange/eas/EasFolderSync;->setProtocolVersion(Ljava/lang/String;)V

    .line 135
    const-string v4, "validate_protocol_version"

    #v4=(Reference);
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v1           #options:Lcom/android/exchange/eas/EasOptions;
    .end local v2           #protocolVersion:Ljava/lang/String;
    .end local v3           #result:I
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0, v7}, Lcom/android/exchange/eas/EasFolderSync;->performOperation(Landroid/content/SyncResult;)I

    move-result v4

    #v4=(Integer);
    invoke-direct {p0, v0, v4}, Lcom/android/exchange/eas/EasFolderSync;->writeResultCode(Landroid/os/Bundle;I)V

    goto :goto_0
.end method
