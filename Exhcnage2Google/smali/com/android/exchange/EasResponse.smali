.class public Lcom/android/exchange/EasResponse;
.super Ljava/lang/Object;
.source "EasResponse.java"


# instance fields
.field private final mClientCertRequested:Z

.field private mClosed:Z

.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private mInputStream:Ljava/io/InputStream;

.field private final mLength:I

.field private final mResponse:Lorg/apache/http/HttpResponse;

.field private final mStatus:I


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpResponse;Lcom/android/emailcommon/utility/EmailClientConnectionManager;J)V
    .locals 6
    .parameter "response"
    .parameter "connManager"
    .parameter "reqTime"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 61
    #v3=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 63
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    #v1=(Reference);
    iput-object v1, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    .line 64
    iget-object v1, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    long-to-int v1, v4

    #v1=(Integer);
    iput v1, p0, Lcom/android/exchange/EasResponse;->mLength:I

    .line 69
    :goto_1
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 70
    .local v0, status:I
    #v0=(Integer);
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    invoke-virtual {p2, p3, p4}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->hasDetectedUnsatisfiedCertReq(J)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    .line 72
    iget-boolean v1, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    if-eqz v1, :cond_0

    .line 73
    const/16 v0, 0x191

    .line 74
    #v0=(PosShort);
    iput-boolean v2, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    .line 76
    :cond_0
    #v0=(Integer);
    iput v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    .line 77
    return-void

    .line 63
    .end local v0           #status:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v1, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    #v1=(Reference);
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_2
    iput v3, p0, Lcom/android/exchange/EasResponse;->mLength:I

    goto :goto_1

    .restart local v0       #status:I
    :cond_3
    #v0=(Integer);v1=(Boolean);v4=(Conflicted);v5=(Conflicted);
    move v1, v3

    .line 70
    #v1=(Null);
    goto :goto_2
.end method

.method public static fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;
    .locals 4
    .parameter "connManager"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, reqTime:J
    #v0=(LongLo);v1=(LongHi);
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 84
    .local v2, response:Lorg/apache/http/HttpResponse;
    #v2=(Reference);
    new-instance v3, Lcom/android/exchange/EasResponse;

    #v3=(UninitRef);
    invoke-direct {v3, v2, p0, v0, v1}, Lcom/android/exchange/EasResponse;-><init>(Lorg/apache/http/HttpResponse;Lcom/android/emailcommon/utility/EmailClientConnectionManager;J)V

    #v3=(Reference);
    return-object v3
.end method

.method private static isAuthError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 122
    const/16 v0, 0x191

    #v0=(PosShort);
    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(PosShort);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/GZIPInputStream;

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :cond_1
    :goto_1
    #v0=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    .line 205
    :cond_2
    #v0=(Boolean);
    return-void

    .line 199
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_1

    .line 192
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1
    .parameter "name"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    #v4=(Reference);
    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 144
    :cond_0
    #v4=(Conflicted);
    new-instance v4, Ljava/lang/IllegalStateException;

    #v4=(UninitRef);
    const-string v5, "Can\'t reuse stream or get closed stream"

    #v5=(Reference);
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 145
    :cond_1
    #v4=(Boolean);v5=(Uninit);
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    #v4=(Reference);
    if-nez v4, :cond_2

    .line 146
    new-instance v4, Ljava/lang/IllegalStateException;

    #v4=(UninitRef);
    const-string v5, "Can\'t get input stream without entity"

    #v5=(Reference);
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 148
    :cond_2
    #v5=(Uninit);
    const/4 v2, 0x0

    .line 151
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    #v2=(Null);
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 152
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v5, "Content-Encoding"

    #v5=(Reference);
    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 153
    .local v0, ceHeader:Lorg/apache/http/Header;
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 154
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, encoding:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 157
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    #v3=(UninitRef);
    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    #v3=(Reference);
    move-object v2, v3

    .line 163
    .end local v0           #ceHeader:Lorg/apache/http/Header;
    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_3
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iput-object v2, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    .line 164
    return-object v2

    .line 161
    :catch_0
    move-exception v4

    #v4=(Reference);
    goto :goto_0

    .line 160
    :catch_1
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference);
    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    #v0=(Integer);
    return v0
.end method

.method public getRedirectAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const-string v1, "X-MS-Location"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 131
    .local v0, locHeader:Lorg/apache/http/Header;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    #v0=(Integer);
    return v0
.end method

.method public isAuthError()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    #v0=(Integer);
    const/16 v1, 0x191

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

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

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    #v0=(Integer);
    if-nez v0, :cond_0

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

.method public isForbidden()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    #v0=(Integer);
    const/16 v1, 0x193

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

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

.method public isMissingCertificate()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    #v0=(Boolean);
    return v0
.end method

.method public isProvisionError()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    #v0=(Integer);
    const/16 v1, 0x1c1

    #v1=(PosShort);
    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/exchange/EasResponse;->isForbidden()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isRedirectError()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    #v0=(Integer);
    const/16 v1, 0x1c3

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

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

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/exchange/EasResponse;->mStatus:I

    #v0=(Integer);
    const/16 v1, 0xc8

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

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
