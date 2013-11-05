.class public Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;,
        Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field private static final ATEXT_CHARS:Ljava/util/BitSet;

.field static final BASE64_TABLE:[B

.field private static final Q_REGULAR_CHARS:Ljava/util/BitSet;

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x40

    #v0=(PosByte);
    new-array v0, v0, [B

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    .line 55
    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 57
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 66
    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    .line 68
    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    return-void

    .line 45
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    #p0=(Reference);
    return-void
.end method

.method private static bEncodedLength([B)I
    .locals 1
    .parameter "bytes"

    .prologue
    .line 537
    array-length v0, p0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .parameter "text"

    .prologue
    .line 594
    const/4 v0, 0x1

    .line 595
    .local v0, ascii:Z
    #v0=(One);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 596
    .local v3, len:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Integer);v4=(Conflicted);
    if-ge v2, v3, :cond_2

    .line 597
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 598
    .local v1, ch:C
    #v1=(Char);
    const/16 v4, 0xff

    #v4=(PosShort);
    if-le v1, v4, :cond_0

    .line 599
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 605
    .end local v1           #ch:C
    :goto_1
    #v1=(Conflicted);v4=(Reference);
    return-object v4

    .line 601
    .restart local v1       #ch:C
    :cond_0
    #v1=(Char);v4=(PosShort);
    const/16 v4, 0x7f

    #v4=(PosByte);
    if-le v1, v4, :cond_1

    .line 602
    const/4 v0, 0x0

    .line 596
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v1           #ch:C
    :cond_2
    #v1=(Conflicted);v4=(Conflicted);
    if-eqz v0, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    #v4=(Reference);
    goto :goto_1

    :cond_3
    #v4=(Conflicted);
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    #v4=(Reference);
    goto :goto_1
.end method

.method private static determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .locals 7
    .parameter "bytes"
    .parameter "usage"

    .prologue
    .line 609
    array-length v5, p0

    #v5=(Integer);
    if-nez v5, :cond_0

    .line 610
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 624
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);
    return-object v5

    .line 612
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Uninit);
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    #v5=(Reference);
    if-ne p1, v5, :cond_2

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 615
    .local v2, qChars:Ljava/util/BitSet;
    :goto_1
    #v2=(Reference);
    const/4 v3, 0x0

    .line 616
    .local v3, qEncoded:I
    #v3=(Null);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    #v0=(Integer);v3=(Integer);v4=(Conflicted);v5=(Conflicted);
    array-length v5, p0

    #v5=(Integer);
    if-ge v0, v5, :cond_3

    .line 617
    aget-byte v5, p0, v0

    #v5=(Byte);
    and-int/lit16 v4, v5, 0xff

    .line 618
    .local v4, v:I
    #v4=(Integer);
    const/16 v5, 0x20

    #v5=(PosByte);
    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 619
    add-int/lit8 v3, v3, 0x1

    .line 616
    :cond_1
    #v5=(PosByte);
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 612
    .end local v0           #i:I
    .end local v2           #qChars:Ljava/util/BitSet;
    .end local v3           #qEncoded:I
    .end local v4           #v:I
    :cond_2
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Reference);
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    #v2=(Reference);
    goto :goto_1

    .line 623
    .restart local v0       #i:I
    .restart local v2       #qChars:Ljava/util/BitSet;
    .restart local v3       #qEncoded:I
    :cond_3
    #v0=(Integer);v3=(Integer);v4=(Conflicted);v5=(Integer);
    mul-int/lit8 v5, v3, 0x64

    array-length v6, p0

    #v6=(Integer);
    div-int v1, v5, v6

    .line 624
    .local v1, percentage:I
    #v1=(Integer);
    const/16 v5, 0x1e

    #v5=(PosByte);
    if-le v1, v5, :cond_4

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    #v5=(Reference);
    goto :goto_0

    :cond_4
    #v5=(PosByte);
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    #v5=(Reference);
    goto :goto_0
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3
    .parameter "text"
    .parameter "charset"

    .prologue
    .line 585
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 586
    .local v0, buffer:Ljava/nio/ByteBuffer;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    #v2=(Integer);
    new-array v1, v2, [B

    .line 587
    .local v1, bytes:[B
    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 588
    return-object v1
.end method

.method public static encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "displayName"

    .prologue
    .line 127
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isAtomPhrase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 132
    .end local p0
    :goto_0
    #v0=(Conflicted);
    return-object p0

    .line 129
    .restart local p0
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    #v0=(Reference);
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 132
    :cond_1
    #v0=(Boolean);
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 11
    .parameter "prefix"
    .parameter "text"
    .parameter "usedCharacters"
    .parameter "charset"
    .parameter "bytes"

    .prologue
    .line 514
    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->bEncodedLength([B)I

    move-result v2

    .line 516
    .local v2, encodedLength:I
    #v2=(Integer);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    #v9=(Integer);
    add-int/2addr v9, v2

    const-string v10, "?="

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    add-int v6, v9, v10

    .line 518
    .local v6, totalLength:I
    #v6=(Integer);
    rsub-int/lit8 v9, p2, 0x4b

    if-gt v6, v9, :cond_0

    .line 519
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 532
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v9

    .line 521
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Integer);v10=(Integer);
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    const/4 v10, -0x1

    #v10=(Byte);
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    .line 523
    .local v5, splitOffset:I
    #v5=(Integer);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, part1:Ljava/lang/String;
    #v3=(Reference);
    invoke-static {v3, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 525
    .local v0, bytes1:[B
    #v0=(Reference);
    invoke-static {p0, v3, p2, p3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, word1:Ljava/lang/String;
    #v7=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, part2:Ljava/lang/String;
    #v4=(Reference);
    invoke-static {v4, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 530
    .local v1, bytes2:[B
    #v1=(Reference);
    const/4 v9, 0x0

    invoke-static {p0, v4, v9, p3, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, word2:Ljava/lang/String;
    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static encodeB([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    const/16 v6, 0x3d

    .line 359
    #v6=(PosByte);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v3, sb:Ljava/lang/StringBuilder;
    #v3=(Reference);
    const/4 v2, 0x0

    .line 362
    .local v2, idx:I
    #v2=(Null);
    array-length v1, p0

    .line 363
    .local v1, end:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v4=(Conflicted);v5=(Conflicted);
    add-int/lit8 v4, v1, -0x2

    #v4=(Integer);
    if-ge v2, v4, :cond_0

    .line 364
    aget-byte v4, p0, v2

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    #v5=(Integer);
    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    or-int v0, v4, v5

    .line 366
    .local v0, data:I
    #v0=(Integer);
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0x12

    #v5=(Short);
    and-int/lit8 v5, v5, 0x3f

    #v5=(Integer);
    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 372
    .end local v0           #data:I
    :cond_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    add-int/lit8 v4, v1, -0x2

    if-ne v2, v4, :cond_2

    .line 373
    aget-byte v4, p0, v2

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    #v5=(Integer);
    aget-byte v5, p0, v5

    #v5=(Byte);
    and-int/lit16 v5, v5, 0xff

    #v5=(Integer);
    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    .line 374
    .restart local v0       #data:I
    #v0=(Integer);
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0x12

    #v5=(Short);
    and-int/lit8 v5, v5, 0x3f

    #v5=(Integer);
    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    .end local v0           #data:I
    :cond_1
    :goto_1
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    return-object v4

    .line 379
    :cond_2
    #v4=(Integer);
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1

    .line 380
    aget-byte v4, p0, v2

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v0, v4, 0x10

    .line 381
    .restart local v0       #data:I
    #v0=(Integer);
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0x12

    #v5=(Short);
    and-int/lit8 v5, v5, 0x3f

    #v5=(Integer);
    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    #v4=(Reference);
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    #v4=(Byte);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "usage"

    .prologue
    const/4 v1, 0x0

    .line 269
    #v1=(Null);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"

    .prologue
    const/4 v0, 0x0

    .line 293
    #v0=(Null);
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"
    .parameter "charset"
    .parameter "encoding"

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 324
    :cond_0
    #v1=(Uninit);
    if-ltz p2, :cond_1

    const/16 v1, 0x32

    #v1=(PosByte);
    if-le p2, v1, :cond_2

    .line 325
    :cond_1
    #v1=(Conflicted);
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 327
    :cond_2
    #v1=(PosByte);
    if-nez p3, :cond_3

    .line 328
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 330
    :cond_3
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, mimeCharset:Ljava/lang/String;
    #v6=(Reference);
    if-nez v6, :cond_4

    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "Unsupported charset"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 336
    :cond_4
    #v2=(Uninit);
    invoke-static {p0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 338
    .local v5, bytes:[B
    #v5=(Reference);
    if-nez p4, :cond_5

    .line 339
    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object p4

    .line 341
    :cond_5
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_6

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "=?"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?B?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, prefix:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {v0, p0, p2, p3, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    .line 346
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    return-object v1

    .line 345
    .end local v0           #prefix:Ljava/lang/String;
    :cond_6
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "=?"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Q?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prefix:Ljava/lang/String;
    #v0=(Reference);
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    #v3=(Integer);
    move-object v4, p3

    .line 346
    #v4=(Reference);
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"

    .prologue
    .line 196
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 199
    .end local p0
    :cond_0
    return-object p0
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 19
    .parameter "prefix"
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"
    .parameter "charset"
    .parameter "bytes"

    .prologue
    .line 542
    move-object/from16 v0, p5

    #v0=(Reference);
    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I

    move-result v14

    .line 544
    .local v14, encodedLength:I
    #v14=(Integer);
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    add-int/2addr v2, v14

    const-string v4, "?="

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    add-int v16, v2, v4

    .line 546
    .local v16, totalLength:I
    #v16=(Integer);
    rsub-int/lit8 v2, p3, 0x4b

    move/from16 v0, v16

    #v0=(Integer);
    if-gt v0, v2, :cond_0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    :goto_0
    #v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return-object v2

    .line 549
    :cond_0
    #v0=(Integer);v2=(Integer);v3=(Uninit);v4=(Integer);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v15=(Uninit);v17=(Uninit);v18=(Uninit);
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v4, -0x1

    #v4=(Byte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v15

    .line 551
    .local v15, splitOffset:I
    #v15=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, part1:Ljava/lang/String;
    #v3=(Reference);
    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .local v7, bytes1:[B
    #v7=(Reference);
    move-object/from16 v2, p0

    #v2=(Reference);
    move-object/from16 v4, p2

    #v4=(Reference);
    move/from16 v5, p3

    #v5=(Integer);
    move-object/from16 v6, p4

    .line 553
    #v6=(Reference);
    invoke-static/range {v2 .. v7}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v17

    .line 556
    .local v17, word1:Ljava/lang/String;
    #v17=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 557
    .local v9, part2:Ljava/lang/String;
    #v9=(Reference);
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 558
    .local v13, bytes2:[B
    #v13=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    move-object/from16 v8, p0

    #v8=(Reference);
    move-object/from16 v10, p2

    #v10=(Reference);
    move-object/from16 v12, p4

    #v12=(Reference);
    invoke-static/range {v8 .. v13}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v18

    .line 560
    .local v18, word2:Ljava/lang/String;
    #v18=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "usage"

    .prologue
    .line 402
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    #v5=(Reference);
    if-ne p1, v5, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 405
    .local v2, qChars:Ljava/util/BitSet;
    :goto_0
    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v3, sb:Ljava/lang/StringBuilder;
    #v3=(Reference);
    array-length v0, p0

    .line 408
    .local v0, end:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_1
    #v1=(Integer);v4=(Conflicted);v5=(Conflicted);
    if-ge v1, v0, :cond_3

    .line 409
    aget-byte v5, p0, v1

    #v5=(Byte);
    and-int/lit16 v4, v5, 0xff

    .line 410
    .local v4, v:I
    #v4=(Integer);
    const/16 v5, 0x20

    #v5=(PosByte);
    if-ne v4, v5, :cond_1

    .line 411
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :goto_2
    #v5=(Char);
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    .end local v0           #end:I
    .end local v1           #idx:I
    .end local v2           #qChars:Ljava/util/BitSet;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #v:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Reference);
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    #v2=(Reference);
    goto :goto_0

    .line 412
    .restart local v0       #end:I
    .restart local v1       #idx:I
    .restart local v2       #qChars:Ljava/util/BitSet;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    .restart local v4       #v:I
    :cond_1
    #v0=(Integer);v1=(Integer);v3=(Reference);v4=(Integer);v5=(PosByte);
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 413
    const/16 v5, 0x3d

    #v5=(PosByte);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    ushr-int/lit8 v5, v4, 0x4

    #v5=(Integer);
    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    #v5=(Char);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    and-int/lit8 v5, v4, 0xf

    #v5=(Integer);
    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    #v5=(Char);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 417
    :cond_2
    #v5=(Boolean);
    int-to-char v5, v4

    #v5=(Char);
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 421
    .end local v4           #v:I
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    return-object v5
.end method

.method public static hasToBeEncoded(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "usedCharacters"

    .prologue
    const/16 v5, 0x20

    #v5=(PosByte);
    const/4 v3, 0x1

    .line 217
    #v3=(One);
    if-nez p0, :cond_0

    .line 218
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v3=(Reference);
    throw v3

    .line 219
    :cond_0
    #v3=(One);
    if-ltz p1, :cond_1

    const/16 v4, 0x32

    #v4=(PosByte);
    if-le p1, v4, :cond_2

    .line 220
    :cond_1
    #v4=(Conflicted);
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v3=(Reference);
    throw v3

    .line 222
    :cond_2
    #v3=(One);v4=(PosByte);
    move v2, p1

    .line 224
    .local v2, nonWhiteSpaceCount:I
    #v2=(Integer);
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-ge v1, v4, :cond_8

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 226
    .local v0, ch:C
    #v0=(Char);
    const/16 v4, 0x9

    #v4=(PosByte);
    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_5

    .line 227
    :cond_3
    const/4 v2, 0x0

    .line 224
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 230
    const/16 v4, 0x4d

    if-le v2, v4, :cond_7

    .line 245
    .end local v0           #ch:C
    :cond_6
    :goto_1
    #v0=(Conflicted);v3=(Boolean);v4=(Integer);
    return v3

    .line 238
    .restart local v0       #ch:C
    :cond_7
    #v0=(Char);v3=(One);v4=(PosByte);
    if-lt v0, v5, :cond_6

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_4

    goto :goto_1

    .line 245
    .end local v0           #ch:C
    :cond_8
    #v0=(Conflicted);v4=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1
.end method

.method private static hexDigit(I)C
    .locals 1
    .parameter "i"

    .prologue
    .line 628
    const/16 v0, 0xa

    #v0=(PosByte);
    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    #v0=(Integer);
    int-to-char v0, v0

    :goto_0
    #v0=(Char);
    return v0

    :cond_0
    #v0=(PosByte);
    add-int/lit8 v0, p0, -0xa

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    #v0=(Char);
    goto :goto_0
.end method

.method private static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4
    .parameter "specials"

    .prologue
    .line 71
    new-instance v0, Ljava/util/BitSet;

    #v0=(UninitRef);
    const/16 v2, 0x80

    #v2=(PosShort);
    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 72
    .local v0, bs:Ljava/util/BitSet;
    #v0=(Reference);
    const/16 v1, 0x21

    .local v1, ch:C
    :goto_0
    #v1=(Char);v2=(Integer);v3=(Conflicted);
    const/16 v2, 0x7f

    #v2=(PosByte);
    if-ge v1, v2, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 77
    :cond_1
    #v2=(PosByte);v3=(Conflicted);
    return-object v0
.end method

.method private static isAtomPhrase(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, containsAText:Z
    #v1=(Null);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 458
    .local v3, length:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Integer);v4=(Conflicted);
    if-ge v2, v3, :cond_2

    .line 459
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 460
    .local v0, ch:C
    #v0=(Char);
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    #v4=(Reference);
    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 461
    const/4 v1, 0x1

    .line 458
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 467
    .end local v0           #ch:C
    .end local v1           #containsAText:Z
    :cond_2
    #v0=(Conflicted);v4=(Conflicted);
    return v1
.end method

.method private static qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I
    .locals 5
    .parameter "bytes"
    .parameter "usage"

    .prologue
    .line 565
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    #v4=(Reference);
    if-ne p1, v4, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 568
    .local v2, qChars:Ljava/util/BitSet;
    :goto_0
    #v2=(Reference);
    const/4 v0, 0x0

    .line 570
    .local v0, count:I
    #v0=(Null);
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_1
    #v0=(Integer);v1=(Integer);v3=(Conflicted);v4=(Conflicted);
    array-length v4, p0

    #v4=(Integer);
    if-ge v1, v4, :cond_3

    .line 571
    aget-byte v4, p0, v1

    #v4=(Byte);
    and-int/lit16 v3, v4, 0xff

    .line 572
    .local v3, v:I
    #v3=(Integer);
    const/16 v4, 0x20

    #v4=(PosByte);
    if-ne v3, v4, :cond_1

    .line 573
    add-int/lit8 v0, v0, 0x1

    .line 570
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 565
    .end local v0           #count:I
    .end local v1           #idx:I
    .end local v2           #qChars:Ljava/util/BitSet;
    .end local v3           #v:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Reference);
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    #v2=(Reference);
    goto :goto_0

    .line 574
    .restart local v0       #count:I
    .restart local v1       #idx:I
    .restart local v2       #qChars:Ljava/util/BitSet;
    .restart local v3       #v:I
    :cond_1
    #v0=(Integer);v1=(Integer);v3=(Integer);v4=(PosByte);
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 575
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 577
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 581
    .end local v3           #v:I
    :cond_3
    #v3=(Conflicted);v4=(Integer);
    return v0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 508
    const-string v1, "[\\\\\"]"

    #v1=(Reference);
    const-string v2, "\\\\$0"

    #v2=(Reference);
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, escaped:Ljava/lang/String;
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
