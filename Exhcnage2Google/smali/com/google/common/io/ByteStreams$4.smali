.class final Lcom/google/common/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$offset:J

.field final synthetic val$supplier:Lcom/google/common/io/InputSupplier;


# virtual methods
.method public getInput()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$4;->val$supplier:Lcom/google/common/io/InputSupplier;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/io/InputStream;

    .line 836
    .local v1, in:Ljava/io/InputStream;
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$4;->val$offset:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_0

    .line 838
    :try_start_0
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$4;->val$offset:J

    #v2=(LongLo);
    invoke-static {v1, v2, v3}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :cond_0
    #v2=(Conflicted);
    new-instance v2, Lcom/google/common/io/LimitInputStream;

    #v2=(UninitRef);
    iget-wide v3, p0, Lcom/google/common/io/ByteStreams$4;->val$length:J

    #v3=(LongLo);v4=(LongHi);
    invoke-direct {v2, v1, v3, v4}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    #v2=(Reference);
    return-object v2

    .line 839
    :catch_0
    #v2=(Conflicted);v3=(LongHi);v4=(LongLo);
    move-exception v0

    .line 840
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 841
    throw v0
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$4;->getInput()Ljava/io/InputStream;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
