.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [B

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x400

    #v0=(PosShort);
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 73
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 57
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    .line 83
    if-gez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Negative initial size: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 87
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 88
    return-void
.end method

.method private getBuffer(I)[B
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private needNewBuffer(I)V
    .locals 3
    .parameter "newcount"

    .prologue
    .line 108
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    #v1=(Integer);
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 110
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v2=(Reference);
    array-length v2, v2

    #v2=(Integer);
    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 112
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 113
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 131
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 117
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(Integer);
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v1=(Reference);
    if-nez v1, :cond_1

    .line 118
    move v0, p1

    .line 119
    .local v0, newBufferSize:I
    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 127
    :goto_1
    #v1=(Integer);
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 128
    new-array v1, v0, [B

    #v1=(Reference);
    iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 129
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0           #newBufferSize:I
    :cond_1
    #v0=(Uninit);v2=(Integer);
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    #v1=(Integer);
    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    .restart local v0       #newBufferSize:I
    #v0=(Integer);
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v2=(Reference);
    array-length v2, v2

    #v2=(Integer);
    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method public declared-synchronized toByteArray()[B
    .locals 7

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 271
    .local v5, remaining:I
    #v5=(Integer);
    if-nez v5, :cond_1

    .line 272
    sget-object v3, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v6=(Conflicted);
    monitor-exit p0

    return-object v3

    .line 274
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    new-array v3, v5, [B

    .line 275
    .local v3, newbuf:[B
    #v3=(Reference);
    const/4 v4, 0x0

    .line 276
    .local v4, pos:I
    #v4=(Null);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v4=(Integer);v6=(Conflicted);
    iget-object v6, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    if-ge v2, v6, :cond_0

    .line 277
    invoke-direct {p0, v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    .line 278
    .local v0, buf:[B
    #v0=(Reference);
    array-length v6, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 279
    .local v1, c:I
    #v1=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v0, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    add-int/2addr v4, v1

    .line 281
    sub-int/2addr v5, v1

    .line 282
    if-eqz v5, :cond_0

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v2           #i:I
    .end local v3           #newbuf:[B
    .end local v4           #pos:I
    .end local v5           #remaining:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v6

    #v6=(Reference);
    monitor-exit p0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #v0=(Reference);
    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .parameter "b"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    #v1=(Integer);
    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    #v2=(Integer);
    sub-int v0, v1, v2

    .line 174
    .local v0, inBufferPos:I
    #v0=(Integer);
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 175
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 176
    const/4 v0, 0x0

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v1=(Reference);
    int-to-byte v2, p1

    #v2=(Byte);
    aput-byte v2, v1, v0

    .line 179
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 173
    .end local v0           #inBufferPos:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit p0

    throw v1
.end method

.method public write([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 141
    if-ltz p2, :cond_0

    array-length v4, p1

    #v4=(Integer);
    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    add-int v4, p2, p3

    array-length v5, p1

    #v5=(Integer);
    if-gt v4, v5, :cond_0

    add-int v4, p2, p3

    if-gez v4, :cond_1

    .line 146
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #v4=(Reference);
    throw v4

    .line 147
    :cond_1
    #v4=(Integer);v5=(Integer);
    if-nez p3, :cond_2

    .line 165
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    return-void

    .line 150
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Integer);
    monitor-enter p0

    .line 151
    :try_start_0
    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int v1, v4, p3

    .line 152
    .local v1, newcount:I
    #v1=(Integer);
    move v3, p3

    .line 153
    .local v3, remaining:I
    #v3=(Integer);
    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v4, v5

    .line 154
    .local v0, inBufferPos:I
    :cond_3
    :goto_1
    #v0=(Integer);v2=(Conflicted);v5=(Conflicted);
    if-lez v3, :cond_4

    .line 155
    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v4=(Reference);
    array-length v4, v4

    #v4=(Integer);
    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 156
    .local v2, part:I
    #v2=(Integer);
    add-int v4, p2, p3

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    #v5=(Reference);
    invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    sub-int/2addr v3, v2

    .line 158
    if-lez v3, :cond_3

    .line 159
    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 160
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1

    .line 163
    .end local v2           #part:I
    :cond_4
    #v0=(Integer);v2=(Conflicted);v5=(Conflicted);
    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 164
    monitor-exit p0

    goto :goto_0

    .end local v0           #inBufferPos:I
    .end local v1           #newcount:I
    .end local v3           #remaining:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 251
    .local v3, remaining:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v4=(Conflicted);
    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #v4=(Integer);
    if-ge v2, v4, :cond_0

    .line 252
    invoke-direct {p0, v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    .line 253
    .local v0, buf:[B
    #v0=(Reference);
    array-length v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 254
    .local v1, c:I
    #v1=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    sub-int/2addr v3, v1

    .line 256
    if-nez v3, :cond_1

    .line 260
    .end local v0           #buf:[B
    .end local v1           #c:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Integer);
    monitor-exit p0

    return-void

    .line 251
    .restart local v0       #buf:[B
    .restart local v1       #c:I
    :cond_1
    #v0=(Reference);v1=(Integer);v4=(Null);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v2           #i:I
    .end local v3           #remaining:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit p0

    throw v4
.end method
