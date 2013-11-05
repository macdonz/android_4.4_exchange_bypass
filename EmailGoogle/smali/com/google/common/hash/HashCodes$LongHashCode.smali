.class Lcom/google/common/hash/HashCodes$LongHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongHashCode"
.end annotation


# instance fields
.field final hash:J


# virtual methods
.method public asBytes()[B
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 81
    #v4=(PosByte);
    new-array v0, v4, [B

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);v3=(LongHi);
    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v2=(LongLo);
    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    return-object v0
.end method

.method public asInt()I
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method
