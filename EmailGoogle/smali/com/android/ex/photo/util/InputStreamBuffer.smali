.class public Lcom/android/ex/photo/util/InputStreamBuffer;
.super Ljava/lang/Object;
.source "InputStreamBuffer.java"


# instance fields
.field private mAutoAdvance:Z

.field private mBuffer:[B

.field private mFilled:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 5
    .parameter "inputStream"
    .parameter "bufferSize"
    .parameter "autoAdvance"

    .prologue
    const/4 v4, 0x0

    .line 98
    #v4=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    #p0=(Reference);
    iput v4, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 68
    iput v4, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    .line 99
    iput-object p1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    .line 100
    if-gtz p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Buffer size %d must be positive."

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 104
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-static {p2}, Lcom/android/ex/photo/util/InputStreamBuffer;->leastPowerOf2(I)I

    move-result p2

    .line 105
    new-array v0, p2, [B

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    .line 106
    iput-boolean p3, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mAutoAdvance:Z

    .line 107
    return-void
.end method

.method private fill(I)Z
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, 0x2

    #v10=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 260
    #v4=(Null);
    const-string v5, "fill"

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 261
    iget v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v5=(Integer);
    if-ge p1, v5, :cond_0

    .line 262
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 263
    new-instance v5, Ljava/lang/IllegalStateException;

    #v5=(UninitRef);
    const-string v6, "Index %d is before buffer %d"

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v4

    iget v4, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v5=(Reference);
    throw v5

    .line 267
    :cond_0
    #v3=(One);v4=(Null);v5=(Integer);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v5

    .line 269
    .local v0, i:I
    #v0=(Integer);
    iget-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    #v5=(Reference);
    if-nez v5, :cond_1

    .line 270
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 307
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return v4

    .line 275
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    add-int/lit8 v1, v0, 0x1

    .line 276
    .local v1, length:I
    #v1=(Integer);
    iget-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v5, v5

    #v5=(Integer);
    if-le v1, v5, :cond_2

    .line 277
    iget-boolean v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mAutoAdvance:Z

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    .line 279
    iget v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v5=(Integer);
    sub-int v0, p1, v5

    .line 291
    :cond_2
    :goto_1
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    const/4 v2, -0x1

    .line 293
    .local v2, read:I
    :try_start_0
    #v2=(Byte);
    iget-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v6=(Reference);
    iget v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v7=(Integer);
    iget-object v8, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v8=(Reference);
    array-length v8, v8

    #v8=(Integer);
    iget v9, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v9=(Integer);
    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 297
    :goto_2
    #v2=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v5, -0x1

    #v5=(Byte);
    if-eq v2, v5, :cond_4

    .line 298
    iget v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v5=(Integer);
    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    .line 304
    :goto_3
    const-string v5, "InputStreamBuffer"

    #v5=(Reference);
    const-string v6, "fill %d      buffer: %s"

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v4

    aput-object p0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 307
    iget v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v5=(Integer);
    if-ge v0, v5, :cond_5

    :goto_4
    #v3=(Boolean);
    move v4, v3

    #v4=(Boolean);
    goto :goto_0

    .line 281
    .end local v2           #read:I
    :cond_3
    #v2=(Uninit);v3=(One);v4=(Null);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    invoke-static {v1}, Lcom/android/ex/photo/util/InputStreamBuffer;->leastPowerOf2(I)I

    move-result v1

    .line 282
    const-string v5, "InputStreamBuffer"

    #v5=(Reference);
    const-string v6, "Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called."

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v8=(Reference);
    array-length v8, v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    goto :goto_1

    .line 301
    .restart local v2       #read:I
    :cond_4
    #v2=(Integer);v5=(Byte);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v5, 0x0

    #v5=(Null);
    iput-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    goto :goto_3

    :cond_5
    #v5=(Integer);v6=(Reference);v7=(Reference);v8=(Reference);
    move v3, v4

    .line 307
    #v3=(Null);
    goto :goto_4

    .line 294
    :catch_0
    #v2=(Byte);v3=(One);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v5

    #v5=(Reference);
    goto :goto_2
.end method

.method private static leastPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 363
    add-int/lit8 p0, p0, -0x1

    .line 364
    shr-int/lit8 v0, p0, 0x1

    #v0=(Integer);
    or-int/2addr p0, v0

    .line 365
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 366
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 367
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 368
    shr-int/lit8 v0, p0, 0x10

    #v0=(Short);
    or-int/2addr p0, v0

    .line 369
    add-int/lit8 p0, p0, 0x1

    .line 370
    return p0
.end method

.method private shiftToBeginning(I)V
    .locals 6
    .parameter "i"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    if-lt p1, v1, :cond_0

    .line 318
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #v1=(UninitRef);
    const-string v2, "Index %d out of bounds. Length %d"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget-object v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v5, v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 321
    :cond_0
    #v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    add-int v1, v0, p1

    #v1=(Integer);
    iget v2, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v2=(Integer);
    if-ge v1, v2, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v2=(Reference);
    add-int v3, v0, p1

    #v3=(Integer);
    aget-byte v2, v2, v3

    #v2=(Byte);
    aput-byte v2, v1, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    #v1=(Integer);v2=(Integer);v3=(Conflicted);
    return-void
.end method


# virtual methods
.method public advanceTo(I)V
    .locals 12
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 188
    #v11=(Null);
    const-string v7, "advance to"

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 189
    iget v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v7=(Integer);
    sub-int v5, p1, v7

    .line 190
    .local v5, i:I
    #v5=(Integer);
    if-gtz v5, :cond_0

    .line 192
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 237
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 194
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iget v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v5, v7, :cond_1

    .line 196
    invoke-direct {p0, v5}, Lcom/android/ex/photo/util/InputStreamBuffer;->shiftToBeginning(I)V

    .line 197
    iput p1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 198
    iget v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    .line 235
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const-string v7, "InputStreamBuffer"

    #v7=(Reference);
    const-string v8, "advanceTo %d buffer: %s"

    #v8=(Reference);
    const/4 v9, 0x2

    #v9=(PosByte);
    new-array v9, v9, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #v10=(Reference);
    aput-object v10, v9, v11

    const/4 v10, 0x1

    #v10=(One);
    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    goto :goto_0

    .line 199
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iget-object v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    #v7=(Reference);
    if-eqz v7, :cond_6

    .line 201
    iget v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v7=(Integer);
    sub-int v0, v5, v7

    .line 202
    .local v0, burn:I
    #v0=(Integer);
    const/4 v3, 0x0

    .line 203
    .local v3, empty:Z
    #v3=(Null);
    const/4 v4, 0x0

    .line 205
    .local v4, fails:I
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v4=(Integer);v8=(Conflicted);v9=(Conflicted);
    if-lez v0, :cond_3

    .line 206
    :try_start_0
    iget-object v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    #v7=(Reference);
    int-to-long v8, v0

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 207
    .local v1, burned:J
    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, v1, v7

    #v7=(Byte);
    if-gtz v7, :cond_5

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 213
    :goto_2
    #v7=(Conflicted);
    const/4 v7, 0x5

    #v7=(PosByte);
    if-lt v4, v7, :cond_2

    .line 214
    const/4 v3, 0x1

    .line 222
    .end local v1           #burned:J
    :cond_3
    :goto_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-eqz v3, :cond_4

    .line 224
    const/4 v7, 0x0

    #v7=(Null);
    iput-object v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    .line 227
    :cond_4
    #v7=(Conflicted);
    sub-int v7, p1, v0

    #v7=(Integer);
    iput v7, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 228
    iput v11, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    goto :goto_1

    .line 210
    .restart local v1       #burned:J
    :cond_5
    #v1=(LongLo);v2=(LongHi);v3=(Null);v6=(Uninit);v7=(Byte);v8=(LongHi);v9=(LongHi);
    int-to-long v7, v0

    #v7=(LongLo);
    sub-long/2addr v7, v1

    long-to-int v0, v7

    goto :goto_2

    .line 218
    .end local v1           #burned:J
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v6

    .line 219
    .local v6, ignored:Ljava/io/IOException;
    #v6=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_3

    .line 231
    .end local v0           #burn:I
    .end local v3           #empty:Z
    .end local v4           #fails:I
    .end local v6           #ignored:Ljava/io/IOException;
    :cond_6
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Reference);v8=(Uninit);v9=(Uninit);
    iput p1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 232
    iput v11, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    goto :goto_1
.end method

.method public get(I)B
    .locals 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "get"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/util/InputStreamBuffer;->has(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 132
    iget v1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v1=(Integer);
    sub-int v0, p1, v1

    .line 133
    .local v0, i:I
    #v0=(Integer);
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 134
    iget-object v1, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v1=(Reference);
    aget-byte v1, v1, v0

    #v1=(Byte);
    return v1

    .line 136
    .end local v0           #i:I
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 137
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #v1=(UninitRef);
    const-string v2, "Index %d beyond length."

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1
.end method

.method public has(I)Z
    .locals 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 160
    #v1=(One);
    const-string v2, "has"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 161
    iget v2, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v2=(Integer);
    if-ge p1, v2, :cond_0

    .line 162
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 163
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef);
    const-string v3, "Index %d is before buffer %d"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    iget v5, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 167
    :cond_0
    #v1=(One);v2=(Integer);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget v2, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v2

    .line 170
    .local v0, i:I
    #v0=(Integer);
    iget v2, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    #v2=(Reference);
    array-length v2, v2

    #v2=(Integer);
    if-lt v0, v2, :cond_2

    .line 171
    :cond_1
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/ex/photo/util/InputStreamBuffer;->fill(I)Z

    move-result v1

    .line 176
    :goto_0
    #v1=(Boolean);
    return v1

    .line 175
    :cond_2
    #v1=(One);
    invoke-static {}, Lcom/android/ex/photo/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    const-string v0, "+%d+%d [%d]"

    #v0=(Reference);
    const/4 v1, 0x3

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget v3, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mOffset:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    iget-object v3, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v3, v3

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x2

    #v2=(PosByte);
    iget v3, p0, Lcom/android/ex/photo/util/InputStreamBuffer;->mFilled:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
