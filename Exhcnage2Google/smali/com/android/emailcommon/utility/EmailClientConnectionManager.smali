.class public Lcom/android/emailcommon/utility/EmailClientConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "EmailClientConnectionManager.java"


# instance fields
.field private final mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;


# direct methods
.method private constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V
    .locals 0
    .parameter "params"
    .parameter "registry"
    .parameter "keyManager"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 59
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    .line 60
    return-void
.end method

.method public static makeScheme(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "useSsl"
    .parameter "trustAllServerCerts"
    .parameter "clientCertAlias"

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    invoke-static {p2, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "httpts"

    #v0=(Reference);
    goto :goto_0

    :cond_1
    #v0=(Uninit);
    const-string v0, "https"

    #v0=(Reference);
    goto :goto_0

    :cond_2
    #v0=(Uninit);
    const-string v0, "http"

    #v0=(Reference);
    goto :goto_0
.end method

.method private static makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "clientCertAlias"
    .parameter "trustAllServerCerts"

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/emailcommon/utility/SSLUtils;->escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, safeAlias:Ljava/lang/String;
    #v0=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    if-eqz p1, :cond_0

    const-string v1, "httpts"

    :goto_0
    #v1=(Reference);
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+clientCert+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    #v1=(Uninit);
    const-string v1, "https"

    #v1=(Reference);
    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 9
    .parameter "context"
    .parameter "params"
    .parameter "hostAuth"

    .prologue
    const/16 v5, 0x1bb

    .line 64
    #v5=(PosShort);
    new-instance v0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;-><init>()V

    .line 65
    .local v0, keyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;
    #v0=(Reference);
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v3

    .line 66
    .local v3, ssl:Z
    #v3=(Boolean);
    iget v1, p2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 69
    .local v1, port:I
    #v1=(Integer);
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    #v2=(UninitRef);
    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 70
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    #v2=(Reference);
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    #v6=(UninitRef);
    const-string v7, "http"

    #v7=(Reference);
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    #v8=(Reference);
    if-eqz v3, :cond_0

    const/16 v4, 0x50

    :goto_0
    #v4=(Integer);
    invoke-direct {v6, v7, v8, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #v6=(Reference);
    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 73
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    #v6=(UninitRef);
    const-string v7, "https"

    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p0, p2, v0, v4}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v8

    if-eqz v3, :cond_1

    move v4, v1

    :goto_1
    #v4=(Integer);
    invoke-direct {v6, v7, v8, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #v6=(Reference);
    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 77
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    #v4=(UninitRef);
    const-string v6, "httpts"

    const/4 v7, 0x1

    #v7=(One);
    invoke-static {p0, p2, v0, v7}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v7

    #v7=(Reference);
    if-eqz v3, :cond_2

    .end local v1           #port:I
    :goto_2
    invoke-direct {v4, v6, v7, v1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #v4=(Reference);
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 81
    new-instance v4, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    #v4=(UninitRef);
    invoke-direct {v4, p1, v2, v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V

    #v4=(Reference);
    return-object v4

    .restart local v1       #port:I
    :cond_0
    #v4=(Uninit);v6=(UninitRef);
    move v4, v1

    .line 70
    #v4=(Integer);
    goto :goto_0

    :cond_1
    #v4=(Null);
    move v4, v5

    .line 73
    #v4=(PosShort);
    goto :goto_1

    :cond_2
    #v4=(UninitRef);v6=(Reference);
    move v1, v5

    .line 77
    #v1=(PosShort);
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized hasDetectedUnsatisfiedCertReq(J)Z
    .locals 2
    .parameter "since"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->getLastCertReqTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v0, p1

    #v0=(Byte);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    monitor-exit p0

    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :catchall_0
    #v0=(Conflicted);v1=(Uninit);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .parameter "context"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 94
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    #v3=(Reference);
    iget-object v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    #v6=(Reference);
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v7

    #v7=(Boolean);
    invoke-static {v6, v7}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, schemeName:Ljava/lang/String;
    #v4=(Reference);
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 97
    .local v0, existing:Lorg/apache/http/conn/scheme/Scheme;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 102
    iget-object v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    move-result-object v2

    .line 104
    .local v2, keyManager:Ljavax/net/ssl/KeyManager;
    #v2=(Reference);
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v1

    .line 105
    .local v1, insecure:Z
    #v1=(Boolean);
    invoke-static {p1, p2, v2, v1}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v5

    .line 107
    .local v5, ssf:Lcom/android/emailcommon/utility/SSLSocketFactory;
    #v5=(Reference);
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    #v6=(UninitRef);
    iget v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    #v7=(Integer);
    invoke-direct {v6, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #v6=(Reference);
    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v1           #insecure:Z
    .end local v2           #keyManager:Ljavax/net/ssl/KeyManager;
    .end local v5           #ssf:Lcom/android/emailcommon/utility/SSLSocketFactory;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    monitor-exit p0

    return-void

    .line 93
    .end local v0           #existing:Lorg/apache/http/conn/scheme/Scheme;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #schemeName:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    #v6=(Reference);
    monitor-exit p0

    throw v6
.end method
