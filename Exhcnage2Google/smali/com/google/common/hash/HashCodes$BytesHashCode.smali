.class Lcom/google/common/hash/HashCodes$BytesHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesHashCode"
.end annotation


# instance fields
.field final bytes:[B


# virtual methods
.method public asBytes()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    #v0=(Reference);
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public asInt()I
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    aget-byte v0, v0, v1

    #v0=(Byte);
    and-int/lit16 v0, v0, 0xff

    #v0=(Integer);
    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    aget-byte v1, v1, v2

    #v1=(Byte);
    and-int/lit16 v1, v1, 0xff

    #v1=(Integer);
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    aget-byte v1, v1, v2

    #v1=(Byte);
    and-int/lit16 v1, v1, 0xff

    #v1=(Integer);
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    #v1=(Reference);
    const/4 v2, 0x3

    aget-byte v1, v1, v2

    #v1=(Byte);
    and-int/lit16 v1, v1, 0xff

    #v1=(Integer);
    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
