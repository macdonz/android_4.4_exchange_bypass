.class public final Lcom/google/common/io/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private count:J

.field private mark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    #p0=(Reference);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 75
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 53
    .local v0, result:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 54
    iget-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x1

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 56
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
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
    .line 60
    iget-object v1, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 61
    .local v0, result:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 62
    iget-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    #v1=(LongLo);v2=(LongHi);
    int-to-long v3, v0

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 64
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "Mark not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 83
    :cond_0
    :try_start_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "Mark not set"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 87
    :cond_1
    #v0=(Byte);v1=(LongHi);
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 88
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

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
    .line 68
    iget-object v2, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    #v2=(Reference);
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 69
    .local v0, result:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    #v2=(LongLo);v3=(LongHi);
    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 70
    return-wide v0
.end method
