.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "0123456789abcdef"

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 78
    instance-of v1, p1, Lcom/google/common/hash/HashCode;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 79
    #v0=(Reference);
    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 82
    .local v0, that:Lcom/google/common/hash/HashCode;
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v2

    #v2=(Reference);
    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    .line 84
    .end local v0           #that:Lcom/google/common/hash/HashCode;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v2

    .line 112
    .local v2, bytes:[B
    #v2=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    array-length v6, v2

    #v6=(Integer);
    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v5, sb:Ljava/lang/StringBuilder;
    #v5=(Reference);
    move-object v0, v2

    .local v0, arr$:[B
    #v0=(Reference);
    array-length v4, v0

    .local v4, len$:I
    #v4=(Integer);
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    #v1=(Conflicted);v3=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 114
    .local v1, b:B
    #v1=(Byte);
    sget-object v6, Lcom/google/common/hash/HashCode;->hexDigits:[C

    #v6=(Reference);
    shr-int/lit8 v7, v1, 0x4

    #v7=(Byte);
    and-int/lit8 v7, v7, 0xf

    #v7=(Integer);
    aget-char v6, v6, v7

    #v6=(Char);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    #v6=(Reference);
    sget-object v7, Lcom/google/common/hash/HashCode;->hexDigits:[C

    #v7=(Reference);
    and-int/lit8 v8, v1, 0xf

    #v8=(Integer);
    aget-char v7, v7, v8

    #v7=(Char);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v1           #b:B
    :cond_0
    #v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    return-object v6
.end method
