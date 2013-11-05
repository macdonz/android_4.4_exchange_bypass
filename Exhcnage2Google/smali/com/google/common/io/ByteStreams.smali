.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    if-gez p3, :cond_0

    .line 802
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #v2=(UninitRef);
    const-string v3, "len is negative"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 804
    :cond_0
    #v2=(Uninit);v3=(Uninit);
    const/4 v1, 0x0

    .line 805
    .local v1, total:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-ge v1, p3, :cond_1

    .line 806
    add-int v2, p2, v1

    #v2=(Integer);
    sub-int v3, p3, v1

    #v3=(Integer);
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 807
    .local v0, result:I
    #v0=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v0, v2, :cond_2

    .line 812
    .end local v0           #result:I
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 810
    .restart local v0       #result:I
    :cond_2
    #v0=(Integer);v2=(Byte);v3=(Integer);
    add-int/2addr v1, v0

    .line 811
    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter "in"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 643
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    #v0=(Integer);
    if-eq v0, p3, :cond_0

    .line 662
    new-instance v0, Ljava/io/EOFException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 664
    :cond_0
    #v0=(Integer);
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 6
    .parameter "in"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 679
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(LongLo);v5=(LongHi);
    cmp-long v2, p1, v4

    #v2=(Byte);
    if-lez v2, :cond_2

    .line 680
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 681
    .local v0, amt:J
    #v0=(LongLo);v1=(LongHi);
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 683
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    #v2=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v2, v3, :cond_0

    .line 684
    new-instance v2, Ljava/io/EOFException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #v2=(Reference);
    throw v2

    .line 686
    :cond_0
    #v2=(Integer);
    const-wide/16 v2, 0x1

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr p1, v2

    goto :goto_0

    .line 688
    :cond_1
    #v2=(Byte);v3=(Conflicted);
    sub-long/2addr p1, v0

    goto :goto_0

    .line 691
    .end local v0           #amt:J
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method
