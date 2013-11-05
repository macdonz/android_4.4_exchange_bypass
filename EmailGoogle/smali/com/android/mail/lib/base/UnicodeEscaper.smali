.class public abstract Lcom/android/mail/lib/base/UnicodeEscaper;
.super Lcom/android/mail/lib/base/Escaper;
.source "UnicodeEscaper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mail/lib/base/Escaper;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .locals 6
    .parameter "seq"
    .parameter "index"
    .parameter "end"

    .prologue
    .line 390
    if-ge p1, p2, :cond_5

    .line 391
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, index:I
    #v2=(Integer);
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 392
    .local v0, c1:C
    #v0=(Char);
    const v3, 0xd800

    #v3=(Char);
    if-lt v0, v3, :cond_0

    const v3, 0xdfff

    if-le v0, v3, :cond_1

    .line 404
    .end local v0           #c1:C
    :cond_0
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .line 396
    .restart local v0       #c1:C
    :cond_1
    #v0=(Char);v1=(Uninit);
    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 398
    if-ne v2, p2, :cond_2

    .line 399
    neg-int v0, v0

    #v0=(Integer);
    goto :goto_0

    .line 402
    :cond_2
    #v0=(Char);
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 403
    .local v1, c2:C
    #v1=(Char);
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    .line 404
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    #v0=(Integer);
    goto :goto_0

    .line 406
    :cond_3
    #v0=(Char);
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Expected low surrogate but got char \'"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 410
    .end local v1           #c2:C
    :cond_4
    #v1=(Uninit);v3=(Char);v4=(Uninit);v5=(Uninit);
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Unexpected low surrogate character \'"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 415
    .end local v0           #c1:C
    .end local v2           #index:I
    .restart local p1
    :cond_5
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #v3=(UninitRef);
    const-string v4, "Index exceeds specified range"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3
.end method

.method private static final growBuffer([CII)[C
    .locals 2
    .parameter "dest"
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 424
    #v1=(Null);
    new-array v0, p2, [C

    .line 425
    .local v0, copy:[C
    #v0=(Reference);
    if-lez p1, :cond_0

    .line 426
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 145
    invoke-static {p1}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 147
    .local v0, end:I
    #v0=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/mail/lib/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 148
    .local v1, index:I
    #v1=(Integer);
    if-ne v1, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/mail/lib/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .parameter "s"
    .parameter "index"

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 172
    .local v5, end:I
    #v5=(Integer);
    invoke-static {}, Lcom/android/mail/lib/base/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 173
    .local v2, dest:[C
    #v2=(Reference);
    const/4 v3, 0x0

    .line 174
    .local v3, destIndex:I
    #v3=(Null);
    const/4 v10, 0x0

    .line 176
    .local v10, unescapedChunkStart:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Integer);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Integer);v11=(Conflicted);v12=(Conflicted);
    if-ge p2, v5, :cond_6

    .line 177
    invoke-static {p1, p2, v5}, Lcom/android/mail/lib/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 178
    .local v1, cp:I
    #v1=(Integer);
    if-gez v1, :cond_0

    .line 179
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #v11=(UninitRef);
    const-string v12, "Trailing high surrogate at end of input"

    #v12=(Reference);
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v11=(Reference);
    throw v11

    .line 185
    :cond_0
    #v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {p0, v1}, Lcom/android/mail/lib/base/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 186
    .local v7, escaped:[C
    #v7=(Reference);
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_5

    const/4 v11, 0x2

    :goto_1
    #v11=(PosByte);
    add-int v8, p2, v11

    .line 187
    .local v8, nextIndex:I
    #v8=(Integer);
    if-eqz v7, :cond_4

    .line 188
    sub-int v0, p2, v10

    .line 192
    .local v0, charsSkipped:I
    #v0=(Integer);
    add-int v11, v3, v0

    #v11=(Integer);
    array-length v12, v7

    #v12=(Integer);
    add-int v9, v11, v12

    .line 193
    .local v9, sizeNeeded:I
    #v9=(Integer);
    array-length v11, v2

    if-ge v11, v9, :cond_1

    .line 194
    sub-int v11, v5, p2

    add-int/2addr v11, v9

    add-int/lit8 v4, v11, 0x20

    .line 195
    .local v4, destLength:I
    #v4=(Integer);
    invoke-static {v2, v3, v4}, Lcom/android/mail/lib/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 198
    .end local v4           #destLength:I
    :cond_1
    #v4=(Conflicted);
    if-lez v0, :cond_2

    .line 199
    invoke-virtual {p1, v10, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    add-int/2addr v3, v0

    .line 202
    :cond_2
    array-length v11, v7

    if-lez v11, :cond_3

    .line 203
    const/4 v11, 0x0

    #v11=(Null);
    array-length v12, v7

    invoke-static {v7, v11, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v11, v7

    #v11=(Integer);
    add-int/2addr v3, v11

    .line 207
    :cond_3
    move v10, v8

    .line 209
    .end local v0           #charsSkipped:I
    .end local v9           #sizeNeeded:I
    :cond_4
    #v0=(Conflicted);v9=(Conflicted);v12=(Conflicted);
    invoke-virtual {p0, p1, v8, v5}, Lcom/android/mail/lib/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 210
    goto :goto_0

    .line 186
    .end local v8           #nextIndex:I
    :cond_5
    #v8=(Conflicted);v11=(Boolean);
    const/4 v11, 0x1

    #v11=(One);
    goto :goto_1

    .line 214
    .end local v1           #cp:I
    .end local v7           #escaped:[C
    :cond_6
    #v1=(Conflicted);v7=(Conflicted);v11=(Conflicted);
    sub-int v0, v5, v10

    .line 215
    .restart local v0       #charsSkipped:I
    #v0=(Integer);
    if-lez v0, :cond_8

    .line 216
    add-int v6, v3, v0

    .line 217
    .local v6, endIndex:I
    #v6=(Integer);
    array-length v11, v2

    #v11=(Integer);
    if-ge v11, v6, :cond_7

    .line 218
    invoke-static {v2, v3, v6}, Lcom/android/mail/lib/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 220
    :cond_7
    invoke-virtual {p1, v10, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 221
    move v3, v6

    .line 223
    .end local v6           #endIndex:I
    :cond_8
    #v6=(Conflicted);v11=(Conflicted);
    new-instance v11, Ljava/lang/String;

    #v11=(UninitRef);
    const/4 v12, 0x0

    #v12=(Null);
    invoke-direct {v11, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    #v11=(Reference);
    return-object v11
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 109
    move v1, p2

    .line 110
    .local v1, index:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);
    if-ge v1, p3, :cond_0

    .line 111
    invoke-static {p1, v1, p3}, Lcom/android/mail/lib/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 112
    .local v0, cp:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mail/lib/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 117
    .end local v0           #cp:I
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    return v1

    .line 115
    .restart local v0       #cp:I
    :cond_1
    #v0=(Integer);v2=(Reference);
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    #v2=(PosByte);
    add-int/2addr v1, v2

    .line 116
    goto :goto_0

    .line 115
    :cond_2
    #v2=(Boolean);
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_1
.end method
