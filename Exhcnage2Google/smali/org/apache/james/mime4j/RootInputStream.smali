.class Lorg/apache/james/mime4j/RootInputStream;
.super Ljava/io/InputStream;
.source "RootInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;

.field private lineNumber:I

.field private prev:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    .line 37
    const/4 v0, 0x1

    #v0=(One);
    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    .line 38
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    .line 39
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    .line 47
    iput-object p1, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    .line 48
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    #v0=(Integer);
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v1, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 75
    const/4 v0, -0x1

    .line 83
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);
    return v0

    .line 78
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    .local v0, b:I
    #v0=(Integer);
    iget v1, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    #v1=(Integer);
    const/16 v2, 0xd

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    const/16 v1, 0xa

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 80
    iget v1, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    .line 82
    :cond_1
    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

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
    .line 109
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/RootInputStream;->read([BII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-boolean v2, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 92
    const/4 v1, -0x1

    .line 102
    :cond_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);
    return v1

    .line 95
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    iget-object v2, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    #v2=(Reference);
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 96
    .local v1, n:I
    #v1=(Integer);
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);
    add-int v2, p2, v1

    #v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 97
    iget v2, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    const/16 v3, 0xd

    #v3=(PosByte);
    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v0

    #v2=(Byte);
    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 98
    iget v2, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    .line 100
    :cond_2
    aget-byte v2, p1, v0

    #v2=(Byte);
    iput v2, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public truncate()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    .line 68
    return-void
.end method
