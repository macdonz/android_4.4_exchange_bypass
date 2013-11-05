.class public abstract Lcom/android/exchange/utility/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 6
    .parameter "builder"
    .parameter "s"
    .parameter "charset"
    .parameter "isPartiallyEncoded"

    .prologue
    const/16 v5, 0x25

    #v5=(PosByte);
    const/4 v4, -0x1

    .line 115
    #v4=(Byte);
    if-nez p2, :cond_0

    .line 116
    new-instance v3, Ljava/lang/NullPointerException;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #v3=(Reference);
    throw v3

    .line 119
    :cond_0
    #v3=(Uninit);
    const/4 v1, -0x1

    .line 120
    .local v1, escapeStart:I
    #v1=(Byte);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    if-ge v2, v3, :cond_a

    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .local v0, c:C
    #v0=(Char);
    const/16 v3, 0x61

    #v3=(PosByte);
    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/exchange/utility/UriCodec;->isRetained(C)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    if-ne v0, v5, :cond_9

    if-eqz p4, :cond_9

    .line 127
    :cond_4
    #v3=(PosByte);
    if-eq v1, v4, :cond_5

    .line 128
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {p1, v3, p3}, Lcom/android/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 129
    const/4 v1, -0x1

    .line 131
    :cond_5
    #v3=(Conflicted);
    if-ne v0, v5, :cond_7

    if-eqz p4, :cond_7

    .line 133
    add-int/lit8 v3, v2, 0x3

    #v3=(Integer);
    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v2, v2, 0x2

    .line 120
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_7
    #v3=(Conflicted);
    const/16 v3, 0x20

    #v3=(PosByte);
    if-ne v0, v3, :cond_8

    .line 136
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :cond_9
    #v3=(Boolean);
    if-ne v1, v4, :cond_6

    .line 141
    move v1, v2

    goto :goto_1

    .line 144
    .end local v0           #c:C
    :cond_a
    #v0=(Conflicted);v3=(Integer);
    if-eq v1, v4, :cond_b

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {p1, v3, p3}, Lcom/android/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 147
    :cond_b
    #v3=(Conflicted);
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 1
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 230
    const/16 v0, 0x25

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {p1}, Lcom/android/exchange/utility/Misc;->byteToHexString(B)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4
    .parameter "builder"
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, arr$:[B
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 225
    .local v1, b:B
    #v1=(Byte);
    invoke-static {p0, v1}, Lcom/android/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v1           #b:B
    :cond_0
    #v1=(Conflicted);
    return-void
.end method


# virtual methods
.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "s"

    .prologue
    .line 161
    sget-object v0, Lcom/android/exchange/utility/Misc;->UTF_8:Ljava/nio/charset/Charset;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/utility/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 162
    return-void
.end method

.method protected abstract isRetained(C)Z
.end method
