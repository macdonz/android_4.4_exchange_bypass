.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    }
.end annotation


# static fields
.field private static final MD5:Lcom/google/common/hash/HashFunction;

.field private static final MURMUR3_128:Lcom/google/common/hash/Murmur3_128HashFunction;

.field private static final MURMUR3_32:Lcom/google/common/hash/Murmur3_32HashFunction;

.field private static final SHA_1:Lcom/google/common/hash/HashFunction;

.field private static final SHA_256:Lcom/google/common/hash/HashFunction;

.field private static final SHA_512:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    #v1=(Null);
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_32:Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 107
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_128:Lcom/google/common/hash/Murmur3_128HashFunction;

    .line 117
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    #v0=(UninitRef);
    const-string v1, "MD5"

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/hash/Hashing;->MD5:Lcom/google/common/hash/HashFunction;

    .line 127
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    #v0=(UninitRef);
    const-string v1, "SHA-1"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_1:Lcom/google/common/hash/HashFunction;

    .line 137
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    #v0=(UninitRef);
    const-string v1, "SHA-256"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_256:Lcom/google/common/hash/HashFunction;

    .line 147
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    #v0=(UninitRef);
    const-string v1, "SHA-512"

    invoke-direct {v0, v1}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
