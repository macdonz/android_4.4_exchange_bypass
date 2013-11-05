.class public Lcom/android/exchange/adapter/ItemOperationsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ItemOperationsParser.java"


# instance fields
.field private final mAttachmentOutputStream:Ljava/io/OutputStream;

.field private final mAttachmentSize:J

.field private final mCallback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "size"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 30
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    .line 38
    iput-object p2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    .line 39
    iput-wide p3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentSize:J

    .line 40
    iput-object p5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mCallback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;

    .line 41
    return-void
.end method

.method private parseFetch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :goto_0
    const/16 v0, 0x506

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 62
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x50b

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->parseProperties()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 68
    :cond_1
    #v1=(PosByte);
    return-void
.end method

.method private parseProperties()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :goto_0
    const/16 v1, 0x50b

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_1

    .line 49
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x50c

    #v2=(PosShort);
    if-ne v1, v2, :cond_0

    .line 51
    new-instance v0, Lcom/android/exchange/adapter/Base64InputStream;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getInput()Ljava/io/InputStream;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v0, bis:Lcom/android/exchange/adapter/Base64InputStream;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    iget-wide v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentSize:J

    #v2=(LongLo);v3=(LongHi);
    iget-object v4, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mCallback:Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;

    #v4=(Reference);
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V

    goto :goto_0

    .line 55
    .end local v0           #bis:Lcom/android/exchange/adapter/Base64InputStream;
    :cond_0
    #v0=(Conflicted);v1=(Integer);v2=(PosShort);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 58
    :cond_1
    #v2=(PosByte);
    return-void
.end method

.method private parseResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    :goto_0
    const/16 v0, 0x50e

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    .line 72
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x506

    #v1=(PosShort);
    if-ne v0, v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->parseFetch()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 78
    :cond_1
    #v1=(PosByte);
    return-void
.end method

.method public static readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;)V
    .locals 11
    .parameter "inputStream"
    .parameter "outputStream"
    .parameter "length"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x4000

    #v10=(PosShort);
    const/4 v9, 0x0

    .line 109
    #v9=(Null);
    new-array v0, v10, [B

    .line 112
    .local v0, bytes:[B
    #v0=(Reference);
    const/4 v6, 0x0

    .line 113
    .local v6, totalRead:I
    #v6=(Null);
    const-wide/16 v1, -0x1

    .line 114
    .local v1, lastCallbackPct:J
    #v1=(LongLo);v2=(LongHi);
    const/4 v3, 0x0

    .line 116
    .local v3, lastCallbackTotalRead:I
    :cond_0
    :goto_0
    #v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {p0, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 117
    .local v5, read:I
    #v5=(Integer);
    if-gez v5, :cond_1

    .line 143
    return-void

    .line 123
    :cond_1
    add-int/2addr v6, v5

    .line 125
    invoke-virtual {p1, v0, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, p2, v7

    #v7=(Byte);
    if-lez v7, :cond_0

    .line 129
    mul-int/lit8 v7, v6, 0x64

    #v7=(Integer);
    int-to-long v7, v7

    #v7=(LongLo);
    div-long/2addr v7, p2

    long-to-int v4, v7

    .line 132
    .local v4, pct:I
    #v4=(Integer);
    int-to-long v7, v4

    cmp-long v7, v7, v1

    #v7=(Byte);
    if-lez v7, :cond_0

    add-int/lit16 v7, v3, 0x4000

    #v7=(Integer);
    if-le v6, v7, :cond_0

    .line 134
    invoke-virtual {p4, v4}, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;->doCallback(I)V

    .line 138
    move v3, v6

    .line 139
    int-to-long v1, v4

    goto :goto_0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    #v0=(Integer);
    return v0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    #v3=(Null);
    const/4 v0, 0x0

    .line 83
    .local v0, res:Z
    #v0=(Null);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x505

    #v2=(PosShort);
    if-eq v1, v2, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    #v1=(Reference);
    throw v1

    .line 86
    :cond_0
    :goto_0
    #v1=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_3

    .line 87
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x50d

    #v2=(PosShort);
    if-ne v1, v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    goto :goto_0

    .line 90
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x50e

    if-ne v1, v2, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->parseResponse()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 96
    :cond_3
    #v2=(PosByte);
    return v0
.end method
