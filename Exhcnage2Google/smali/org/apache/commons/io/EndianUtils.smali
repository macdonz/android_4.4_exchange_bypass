.class public Lorg/apache/commons/io/EndianUtils;
.super Ljava/lang/Object;
.source "EndianUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    #p0=(Reference);
    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 483
    .local v0, value:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v1, v0, :cond_0

    .line 484
    new-instance v1, Ljava/io/EOFException;

    #v1=(UninitRef);
    const-string v2, "Unexpected EOF reached"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 487
    :cond_0
    #v1=(Byte);v2=(Uninit);
    return v0
.end method

.method public static readSwappedDouble(Ljava/io/InputStream;)D
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    return-wide v0
.end method

.method public static readSwappedFloat(Ljava/io/InputStream;)F
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    #v0=(Float);
    return v0
.end method

.method public static readSwappedInteger(Ljava/io/InputStream;)I
    .locals 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 349
    .local v0, value1:I
    #v0=(Integer);
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 350
    .local v1, value2:I
    #v1=(Integer);
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    .line 351
    .local v2, value3:I
    #v2=(Integer);
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v3

    .line 353
    .local v3, value4:I
    #v3=(Integer);
    and-int/lit16 v4, v0, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x0

    and-int/lit16 v5, v1, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    return v4
.end method

.method public static readSwappedLong(Ljava/io/InputStream;)J
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 413
    #v3=(PosByte);
    new-array v0, v3, [B

    .line 414
    .local v0, bytes:[B
    #v0=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    if-ge v1, v3, :cond_0

    .line 415
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    #v2=(Integer);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_0
    #v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v0, v2}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong([BI)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    return-wide v2
.end method

.method public static readSwappedLong([BI)J
    .locals 8
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 220
    add-int/lit8 v4, p1, 0x0

    #v4=(Integer);
    aget-byte v4, p0, v4

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v5, p1, 0x1

    #v5=(Integer);
    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    int-to-long v2, v4

    .line 225
    .local v2, low:J
    #v2=(LongLo);v3=(LongHi);
    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v5, p1, 0x5

    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x6

    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x7

    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    int-to-long v0, v4

    .line 230
    .local v0, high:J
    #v0=(LongLo);v1=(LongHi);
    const/16 v4, 0x20

    #v4=(PosByte);
    shl-long v4, v0, v4

    #v4=(LongLo);v5=(LongHi);
    const-wide v6, 0xffffffffL

    #v6=(LongLo);v7=(LongHi);
    and-long/2addr v6, v2

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static readSwappedShort(Ljava/io/InputStream;)S
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    #v1=(Integer);
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    #v0=(Short);
    return v0
.end method

.method public static readSwappedUnsignedShort(Ljava/io/InputStream;)I
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 316
    .local v0, value1:I
    #v0=(Integer);
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 318
    .local v1, value2:I
    #v1=(Integer);
    and-int/lit16 v2, v0, 0xff

    #v2=(Integer);
    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v3, v1, 0xff

    #v3=(Integer);
    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    return v2
.end method
