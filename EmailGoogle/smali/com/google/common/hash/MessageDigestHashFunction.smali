.class final Lcom/google/common/hash/MessageDigestHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "MessageDigestHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/MessageDigestHashFunction$1;,
        Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;
    }
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final bits:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "algorithmName"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 42
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->algorithmName:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    #v0=(Integer);
    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bits:I

    .line 44
    return-void
.end method

.method private static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .parameter "algorithmName"

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    #v1=(Reference);
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    #v0=(Reference);
    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #v1=(Reference);
    throw v1
.end method
