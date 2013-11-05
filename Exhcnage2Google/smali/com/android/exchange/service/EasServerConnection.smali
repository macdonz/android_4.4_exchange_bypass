.class public Lcom/android/exchange/service/EasServerConnection;
.super Ljava/lang/Object;
.source "EasServerConnection.java"


# static fields
.field private static final ACCOUNT_SECURITY_KEY_PROJECTION:[Ljava/lang/String;

.field private static final USER_AGENT:Ljava/lang/String;

.field private static sDeviceId:Ljava/lang/String;


# instance fields
.field protected final mAccount:Lcom/android/emailcommon/provider/Account;

.field private final mAccountId:J

.field private mClient:Lorg/apache/http/client/HttpClient;

.field private mClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mProtocolVersion:D

.field private mProtocolVersionIsSet:Z

.field private mStopped:Z

.field private mStoppedReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Android/"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EAS-1.3"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/service/EasServerConnection;->USER_AGENT:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "securitySyncKey"

    #v2=(Reference);
    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/service/EasServerConnection;->ACCOUNT_SECURITY_KEY_PROJECTION:[Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 148
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 149
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "hostAuth"

    .prologue
    const/4 v2, 0x0

    .line 139
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 119
    iput-boolean v2, p0, Lcom/android/exchange/service/EasServerConnection;->mStopped:Z

    .line 120
    iput v2, p0, Lcom/android/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 123
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersion:D

    .line 125
    iput-boolean v2, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersionIsSet:Z

    .line 140
    iput-object p1, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    .line 141
    iput-object p3, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 142
    iput-object p2, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 143
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/service/EasServerConnection;->mAccountId:J

    .line 144
    iget-object v0, p2, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/service/EasServerConnection;->setProtocolVersion(Ljava/lang/String;)Z

    .line 145
    return-void
.end method

.method private getHttpClient(J)Lorg/apache/http/client/HttpClient;
    .locals 3
    .parameter "timeout"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 174
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 175
    .local v0, params:Lorg/apache/http/params/HttpParams;
    #v0=(Reference);
    const/16 v1, 0x4e20

    #v1=(PosShort);
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 176
    long-to-int v1, p1

    #v1=(Integer);
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 177
    const/16 v1, 0x2000

    #v1=(PosShort);
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 178
    new-instance v1, Lcom/android/exchange/service/EasServerConnection$1;

    #v1=(UninitRef);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v1, p0, v2, v0}, Lcom/android/exchange/service/EasServerConnection$1;-><init>(Lcom/android/exchange/service/EasServerConnection;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    .line 187
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    return-object v1
.end method

.method private makeAuthString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, cs:Ljava/lang/String;
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBaseUriString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v1

    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v2

    #v2=(Boolean);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeScheme(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"
    .parameter "extra"

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeUserString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/android/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/android/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    const-string v0, "Exchange"

    const-string v1, "Could not get device id, defaulting to \'0\'"

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    const-string v0, "0"

    sput-object v0, Lcom/android/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    .line 203
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "&User="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static requestSyncForMailbox(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 6
    .parameter "amAccount"
    .parameter "authority"
    .parameter "mailboxId"

    .prologue
    .line 527
    invoke-static {p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v0

    .line 528
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 529
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "requestSync EasServerConnection requestSyncForMailbox %s, %s"

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

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 531
    return-void
.end method


# virtual methods
.method public executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/android/exchange/EasResponse;
    .locals 7
    .parameter "method"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 406
    #v6=(Null);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "EasServerConnection about to make request %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    iget-boolean v2, p0, Lcom/android/exchange/service/EasServerConnection;->mStopped:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 412
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/android/exchange/service/EasServerConnection;->mStopped:Z

    .line 416
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    const-string v3, "Command was stopped before POST"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 419
    :catchall_0
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 418
    :cond_0
    :try_start_1
    #v2=(Boolean);
    iput-object p1, p0, Lcom/android/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 419
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, postCompleted:Z
    :try_start_2
    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/service/EasServerConnection;->getHttpClient(J)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 424
    .local v1, response:Lcom/android/exchange/EasResponse;
    #v1=(Reference);
    const/4 v0, 0x1

    .line 427
    #v0=(One);
    monitor-enter p0

    .line 428
    const/4 v2, 0x0

    :try_start_3
    #v2=(Null);
    iput-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 429
    if-eqz v0, :cond_1

    .line 430
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 432
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 425
    return-object v1

    .line 427
    .end local v1           #response:Lcom/android/exchange/EasResponse;
    :catchall_1
    #v0=(Null);v1=(Uninit);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-enter p0

    .line 428
    const/4 v3, 0x0

    :try_start_4
    #v3=(Null);
    iput-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 429
    if-eqz v0, :cond_2

    .line 430
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 432
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 427
    throw v2

    .line 432
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .restart local v1       #response:Lcom/android/exchange/EasResponse;
    :catchall_3
    #v0=(One);v1=(Reference);v3=(Reference);
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method protected executePost(Lorg/apache/http/client/methods/HttpPost;)Lcom/android/exchange/EasResponse;
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    const-wide/16 v0, 0x7530

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/service/EasServerConnection;->executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/android/exchange/EasResponse;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/android/exchange/eas/EasConnectionCache;->instance()Lcom/android/exchange/eas/EasConnectionCache;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/eas/EasConnectionCache;->getConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 154
    .local v0, connManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    if-eq v1, v0, :cond_0

    .line 155
    iput-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 156
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    .line 158
    :cond_0
    #v1=(Reference);
    return-object v0
.end method

.method public getProtocolVersion()D
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersion:D

    #v0=(DoubleLo);v1=(DoubleHi);
    return-wide v0
.end method

.method public declared-synchronized getStoppedReason()I
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/exchange/service/EasServerConnection;->mStoppedReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v0=(Integer);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/android/exchange/service/EasServerConnection;->USER_AGENT:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public isProtocolVersionSet()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersionIsSet:Z

    #v0=(Boolean);
    return v0
.end method

.method public makeOptions()Lorg/apache/http/client/methods/HttpOptions;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    #v0=(UninitRef);
    invoke-direct {p0}, Lcom/android/exchange/service/EasServerConnection;->makeBaseUriString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 321
    .local v0, method:Lorg/apache/http/client/methods/HttpOptions;
    #v0=(Reference);
    const-string v1, "Authorization"

    invoke-direct {p0}, Lcom/android/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/android/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-object v0
.end method

.method public makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;
    .locals 10
    .parameter "uri"
    .parameter "entity"
    .parameter "contentType"
    .parameter "usePolicyKey"

    .prologue
    const/4 v3, 0x0

    .line 283
    #v3=(Null);
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    #v9=(UninitRef);
    invoke-direct {v9, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 284
    .local v9, post:Lorg/apache/http/client/methods/HttpPost;
    #v9=(Reference);
    const-string v0, "Authorization"

    #v0=(Reference);
    invoke-direct {p0}, Lcom/android/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "MS-ASProtocolVersion"

    iget-wide v1, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersion:D

    #v1=(DoubleLo);v2=(DoubleHi);
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/android/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-eqz p3, :cond_0

    .line 289
    const-string v0, "Content-Type"

    invoke-virtual {v9, v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    if-eqz p4, :cond_1

    .line 297
    iget-wide v0, p0, Lcom/android/exchange/service/EasServerConnection;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    cmp-long v0, v0, v4

    #v0=(Byte);
    if-nez v0, :cond_2

    .line 298
    const/4 v7, 0x0

    .line 304
    .local v7, accountKey:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_3

    .line 305
    move-object v8, v7

    .line 309
    .local v8, key:Ljava/lang/String;
    :goto_1
    #v8=(Reference);
    const-string v0, "X-MS-PolicyKey"

    #v0=(Reference);
    invoke-virtual {v9, v0, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v7           #accountKey:Ljava/lang/String;
    .end local v8           #key:Ljava/lang/String;
    :cond_1
    #v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {v9, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 312
    return-object v9

    .line 300
    :cond_2
    #v0=(Byte);v1=(LongHi);v2=(DoubleHi);v4=(LongLo);v5=(LongHi);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    iget-wide v4, p0, Lcom/android/exchange/service/EasServerConnection;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/service/EasServerConnection;->ACCOUNT_SECURITY_KEY_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #accountKey:Ljava/lang/String;
    #v7=(Reference);
    goto :goto_0

    .line 307
    :cond_3
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const-string v8, "0"

    .restart local v8       #key:Ljava/lang/String;
    #v8=(Reference);
    goto :goto_1
.end method

.method public makeUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmd"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/exchange/service/EasServerConnection;->makeBaseUriString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, uriString:Ljava/lang/String;
    #v0=(Reference);
    if-eqz p1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Cmd="

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/exchange/service/EasServerConnection;->makeUserString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0
.end method

.method public redirectHostAuth(Ljava/lang/String;)V
    .locals 3
    .parameter "newAddress"

    .prologue
    .line 162
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    .line 163
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v1=(Reference);
    iput-object p1, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/HostAuth;->isSaved()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/android/exchange/eas/EasConnectionCache;->instance()Lcom/android/exchange/eas/EasConnectionCache;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/exchange/eas/EasConnectionCache;->uncacheConnectionManager(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 167
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "address"

    #v1=(Reference);
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 170
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public registerClientCert()Z
    .locals 4

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x1

    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 481
    :catch_0
    #v0=(Uninit);v1=(Reference);
    move-exception v0

    .line 483
    .local v0, e:Ljava/security/cert/CertificateException;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method protected resetAuthorization(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 2
    .parameter "post"

    .prologue
    .line 269
    const-string v0, "Authorization"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 270
    const-string v0, "Authorization"

    invoke-direct {p0}, Lcom/android/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;J)Lcom/android/exchange/EasResponse;
    .locals 11
    .parameter "cmd"
    .parameter "entity"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const-string v7, "Ping"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 339
    .local v3, isPingCommand:Z
    #v3=(Boolean);
    const/4 v2, 0x0

    .line 340
    .local v2, extra:Ljava/lang/String;
    #v2=(Null);
    const/4 v5, 0x0

    .line 341
    .local v5, msg:Z
    #v5=(Null);
    const-string v7, "SmartForward&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    const-string v7, "SmartReply&"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 342
    :cond_0
    const/16 v7, 0x26

    #v7=(PosByte);
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 343
    .local v0, cmdLength:I
    #v0=(Integer);
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    #v2=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 345
    const/4 v5, 0x1

    .line 354
    .end local v0           #cmdLength:I
    :cond_1
    :goto_0
    #v0=(Conflicted);v5=(Boolean);v7=(Boolean);
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/exchange/service/EasServerConnection;->getProtocolVersion()D

    move-result-wide v7

    #v7=(DoubleLo);v8=(DoubleHi);
    const-wide/high16 v9, 0x402c

    #v9=(LongLo);v10=(LongHi);
    cmpg-double v7, v7, v9

    #v7=(Byte);
    if-gez v7, :cond_4

    .line 355
    const-string v1, "message/rfc822"

    .line 363
    .local v1, contentType:Ljava/lang/String;
    :goto_1
    #v1=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-nez v2, :cond_6

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, uriString:Ljava/lang/String;
    :goto_2
    #v6=(Reference);
    if-nez v3, :cond_7

    const/4 v7, 0x1

    :goto_3
    #v7=(Boolean);
    invoke-virtual {p0, v6, p2, v1, v7}, Lcom/android/exchange/service/EasServerConnection;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    .line 373
    .local v4, method:Lorg/apache/http/client/methods/HttpPost;
    #v4=(Reference);
    if-eqz v3, :cond_2

    .line 374
    const-string v7, "Connection"

    #v7=(Reference);
    const-string v8, "close"

    #v8=(Reference);
    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_2
    #v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {p0, v4, p3, p4}, Lcom/android/exchange/service/EasServerConnection;->executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/android/exchange/EasResponse;

    move-result-object v7

    #v7=(Reference);
    return-object v7

    .line 346
    .end local v1           #contentType:Ljava/lang/String;
    .end local v4           #method:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #uriString:Ljava/lang/String;
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Null);v4=(Uninit);v5=(Null);v6=(Uninit);v7=(Boolean);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const-string v7, "SendMail&"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 347
    const/4 v5, 0x1

    #v5=(One);
    goto :goto_0

    .line 356
    :cond_4
    #v0=(Conflicted);v2=(Reference);v5=(Boolean);v7=(Byte);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-eqz p2, :cond_5

    .line 357
    const-string v1, "application/vnd.ms-sync.wbxml"

    .restart local v1       #contentType:Ljava/lang/String;
    #v1=(Reference);
    goto :goto_1

    .line 360
    .end local v1           #contentType:Ljava/lang/String;
    :cond_5
    #v1=(Uninit);
    const/4 v1, 0x0

    .restart local v1       #contentType:Ljava/lang/String;
    #v1=(Null);
    goto :goto_1

    .line 366
    :cond_6
    #v1=(Reference);
    invoke-direct {p0, p1, v2}, Lcom/android/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #uriString:Ljava/lang/String;
    #v6=(Reference);
    goto :goto_2

    .line 368
    :cond_7
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_3
.end method

.method protected sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    .locals 2
    .parameter "cmd"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const-wide/16 v0, 0x7530

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/exchange/service/EasServerConnection;->sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/android/exchange/EasResponse;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/android/exchange/EasResponse;
    .locals 2
    .parameter "cmd"
    .parameter "bytes"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    if-nez p2, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 387
    .local v0, entity:Lorg/apache/http/entity/ByteArrayEntity;
    :goto_0
    #v0=(Reference);
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/exchange/service/EasServerConnection;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;J)Lcom/android/exchange/EasResponse;

    move-result-object v1

    #v1=(Reference);
    return-object v1

    .line 385
    .end local v0           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .restart local v0       #entity:Lorg/apache/http/entity/ByteArrayEntity;
    #v0=(Reference);
    goto :goto_0
.end method

.method protected sendMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 10
    .parameter "account"
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    .line 503
    #v9=(PosByte);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5, v9}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 505
    .local v0, mailboxId:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v3, -0x1

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, v0, v3

    #v3=(Byte);
    if-nez v3, :cond_0

    .line 506
    const-string v3, "Exchange"

    #v3=(Reference);
    const-string v4, "No outbox for account %d, creating it"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 507
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5, v9}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 509
    .local v2, outbox:Lcom/android/emailcommon/provider/Mailbox;
    #v2=(Reference);
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 510
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 512
    .end local v2           #outbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iput-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 513
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 514
    iget-object v3, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-virtual {p2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 515
    new-instance v3, Landroid/accounts/Account;

    #v3=(UninitRef);
    iget-object v4, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "com.google.android.exchange"

    #v5=(Reference);
    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v3=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/android/exchange/service/EasServerConnection;->requestSyncForMailbox(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 517
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)Z
    .locals 7
    .parameter "protocolVersionString"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 231
    #v4=(Null);
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersionIsSet:Z

    .line 232
    if-nez p1, :cond_0

    .line 233
    const-string p1, "2.5"

    .line 235
    :cond_0
    iget-wide v0, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersion:D

    .line 236
    .local v0, oldProtocolVersion:D
    #v0=(DoubleLo);v1=(DoubleHi);
    invoke-static {p1}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    #v5=(DoubleLo);v6=(DoubleHi);
    iput-wide v5, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersion:D

    .line 237
    iget-wide v5, p0, Lcom/android/exchange/service/EasServerConnection;->mProtocolVersion:D

    cmpl-double v2, v0, v5

    #v2=(Byte);
    if-eqz v2, :cond_2

    :goto_1
    #v3=(Boolean);
    return v3

    .end local v0           #oldProtocolVersion:D
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(One);v5=(Uninit);v6=(Uninit);
    move v2, v4

    .line 231
    #v2=(Null);
    goto :goto_0

    .restart local v0       #oldProtocolVersion:D
    :cond_2
    #v0=(DoubleLo);v1=(DoubleHi);v2=(Byte);v5=(DoubleLo);v6=(DoubleHi);
    move v3, v4

    .line 237
    #v3=(Null);
    goto :goto_1
.end method

.method public declared-synchronized stop(I)V
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v2, 0x2

    #v2=(PosByte);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x1

    .line 452
    #v0=(One);
    monitor-enter p0

    if-lt p1, v0, :cond_0

    if-gt p1, v2, :cond_0

    .line 453
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 454
    .local v0, isMidPost:Z
    :goto_0
    #v0=(Boolean);
    const-string v2, "Exchange"

    const-string v3, "%s with reason %d"

    #v3=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    if-eqz v0, :cond_2

    const-string v1, "Interrupt"

    :goto_1
    #v1=(Reference);
    aput-object v1, v4, v5

    const/4 v1, 0x1

    #v1=(One);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 455
    iput p1, p0, Lcom/android/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 456
    if-eqz v0, :cond_3

    .line 457
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    #v1=(Reference);
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .end local v0           #isMidPost:Z
    :cond_0
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit p0

    return-void

    :cond_1
    #v0=(One);v1=(Null);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move v0, v1

    .line 453
    #v0=(Null);
    goto :goto_0

    .line 454
    .restart local v0       #isMidPost:Z
    :cond_2
    :try_start_1
    #v0=(Boolean);v1=(PosByte);v3=(Reference);v4=(Reference);v5=(Null);
    const-string v1, "Stop next"

    #v1=(Reference);
    goto :goto_1

    .line 459
    :cond_3
    #v1=(One);v5=(Reference);
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/service/EasServerConnection;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 452
    .end local v0           #isMidPost:Z
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit p0

    throw v1
.end method
