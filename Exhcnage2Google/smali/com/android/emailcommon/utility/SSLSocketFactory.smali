.class public Lcom/android/emailcommon/utility/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 154
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 157
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 162
    new-instance v0, Lcom/android/emailcommon/utility/SSLSocketFactory;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    #p0=(Reference);
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 243
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 244
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 245
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 246
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .parameter "socketfactory"

    .prologue
    const/4 v1, 0x0

    .line 230
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    #p0=(Reference);
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 231
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 232
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 233
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 234
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 8
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 293
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #v6=(UninitRef);
    const-string v7, "Target host may not be null."

    #v7=(Reference);
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 295
    :cond_0
    #v6=(Uninit);v7=(Uninit);
    if-nez p6, :cond_1

    .line 296
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #v6=(UninitRef);
    const-string v7, "Parameters may not be null."

    #v7=(Reference);
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 299
    :cond_1
    #v6=(Uninit);v7=(Uninit);
    if-eqz p1, :cond_5

    move-object v5, p1

    :goto_0
    #v5=(Reference);
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 302
    .local v5, sslsock:Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_2

    if-lez p5, :cond_4

    .line 305
    :cond_2
    if-gez p5, :cond_3

    .line 306
    const/4 p5, 0x0

    .line 308
    :cond_3
    new-instance v2, Ljava/net/InetSocketAddress;

    #v2=(UninitRef);
    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 310
    .local v2, isa:Ljava/net/InetSocketAddress;
    #v2=(Reference);
    invoke-virtual {v5, v2}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 313
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    :cond_4
    #v2=(Conflicted);
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 314
    .local v0, connTimeout:I
    #v0=(Integer);
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v4

    .line 317
    .local v4, soTimeout:I
    #v4=(Integer);
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #v6=(Reference);
    if-eqz v6, :cond_6

    .line 318
    new-instance v3, Ljava/net/InetSocketAddress;

    #v3=(UninitRef);
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v6, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v3, v6, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 323
    .local v3, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_1
    #v3=(Reference);
    invoke-virtual {v5, v3, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 325
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 327
    :try_start_0
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v6, p2, v5}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    return-object v5

    .line 299
    .end local v0           #connTimeout:I
    .end local v3           #remoteAddress:Ljava/net/InetSocketAddress;
    .end local v4           #soTimeout:I
    .end local v5           #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_5
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    #v5=(Reference);
    goto :goto_0

    .line 320
    .restart local v0       #connTimeout:I
    .restart local v4       #soTimeout:I
    .restart local v5       #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_6
    #v0=(Integer);v2=(Conflicted);v4=(Integer);v6=(Reference);
    new-instance v3, Ljava/net/InetSocketAddress;

    #v3=(UninitRef);
    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v3       #remoteAddress:Ljava/net/InetSocketAddress;
    #v3=(Reference);
    goto :goto_1

    .line 329
    :catch_0
    move-exception v1

    .line 331
    .local v1, iox:Ljava/io/IOException;
    :try_start_1
    #v1=(Reference);
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    :goto_2
    throw v1

    .line 331
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #v0=(Reference);
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 389
    .local v0, sslSocket:Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 391
    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Socket may not be null."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 361
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Socket not created by this factory."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 366
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Socket is closed."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 370
    :cond_2
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .parameter "hostnameVerifier"

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Hostname verifier may not be null"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 398
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 399
    return-void
.end method
