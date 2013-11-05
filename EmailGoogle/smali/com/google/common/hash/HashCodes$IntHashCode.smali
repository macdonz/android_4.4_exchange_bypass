.class Lcom/google/common/hash/HashCodes$IntHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntHashCode"
.end annotation


# instance fields
.field final hash:I


# virtual methods
.method public asBytes()[B
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [B

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    #v2=(Integer);
    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    #v2=(Integer);
    shr-int/lit8 v2, v2, 0x10

    #v2=(Short);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    #v2=(Integer);
    shr-int/lit8 v2, v2, 0x18

    #v2=(Byte);
    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public asInt()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    #v0=(Integer);
    return v0
.end method
