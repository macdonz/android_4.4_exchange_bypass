.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private idx:I

.field private mark:I


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    #v0=(Null);
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 51
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 52
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readAheadLimit"

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    #v0=(Integer);
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 61
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    #v0=(Integer);
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 80
    const/4 v0, -0x1

    .line 82
    :goto_0
    #v2=(Conflicted);
    return v0

    :cond_0
    #v2=(Uninit);
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    #v0=(Reference);
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    #v2=(Integer);
    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    #v0=(Char);
    goto :goto_0
.end method

.method public read([CII)I
    .locals 6
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, -0x1

    .line 96
    #v3=(Byte);
    iget v4, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    #v4=(Integer);
    iget-object v5, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    #v5=(Reference);
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    #v5=(Integer);
    if-lt v4, v5, :cond_1

    move v1, v3

    .line 115
    :cond_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);
    return v1

    .line 99
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    if-nez p1, :cond_2

    .line 100
    new-instance v3, Ljava/lang/NullPointerException;

    #v3=(UninitRef);
    const-string v4, "Character array is missing"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 102
    :cond_2
    #v3=(Byte);v4=(Integer);
    if-ltz p3, :cond_3

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_4

    .line 103
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Array Size="

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 106
    :cond_4
    #v3=(Byte);v4=(Integer);v5=(Integer);
    const/4 v1, 0x0

    .line 107
    .local v1, count:I
    #v1=(Null);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);
    if-ge v2, p3, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v0

    .line 109
    .local v0, c:I
    #v0=(Integer);
    if-eq v0, v3, :cond_0

    .line 112
    add-int v4, p2, v2

    int-to-char v5, v0

    #v5=(Char);
    aput-char v5, p1, v4

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    #v0=(Integer);
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 124
    return-void
.end method

.method public skip(J)J
    .locals 6
    .parameter "n"

    .prologue
    .line 133
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, p1, v2

    #v2=(Byte);
    if-gez v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #v2=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Number of characters to skip is less than zero: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 137
    :cond_0
    #v2=(Byte);v3=(LongHi);v4=(Uninit);
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    #v2=(Integer);
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    #v3=(Integer);
    if-lt v2, v3, :cond_1

    .line 138
    const-wide/16 v2, -0x1

    .line 143
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(LongLo);v3=(LongHi);v4=(Conflicted);v5=(Conflicted);
    return-wide v2

    .line 140
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Integer);v4=(Uninit);v5=(Uninit);
    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    iget v4, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 141
    .local v1, dest:I
    #v1=(Integer);
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    #v2=(Integer);
    sub-int v0, v1, v2

    .line 142
    .local v0, count:I
    #v0=(Integer);
    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 143
    int-to-long v2, v0

    #v2=(LongLo);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
