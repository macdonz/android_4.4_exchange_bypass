.class public Lcom/android/emailcommon/utility/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/SSLUtils$1;,
        Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;
    }
.end annotation


# static fields
.field private static sSecureFactory:Landroid/net/SSLCertificateSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    #p0=(Reference);
    return-void
.end method

.method public static escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v4, 0x2b

    .line 187
    #v4=(PosByte);
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v2, sb:Ljava/lang/StringBuilder;
    #v2=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_3

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    .local v0, c:C
    #v0=(Char);
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2d

    #v3=(PosByte);
    if-eq v3, v0, :cond_0

    const/16 v3, 0x2e

    if-ne v3, v0, :cond_1

    .line 195
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :goto_1
    #v3=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    #v3=(PosByte);
    if-ne v4, v0, :cond_2

    .line 198
    const-string v3, "++"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    :cond_2
    #v3=(PosByte);
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 204
    .end local v0           #c:C
    :cond_3
    #v0=(Conflicted);v3=(Integer);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    return-object v3
.end method

.method public static getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;
    .locals 4
    .parameter "context"
    .parameter "hostAuth"
    .parameter "keyManager"
    .parameter "insecure"

    .prologue
    .line 167
    invoke-static {p0, p1, p3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v0

    .line 168
    .local v0, underlying:Landroid/net/SSLCertificateSocketFactory;
    #v0=(Reference);
    if-eqz p2, :cond_0

    .line 169
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setKeyManagers([Ljavax/net/ssl/KeyManager;)V

    .line 171
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    new-instance v1, Lcom/android/emailcommon/utility/SSLSocketFactory;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 172
    .local v1, wrapped:Lcom/android/emailcommon/utility/SSLSocketFactory;
    #v1=(Reference);
    if-eqz p3, :cond_1

    .line 173
    sget-object v2, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 175
    :cond_1
    #v2=(Conflicted);
    return-object v1
.end method

.method public static declared-synchronized getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;
    .locals 5
    .parameter "context"
    .parameter "hostAuth"
    .parameter "insecure"

    .prologue
    .line 145
    const-class v2, Lcom/android/emailcommon/utility/SSLUtils;

    #v2=(Reference);
    monitor-enter v2

    if-eqz p2, :cond_0

    .line 146
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v3, 0x0

    :try_start_0
    #v3=(Null);
    invoke-static {v1, v3}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 148
    .local v0, insecureFactory:Landroid/net/SSLCertificateSocketFactory;
    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    #v1=(Reference);
    const/4 v3, 0x0

    new-instance v4, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;

    #v4=(UninitRef);
    invoke-direct {v4, p0, p1}, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    #v4=(Reference);
    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v0           #insecureFactory:Landroid/net/SSLCertificateSocketFactory;
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    monitor-exit v2

    return-object v0

    .line 153
    :cond_0
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);
    sget-object v1, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;

    #v1=(Reference);
    if-nez v1, :cond_1

    .line 154
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v1, v3}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/SSLCertificateSocketFactory;

    sput-object v1, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;

    .line 157
    :cond_1
    #v3=(Conflicted);
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #v0=(Reference);
    goto :goto_0

    .line 145
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v2

    throw v1
.end method
