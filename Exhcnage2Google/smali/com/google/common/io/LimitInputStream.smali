.class public final Lcom/google/common/io/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .parameter "in"
    .parameter "limit"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    #p0=(Reference);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    #v0=(Byte);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    const-string v1, "limit must be non-negative"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    iput-wide p2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 49
    return-void

    .line 47
    :cond_0
    #v0=(Byte);v1=(LongHi);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 57
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 62
    #v1=(Byte);
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    move v0, v1

    .line 70
    :cond_0
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 66
    :cond_1
    #v0=(Uninit);v1=(Byte);v2=(Byte);v3=(LongHi);v4=(LongLo);
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 67
    .local v0, result:I
    #v0=(Integer);
    if-eq v0, v1, :cond_0

    .line 68
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x1

    #v3=(LongLo);v4=(LongHi);
    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 74
    #v1=(Byte);
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    move v0, v1

    .line 83
    :cond_0
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 78
    :cond_1
    #v0=(Uninit);v1=(Byte);v2=(Byte);v3=(LongHi);v4=(LongLo);
    int-to-long v2, p3

    #v2=(LongLo);
    iget-wide v4, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 79
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v2=(Reference);
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 80
    .local v0, result:I
    #v0=(Integer);
    if-eq v0, v1, :cond_0

    .line 81
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v1=(LongLo);v2=(LongHi);
    int-to-long v3, v0

    #v3=(LongLo);v4=(LongHi);
    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "Mark not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0

    .line 90
    :cond_0
    :try_start_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef);
    const-string v1, "Mark not set"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 94
    :cond_1
    #v0=(Byte);v1=(LongHi);
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 95
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->left:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
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
    .line 99
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 100
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    #v2=(Reference);
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 101
    .local v0, skipped:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    #v2=(LongLo);
    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 102
    return-wide v0
.end method
