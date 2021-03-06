.class public Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
.super Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainKeyManager"
.end annotation


# instance fields
.field private final mCertificateChain:[Ljava/security/cert/X509Certificate;

.field private final mClientAlias:Ljava/lang/String;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 1
    .parameter "clientAlias"
    .parameter "certificateChain"
    .parameter "privateKey"

    .prologue
    .line 335
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V

    .line 336
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mClientAlias:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 338
    iput-object p3, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 339
    return-void
.end method

.method public static fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
    .locals 5
    .parameter "context"
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 309
    .local v0, certificateChain:[Ljava/security/cert/X509Certificate;
    :try_start_1
    #v0=(Reference);
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Landroid/security/KeyChainException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 318
    .local v2, privateKey:Ljava/security/PrivateKey;
    #v2=(Reference);
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 319
    :cond_0
    new-instance v3, Ljava/security/cert/CertificateException;

    #v3=(UninitRef);
    const-string v4, "Can\'t access certificate from keystore"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 299
    .end local v0           #certificateChain:[Ljava/security/cert/X509Certificate;
    .end local v2           #privateKey:Ljava/security/PrivateKey;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/security/KeyChainException;
    #v1=(Reference);
    const-string v3, "certificate chain"

    #v3=(Reference);
    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 301
    new-instance v3, Ljava/security/cert/CertificateException;

    #v3=(UninitRef);
    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #v3=(Reference);
    throw v3

    .line 302
    .end local v1           #e:Landroid/security/KeyChainException;
    :catch_1
    move-exception v1

    .line 303
    .local v1, e:Ljava/lang/InterruptedException;
    #v1=(Reference);
    const-string v3, "certificate chain"

    #v3=(Reference);
    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    new-instance v3, Ljava/security/cert/CertificateException;

    #v3=(UninitRef);
    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #v3=(Reference);
    throw v3

    .line 310
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #certificateChain:[Ljava/security/cert/X509Certificate;
    :catch_2
    #v0=(Reference);v1=(Uninit);v3=(Uninit);
    move-exception v1

    .line 311
    .local v1, e:Landroid/security/KeyChainException;
    #v1=(Reference);
    const-string v3, "private key"

    #v3=(Reference);
    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 312
    new-instance v3, Ljava/security/cert/CertificateException;

    #v3=(UninitRef);
    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #v3=(Reference);
    throw v3

    .line 313
    .end local v1           #e:Landroid/security/KeyChainException;
    :catch_3
    #v1=(Uninit);v3=(Uninit);
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/InterruptedException;
    #v1=(Reference);
    const-string v3, "private key"

    #v3=(Reference);
    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 315
    new-instance v3, Ljava/security/cert/CertificateException;

    #v3=(UninitRef);
    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #v3=(Reference);
    throw v3

    .line 322
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #privateKey:Ljava/security/PrivateKey;
    :cond_1
    #v1=(Uninit);v2=(Reference);v3=(Uninit);
    new-instance v3, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    #v3=(UninitRef);
    invoke-direct {v3, p1, v0, v2}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    #v3=(Reference);
    return-object v3
.end method

.method private static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "alias"
    .parameter "type"
    .parameter "ex"

    .prologue
    .line 330
    const-string v0, "Email.Ssl"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Unable to retrieve "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mClientAlias:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter "alias"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    #v0=(Reference);
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "alias"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    #v0=(Reference);
    return-object v0
.end method
