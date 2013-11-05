.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


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
    .line 306
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 307
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/io/EOFException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 310
    :cond_0
    #v0=(Boolean);
    const/4 v0, -0x1

    #v0=(Byte);
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 126
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 128
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    const-string v1, "Mark not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 141
    :cond_0
    :try_start_1
    #v0=(Boolean);v1=(Uninit);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 142
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    #v0=(Boolean);
    return v0
.end method

.method protected processChar()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method protected processChars([CII)V
    .locals 0
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 295
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
    .line 165
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "Read after end of file"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 168
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 169
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 172
    :goto_0
    #v0=(Integer);
    return v0

    .line 171
    :cond_1
    #v0=(Byte);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v0=(LongLo);
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public read([C)I
    .locals 2
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public read([CII)I
    .locals 5
    .parameter "chars"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 205
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Read after end of file"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 207
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-nez v1, :cond_1

    .line 208
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 217
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .line 210
    :cond_1
    #v0=(Uninit);v1=(Byte);
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v1=(LongLo);
    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 211
    move v0, p3

    .line 212
    .local v0, returnLength:I
    #v0=(Integer);
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v1, v1, v3

    #v1=(Byte);
    if-lez v1, :cond_2

    .line 213
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v1=(LongLo);
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #v1=(Integer);
    sub-int v0, p3, v1

    .line 214
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    #v1=(LongLo);
    iput-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 216
    :cond_2
    #v1=(Conflicted);
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

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
    .line 229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    const-string v1, "Mark not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 232
    :cond_0
    :try_start_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_1

    .line 233
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "No position has been marked"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 235
    :cond_1
    #v0=(Byte);v1=(LongHi);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v0=(LongLo);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_2

    .line 236
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

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    #v2=(LongLo);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

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

    .line 240
    :cond_2
    #v0=(Byte);v1=(LongHi);v2=(LongLo);
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    #v0=(LongLo);
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 241
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 6
    .parameter "numberOfChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v2, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    const-string v3, "Skip after end of file"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 259
    :cond_0
    #v2=(Boolean);v3=(Uninit);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_2

    .line 260
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v2

    #v2=(Integer);
    int-to-long v0, v2

    .line 268
    :cond_1
    :goto_0
    #v0=(LongLo);v1=(LongHi);v2=(Conflicted);
    return-wide v0

    .line 262
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Byte);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v2=(LongLo);
    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 263
    move-wide v0, p1

    .line 264
    .local v0, returnLength:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_1

    .line 265
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    #v2=(LongLo);
    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 266
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    goto :goto_0
.end method
