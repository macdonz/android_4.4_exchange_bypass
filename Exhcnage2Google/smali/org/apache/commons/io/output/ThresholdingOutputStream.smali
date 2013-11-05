.class public abstract Lorg/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "ThresholdingOutputStream.java"


# instance fields
.field private threshold:I

.field private thresholdExceeded:Z

.field private written:J


# virtual methods
.method protected checkThreshold(I)V
    .locals 4
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    #v0=(LongLo);v1=(LongHi);
    int-to-long v2, p1

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdReached()V

    .line 223
    :cond_0
    #v0=(Byte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    #v0=(Conflicted);
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 142
    return-void
.end method

.method protected abstract getStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract thresholdReached()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 95
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x1

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 96
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    array-length v0, p1

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 111
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    #v0=(LongLo);v1=(LongHi);
    array-length v2, p1

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 112
    return-void
.end method

.method public write([BII)V
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
    .line 127
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    #v0=(LongLo);v1=(LongHi);
    int-to-long v2, p3

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 130
    return-void
.end method
