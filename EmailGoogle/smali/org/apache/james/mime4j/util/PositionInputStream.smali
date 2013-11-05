.class public Lorg/apache/james/mime4j/util/PositionInputStream;
.super Ljava/io/InputStream;
.source "PositionInputStream.java"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private markedPosition:J

.field protected position:J


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    return-void
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 66
    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    .line 67
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 46
    .local v0, b:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 47
    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x1

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 48
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0
.end method

.method public read([B)I
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 77
    .local v0, c:I
    #v0=(Integer);
    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v1=(LongLo);v2=(LongHi);
    int-to-long v3, v0

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 78
    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 83
    .local v0, c:I
    #v0=(Integer);
    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v1=(LongLo);v2=(LongHi);
    int-to-long v3, v0

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 84
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 57
    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 58
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    #v2=(Reference);
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 71
    .local v0, c:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 72
    return-wide v0
.end method
