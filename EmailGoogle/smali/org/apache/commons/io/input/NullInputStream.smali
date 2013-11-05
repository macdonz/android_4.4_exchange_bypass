.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private markSupported:Z

.field private position:J

.field private readlimit:J

.field private size:J

.field private throwEofException:Z


# direct methods
.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 323
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/io/EOFException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 326
    :cond_0
    #v0=(Boolean);
    const/4 v0, -0x1

    #v0=(Byte);
    return v0
.end method


# virtual methods
.method public available()I
    .locals 6

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v0, v2, v4

    .line 125
    .local v0, avail:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    #v2=(Byte);
    if-gtz v2, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 130
    :goto_0
    #v2=(Integer);
    return v2

    .line 127
    :cond_0
    #v2=(Byte);
    const-wide/32 v2, 0x7fffffff

    #v2=(LongLo);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-lez v2, :cond_1

    .line 128
    const v2, 0x7fffffff

    #v2=(Integer);
    goto :goto_0

    .line 130
    :cond_1
    #v2=(Byte);
    long-to-int v2, v0

    #v2=(Integer);
    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 142
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 144
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    const-string v1, "Mark not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 157
    :cond_0
    :try_start_1
    #v0=(Boolean);v1=(Uninit);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 158
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    #v0=(Boolean);
    return v0
.end method

.method protected processByte()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method protected processBytes([BII)V
    .locals 0
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 311
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "Read after end of file"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 184
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 185
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 188
    :goto_0
    #v0=(Integer);
    return v0

    .line 187
    :cond_1
    #v0=(Byte);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v0=(LongLo);
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Read after end of file"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 223
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-nez v1, :cond_1

    .line 224
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 233
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .line 226
    :cond_1
    #v0=(Uninit);v1=(Byte);
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v1=(LongLo);
    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 227
    move v0, p3

    .line 228
    .local v0, returnLength:I
    #v0=(Integer);
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    #v1=(Byte);
    if-lez v1, :cond_2

    .line 229
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v1=(LongLo);
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #v1=(Integer);
    sub-int v0, p3, v1

    .line 230
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    #v1=(LongLo);
    iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 232
    :cond_2
    #v1=(Conflicted);
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    const-string v1, "Mark not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 248
    :cond_0
    :try_start_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_1

    .line 249
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "No position has been marked"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 251
    :cond_1
    #v0=(Byte);v1=(LongHi);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v0=(LongLo);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_2

    .line 252
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Marked position ["

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 256
    :cond_2
    #v0=(Byte);v1=(LongHi);v2=(LongLo);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    #v0=(LongLo);
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 257
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 6
    .parameter "numberOfBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-boolean v2, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    const-string v3, "Skip after end of file"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 275
    :cond_0
    #v2=(Boolean);v3=(Uninit);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_2

    .line 276
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v2

    #v2=(Integer);
    int-to-long v0, v2

    .line 284
    :cond_1
    :goto_0
    #v0=(LongLo);v1=(LongHi);v2=(Conflicted);
    return-wide v0

    .line 278
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Byte);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v2=(LongLo);
    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 279
    move-wide v0, p1

    .line 280
    .local v0, returnLength:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_1

    .line 281
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    #v2=(LongLo);
    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 282
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    goto :goto_0
.end method
