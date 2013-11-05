.class public Lcom/android/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDebugLabel:Ljava/lang/String;

.field private final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 0
    .parameter "context"
    .parameter "debugLabel"
    .parameter "hostAuth"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 69
    return-void
.end method

.method private static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v1, p0

    #v1=(Reference);
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 196
    .local v1, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 198
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 199
    .local v0, session:Ljavax/net/ssl/SSLSession;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 200
    new-instance v2, Ljavax/net/ssl/SSLException;

    #v2=(UninitRef);
    const-string v3, "Cannot verify SSL socket without session"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 206
    :cond_0
    #v2=(Uninit);v3=(Uninit);
    sget-object v2, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    #v2=(Reference);
    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 207
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #v2=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Certificate hostname not useable for server: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 210
    :cond_1
    #v2=(Boolean);v3=(Uninit);v4=(Uninit);
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v0=(Reference);
    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public canTrySslSecurity()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v0=(Reference);
    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public canTryTlsSecurity()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v0=(Reference);
    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public clone()Lcom/android/email/mail/transport/MailTransport;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lcom/android/email/mail/transport/MailTransport;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/transport/MailTransport;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->clone()Lcom/android/email/mail/transport/MailTransport;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    :try_start_0
    #v1=(Null);
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 245
    :goto_2
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 246
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 247
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 248
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_2

    .line 237
    :catch_1
    move-exception v0

    goto :goto_1

    .line 232
    :catch_2
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    #v0=(Reference);
    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    #v0=(Reference);
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v0=(Reference);
    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    #v0=(Integer);
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public open()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 106
    #v7=(Null);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 107
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "*** "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    :cond_0
    :try_start_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    new-instance v3, Ljava/net/InetSocketAddress;

    #v3=(UninitRef);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    #v5=(Integer);
    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 113
    .local v3, socketAddress:Ljava/net/SocketAddress;
    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v5=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v6

    #v6=(Boolean);
    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/SSLCertificateSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 119
    :goto_0
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v5, 0x2710

    #v5=(PosShort);
    invoke-virtual {v4, v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v4, v5}, Lcom/android/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 124
    :cond_1
    #v4=(Conflicted);v5=(Conflicted);
    new-instance v4, Ljava/io/BufferedInputStream;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x400

    #v6=(PosShort);
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 125
    new-instance v4, Ljava/io/BufferedOutputStream;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 126
    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v5, 0xea60

    #v5=(Char);
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 143
    return-void

    .line 117
    :cond_2
    #v4=(Boolean);v5=(Integer);v6=(Conflicted);
    new-instance v4, Ljava/net/Socket;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 127
    .end local v3           #socketAddress:Ljava/net/SocketAddress;
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    .line 128
    .local v0, e:Ljavax/net/ssl/SSLException;
    #v0=(Reference);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 129
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    new-array v6, v7, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    new-instance v4, Lcom/android/emailcommon/mail/CertificateValidationException;

    #v4=(UninitRef);
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-direct {v4, v5, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v4=(Reference);
    throw v4

    .line 132
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    #v0=(Uninit);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    .line 133
    .local v2, ioe:Ljava/io/IOException;
    #v2=(Reference);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 134
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    new-array v6, v7, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    :cond_4
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    #v4=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-direct {v4, v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 137
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    #v2=(Uninit);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v1

    .line 138
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    #v1=(Reference);
    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 139
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    new-array v6, v7, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    :cond_5
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    #v4=(UninitRef);
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-direct {v4, v7, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    #v4=(Reference);
    throw v4
.end method

.method public readLine(Z)Ljava/lang/String;
    .locals 8
    .parameter "loggable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v6, -0x1

    .line 282
    #v6=(Byte);
    new-instance v3, Ljava/lang/StringBuffer;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v3, sb:Ljava/lang/StringBuffer;
    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 285
    .local v1, in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, d:I
    #v0=(Integer);
    if-eq v0, v6, :cond_1

    .line 286
    int-to-char v4, v0

    #v4=(Char);
    const/16 v5, 0xd

    #v5=(PosByte);
    if-eq v4, v5, :cond_0

    .line 288
    int-to-char v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 294
    :cond_1
    #v4=(Conflicted);v5=(Conflicted);
    if-ne v0, v6, :cond_2

    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 295
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "End of stream reached while trying to read line."

    #v5=(Reference);
    new-array v6, v7, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 297
    :cond_2
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, ret:Ljava/lang/String;
    #v2=(Reference);
    if-eqz p1, :cond_3

    sget-boolean v4, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 299
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "<<< "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 301
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v2

    .line 291
    .end local v2           #ret:Ljava/lang/String;
    :cond_4
    #v2=(Uninit);v4=(Char);v5=(PosByte);v6=(Byte);
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public reopenTls()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 155
    :try_start_0
    #v7=(Null);
    iget-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    #v4=(Boolean);
    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 157
    iget-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v3, 0xea60

    #v3=(Char);
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 158
    new-instance v2, Ljava/io/BufferedInputStream;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    #v4=(PosShort);
    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 159
    new-instance v2, Ljava/io/BufferedOutputStream;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    return-void

    .line 161
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    .line 162
    .local v0, e:Ljavax/net/ssl/SSLException;
    #v0=(Reference);
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v2, Lcom/android/emailcommon/mail/CertificateValidationException;

    #v2=(UninitRef);
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v2=(Reference);
    throw v2

    .line 166
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    #v0=(Uninit);v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    .line 167
    .local v1, ioe:Ljava/io/IOException;
    #v1=(Reference);
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 168
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    #v2=(UninitRef);
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v8, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    #v2=(Reference);
    throw v2
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 262
    #v4=(Null);
    sget-boolean v1, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 263
    if-eqz p2, :cond_1

    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_SENSITIVE:Z

    if-nez v1, :cond_1

    .line 264
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, ">>> "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 271
    .local v0, out:Ljava/io/OutputStream;
    #v0=(Reference);
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 272
    const/16 v1, 0xd

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 273
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 274
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 275
    return-void

    .line 266
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, ">>> "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
