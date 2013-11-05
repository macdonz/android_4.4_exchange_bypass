.class public Lorg/apache/james/mime4j/util/PartialInputStream;
.super Lorg/apache/james/mime4j/util/PositionInputStream;
.source "PartialInputStream.java"


# instance fields
.field private final limit:J


# direct methods
.method private getBytesLeft()I
    .locals 6

    .prologue
    .line 61
    const-wide/32 v0, 0x7fffffff

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/james/mime4j/util/PartialInputStream;->limit:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v4=(LongLo);v5=(LongHi);
    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lorg/apache/james/mime4j/util/PositionInputStream;->available()I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0}, Lorg/apache/james/mime4j/util/PartialInputStream;->getBytesLeft()I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PartialInputStream;->limit:J

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 41
    invoke-super {p0}, Lorg/apache/james/mime4j/util/PositionInputStream;->read()I

    move-result v0

    .line 43
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, -0x1

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
    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/PartialInputStream;->read([BII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/util/PartialInputStream;->getBytesLeft()I

    move-result v0

    #v0=(Integer);
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 52
    invoke-super {p0, p1, p2, p3}, Lorg/apache/james/mime4j/util/PositionInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/james/mime4j/util/PartialInputStream;->getBytesLeft()I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 57
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/util/PositionInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
