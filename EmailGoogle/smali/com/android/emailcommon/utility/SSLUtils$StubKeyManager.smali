.class abstract Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StubKeyManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public final chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method public final getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method public final getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v0=(Reference);
    throw v0
.end method
