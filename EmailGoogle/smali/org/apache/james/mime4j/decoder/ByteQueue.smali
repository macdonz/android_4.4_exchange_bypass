.class public Lorg/apache/james/mime4j/decoder/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    #v0=(UninitRef);
    iget v1, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    #v1=(Integer);
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    #v0=(Integer);v1=(Byte);
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    #v0=(Reference);
    invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public dequeue()B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    #v0=(Reference);
    invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    #v0=(Byte);
    return v0
.end method

.method public enqueue(B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->add(B)Z

    .line 40
    return-void
.end method
