.class public abstract Lcom/google/android/mail/common/base/CharEscaper;
.super Lcom/google/android/mail/common/base/Escaper;
.source "CharEscaper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/mail/common/base/Escaper;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static growBuffer([CII)[C
    .locals 2
    .parameter "dest"
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 201
    #v1=(Null);
    new-array v0, p2, [C

    .line 202
    .local v0, copy:[C
    #v0=(Reference);
    if-lez p1, :cond_0

    .line 203
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 54
    .local v1, length:I
    #v1=(Integer);
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, v1, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    #v2=(Char);
    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(C)[C

    move-result-object v2

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/android/mail/common/base/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 59
    .end local p1
    :cond_0
    #v2=(Conflicted);
    return-object p1

    .line 54
    .restart local p1
    :cond_1
    #v2=(Reference);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract escape(C)[C
.end method

.method protected escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .parameter "s"
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 121
    #v11=(Null);
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 124
    .local v9, slen:I
    #v9=(Integer);
    invoke-static {}, Lcom/google/android/mail/common/base/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 125
    .local v2, dest:[C
    #v2=(Reference);
    array-length v4, v2

    .line 126
    .local v4, destSize:I
    #v4=(Integer);
    const/4 v3, 0x0

    .line 127
    .local v3, destIndex:I
    #v3=(Null);
    const/4 v5, 0x0

    .line 131
    .local v5, lastEscape:I
    :goto_0
    #v1=(Conflicted);v3=(Integer);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    if-ge p2, v9, :cond_4

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    #v10=(Char);
    invoke-virtual {p0, v10}, Lcom/google/android/mail/common/base/CharEscaper;->escape(C)[C

    move-result-object v6

    .line 137
    .local v6, r:[C
    #v6=(Reference);
    if-nez v6, :cond_0

    .line 131
    :goto_1
    #v10=(Integer);
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    #v10=(Char);
    array-length v7, v6

    .line 140
    .local v7, rlen:I
    #v7=(Integer);
    sub-int v1, p2, v5

    .line 144
    .local v1, charsSkipped:I
    #v1=(Integer);
    add-int v10, v3, v1

    #v10=(Integer);
    add-int v8, v10, v7

    .line 145
    .local v8, sizeNeeded:I
    #v8=(Integer);
    if-ge v4, v8, :cond_1

    .line 146
    sub-int v10, v9, p2

    add-int/2addr v10, v8

    add-int/lit8 v4, v10, 0x20

    .line 147
    invoke-static {v2, v3, v4}, Lcom/google/android/mail/common/base/CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 151
    :cond_1
    if-lez v1, :cond_2

    .line 152
    invoke-virtual {p1, v5, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 153
    add-int/2addr v3, v1

    .line 157
    :cond_2
    if-lez v7, :cond_3

    .line 158
    invoke-static {v6, v11, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/2addr v3, v7

    .line 161
    :cond_3
    add-int/lit8 v5, p2, 0x1

    goto :goto_1

    .line 165
    .end local v1           #charsSkipped:I
    .end local v6           #r:[C
    .end local v7           #rlen:I
    .end local v8           #sizeNeeded:I
    :cond_4
    #v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    sub-int v0, v9, v5

    .line 166
    .local v0, charsLeft:I
    #v0=(Integer);
    if-lez v0, :cond_6

    .line 167
    add-int v8, v3, v0

    .line 168
    .restart local v8       #sizeNeeded:I
    #v8=(Integer);
    if-ge v4, v8, :cond_5

    .line 171
    invoke-static {v2, v3, v8}, Lcom/google/android/mail/common/base/CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 173
    :cond_5
    invoke-virtual {p1, v5, v9, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 174
    move v3, v8

    .line 176
    .end local v8           #sizeNeeded:I
    :cond_6
    #v8=(Conflicted);
    new-instance v10, Ljava/lang/String;

    #v10=(UninitRef);
    invoke-direct {v10, v2, v11, v3}, Ljava/lang/String;-><init>([CII)V

    #v10=(Reference);
    return-object v10
.end method
