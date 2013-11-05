.class public Lorg/apache/james/mime4j/decoder/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field private static TRANSLATION:[B


# instance fields
.field private done:Z

.field private final inputBuffer:[B

.field private outCount:I

.field private outIndex:I

.field private final outputBuffer:[I

.field private final s:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x100

    #v0=(PosShort);
    new-array v0, v0, [B

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 43
    #v1=(Null);
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    #p0=(Reference);
    iput v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    .line 38
    iput v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outIndex:I

    .line 39
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    .line 40
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [B

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->inputBuffer:[B

    .line 41
    iput-boolean v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    .line 44
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    .line 45
    return-void
.end method

.method private decodeAndEnqueue(I)V
    .locals 7
    .parameter "len"

    .prologue
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 105
    #v3=(Null);
    const/4 v0, 0x0

    .line 106
    .local v0, accum:I
    #v0=(Null);
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->inputBuffer:[B

    #v1=(Reference);
    aget-byte v1, v1, v3

    #v1=(Byte);
    shl-int/lit8 v1, v1, 0x12

    #v1=(Integer);
    or-int/2addr v0, v1

    .line 107
    #v0=(Integer);
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->inputBuffer:[B

    #v1=(Reference);
    aget-byte v1, v1, v4

    #v1=(Byte);
    shl-int/lit8 v1, v1, 0xc

    #v1=(Integer);
    or-int/2addr v0, v1

    .line 108
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->inputBuffer:[B

    #v1=(Reference);
    aget-byte v1, v1, v5

    #v1=(Byte);
    shl-int/lit8 v1, v1, 0x6

    #v1=(Integer);
    or-int/2addr v0, v1

    .line 109
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->inputBuffer:[B

    #v1=(Reference);
    aget-byte v1, v1, v6

    #v1=(Byte);
    or-int/2addr v0, v1

    .line 113
    const/4 v1, 0x4

    #v1=(PosByte);
    if-ne p1, v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    #v1=(Reference);
    shr-int/lit8 v2, v0, 0x10

    #v2=(Short);
    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    aput v2, v1, v3

    .line 115
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    .line 116
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    and-int/lit16 v2, v0, 0xff

    aput v2, v1, v5

    .line 117
    iput v6, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    #v1=(PosByte);v2=(Uninit);
    if-ne p1, v6, :cond_1

    .line 120
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    #v1=(Reference);
    shr-int/lit8 v2, v0, 0x10

    #v2=(Short);
    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    aput v2, v1, v3

    .line 121
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    .line 122
    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    goto :goto_0

    .line 125
    :cond_1
    #v1=(PosByte);v2=(Uninit);
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    #v1=(Reference);
    shr-int/lit8 v2, v0, 0x10

    #v2=(Short);
    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    aput v2, v1, v3

    .line 126
    iput v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    goto :goto_0
.end method

.method private fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    #v4=(Null);
    iput v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    .line 76
    iput v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outIndex:I

    .line 77
    const/4 v1, 0x0

    .line 81
    .local v1, inCount:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-boolean v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 82
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, i:I
    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 92
    sget-object v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    aget-byte v3, v4, v0

    .line 93
    .local v3, sX:B
    #v3=(Byte);
    if-ltz v3, :cond_0

    .line 94
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #inCount:I
    .local v2, inCount:I
    #v2=(Integer);
    aput-byte v3, v4, v1

    .line 95
    const/4 v4, 0x4

    #v4=(PosByte);
    if-ne v2, v4, :cond_2

    .line 96
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->decodeAndEnqueue(I)V

    move v1, v2

    .line 102
    .end local v0           #i:I
    .end local v2           #inCount:I
    .end local v3           #sX:B
    .restart local v1       #inCount:I
    :cond_1
    :goto_1
    :sswitch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 88
    .restart local v0       #i:I
    :sswitch_1
    #v0=(Integer);v4=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    .line 89
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->decodeAndEnqueue(I)V

    goto :goto_1

    .end local v1           #inCount:I
    .restart local v2       #inCount:I
    .restart local v3       #sX:B
    :cond_2
    #v2=(Integer);v3=(Byte);v4=(PosByte);
    move v1, v2

    .line 99
    .end local v2           #inCount:I
    .restart local v1       #inCount:I
    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 55
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outIndex:I

    #v0=(Integer);
    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->fillBuffer()V

    .line 61
    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outIndex:I

    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outCount:I

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, -0x1

    .line 66
    :goto_0
    #v2=(Conflicted);
    return v0

    :cond_0
    #v2=(Uninit);
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outputBuffer:[I

    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outIndex:I

    add-int/lit8 v2, v1, 0x1

    #v2=(Integer);
    iput v2, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->outIndex:I

    aget v0, v0, v1

    #v0=(Integer);
    goto :goto_0
.end method
