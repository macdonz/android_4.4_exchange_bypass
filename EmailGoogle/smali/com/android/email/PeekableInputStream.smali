.class public Lcom/android/email/PeekableInputStream;
.super Ljava/io/InputStream;
.source "PeekableInputStream.java"


# instance fields
.field private final mIn:Ljava/io/InputStream;

.field private mPeeked:Z

.field private mPeekedByte:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    .line 49
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    .line 51
    :cond_0
    #v0=(Boolean);
    iget v0, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    #v0=(Integer);
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    :goto_0
    #v0=(Integer);
    return v0

    .line 41
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    .line 42
    iget v0, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    #v0=(Integer);
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/PeekableInputStream;->read([BII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    #v2=(Null);
    iget-boolean v1, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 65
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);
    return v1

    .line 59
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Null);v3=(Uninit);
    iget v1, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    #v1=(Integer);
    int-to-byte v1, v1

    #v1=(Byte);
    aput-byte v1, p1, v2

    .line 60
    iput-boolean v2, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    .line 61
    iget-object v1, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    #v1=(Reference);
    add-int/lit8 v2, p2, 0x1

    #v2=(Integer);
    add-int/lit8 v3, p3, -0x1

    #v3=(Integer);
    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, r:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 63
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 65
    :cond_1
    #v1=(Byte);
    add-int/lit8 v1, v0, 0x1

    #v1=(Integer);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const-string v0, "PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)"

    #v0=(Reference);
    const/4 v1, 0x3

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    iget-boolean v3, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x2

    #v2=(PosByte);
    iget v3, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
