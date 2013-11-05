.class public Lorg/apache/james/mime4j/MimeBoundaryInputStream;
.super Ljava/io/InputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private boundary:[B

.field private eof:Z

.field private first:Z

.field private moreParts:Z

.field private parenteof:Z

.field private s:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 52
    #v2=(Null);
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    #p0=(Reference);
    iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 40
    iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 41
    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    .line 42
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    .line 43
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 44
    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 54
    new-instance v2, Ljava/io/PushbackInputStream;

    #v2=(UninitRef);
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #v2=(Reference);
    iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "--"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    new-array v2, v2, [B

    #v2=(Reference);
    iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v3=(Conflicted);
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    #v2=(Integer);
    if-ge v1, v2, :cond_0

    .line 59
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    #v2=(Reference);
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #v3=(Char);
    int-to-byte v3, v3

    #v3=(Byte);
    aput-byte v3, v2, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    #v2=(Integer);v3=(Conflicted);
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    .line 67
    .local v0, b:I
    #v0=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v0, v2, :cond_1

    .line 68
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 70
    :cond_1
    #v2=(Conflicted);
    return-void
.end method

.method private matchBoundary()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2d

    #v9=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v8, -0x1

    #v8=(Byte);
    const/4 v7, 0x1

    .line 149
    #v7=(One);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v5=(Conflicted);
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    #v5=(Reference);
    array-length v5, v5

    #v5=(Integer);
    if-ge v2, v5, :cond_2

    .line 150
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 151
    .local v0, b:I
    #v0=(Integer);
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v5, v5, v2

    #v5=(Byte);
    if-eq v0, v5, :cond_1

    .line 152
    if-eq v0, v8, :cond_0

    .line 153
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 155
    :cond_0
    #v5=(Conflicted);
    add-int/lit8 v3, v2, -0x1

    .local v3, j:I
    :goto_1
    #v3=(Integer);v7=(Byte);
    if-ltz v3, :cond_6

    .line 156
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v5=(Reference);
    iget-object v7, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    #v7=(Reference);
    aget-byte v7, v7, v3

    #v7=(Byte);
    invoke-virtual {v5, v7}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 155
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 149
    .end local v3           #j:I
    :cond_1
    #v3=(Uninit);v5=(Byte);v7=(One);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0           #b:I
    :cond_2
    #v0=(Conflicted);v5=(Integer);
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 166
    .local v4, prev:I
    #v4=(Integer);
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 167
    .local v1, curr:I
    #v1=(Integer);
    if-ne v4, v9, :cond_3

    if-eq v1, v9, :cond_7

    :cond_3
    move v5, v7

    :goto_2
    #v5=(Boolean);
    iput-boolean v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 169
    :cond_4
    #v5=(Conflicted);
    const/16 v5, 0xa

    #v5=(PosByte);
    if-ne v1, v5, :cond_8

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    .line 175
    :goto_3
    #v5=(Conflicted);
    if-ne v1, v8, :cond_5

    .line 176
    iput-boolean v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 177
    iput-boolean v7, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 180
    :cond_5
    iput-boolean v7, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    move v6, v7

    .line 182
    .end local v1           #curr:I
    .end local v4           #prev:I
    :cond_6
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Boolean);v7=(Byte);
    return v6

    .restart local v1       #curr:I
    .restart local v4       #prev:I
    :cond_7
    #v1=(Integer);v3=(Uninit);v4=(Integer);v5=(Reference);v6=(Null);v7=(One);
    move v5, v6

    .line 167
    #v5=(Null);
    goto :goto_2

    .line 172
    :cond_8
    #v5=(PosByte);
    move v4, v1

    .line 173
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ne v1, v8, :cond_4

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 79
    return-void
.end method

.method public consume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    .line 111
    return-void
.end method

.method public hasMoreParts()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    #v0=(Boolean);
    return v0
.end method

.method public parentEOF()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    #v0=(Boolean);
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, -0x1

    .line 117
    #v3=(Byte);
    iget-boolean v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    move v0, v3

    .line 144
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v0

    .line 121
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Null);v4=(Boolean);
    iget-boolean v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    if-eqz v4, :cond_1

    .line 122
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    .line 123
    invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 124
    #v0=(Byte);
    goto :goto_0

    .line 128
    :cond_1
    #v0=(Uninit);
    iget-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 129
    .local v0, b1:I
    #v0=(Integer);
    iget-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 131
    .local v1, b2:I
    #v1=(Integer);
    const/16 v4, 0xd

    #v4=(PosByte);
    if-ne v0, v4, :cond_2

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 132
    invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    move v0, v3

    .line 133
    #v0=(Byte);
    goto :goto_0

    .line 137
    :cond_2
    #v0=(Integer);v4=(PosByte);
    if-eq v1, v3, :cond_3

    .line 138
    iget-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 141
    :cond_3
    #v4=(Conflicted);
    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    #v2=(Boolean);
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 142
    iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    goto :goto_0
.end method
