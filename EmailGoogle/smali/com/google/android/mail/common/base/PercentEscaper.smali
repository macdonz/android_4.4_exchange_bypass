.class public Lcom/google/android/mail/common/base/PercentEscaper;
.super Lcom/google/android/mail/common/base/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [C

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/16 v2, 0x2b

    #v2=(PosByte);
    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/mail/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 92
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "safeChars"
    .parameter "plusForSpace"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/mail/common/base/UnicodeEscaper;-><init>()V

    .line 119
    #p0=(Reference);
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, ".*[0-9A-Za-z].*"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 129
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    if-eqz p2, :cond_1

    const-string v0, " "

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 133
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "%"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 137
    :cond_2
    #v0=(Boolean);v1=(Uninit);
    iput-boolean p2, p0, Lcom/google/android/mail/common/base/PercentEscaper;->plusForSpace:Z

    .line 138
    invoke-static {p1}, Lcom/google/android/mail/common/base/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    .line 139
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 9
    .parameter "safeChars"

    .prologue
    const/4 v8, 0x1

    .line 147
    #v8=(One);
    const/16 v4, 0x7a

    .line 148
    .local v4, maxChar:I
    #v4=(PosByte);
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 149
    .local v6, safeCharArray:[C
    #v6=(Reference);
    move-object v0, v6

    .local v0, arr$:[C
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v4=(Integer);
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 150
    .local v1, c:C
    #v1=(Char);
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v1           #c:C
    :cond_0
    #v1=(Conflicted);
    add-int/lit8 v7, v4, 0x1

    #v7=(Integer);
    new-array v5, v7, [Z

    .line 153
    .local v5, octets:[Z
    #v5=(Reference);
    const/16 v1, 0x30

    .local v1, c:I
    :goto_1
    #v1=(Integer);
    const/16 v7, 0x39

    #v7=(PosByte);
    if-gt v1, v7, :cond_1

    .line 154
    aput-boolean v8, v5, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2

    .line 157
    aput-boolean v8, v5, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    :cond_2
    const/16 v1, 0x61

    :goto_3
    const/16 v7, 0x7a

    if-gt v1, v7, :cond_3

    .line 160
    aput-boolean v8, v5, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 162
    :cond_3
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    .end local v1           #c:I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-char v1, v0, v2

    .line 163
    .local v1, c:C
    #v1=(Char);
    aput-boolean v8, v5, v1

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 165
    .end local v1           #c:C
    :cond_4
    #v1=(Integer);
    return-object v5
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 193
    .local v2, slen:I
    #v2=(Integer);
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);
    if-ge v1, v2, :cond_1

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 195
    .local v0, c:C
    #v0=(Char);
    iget-object v3, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    #v3=(Reference);
    array-length v3, v3

    #v3=(Integer);
    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    #v3=(Reference);
    aget-boolean v3, v3, v0

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 196
    :cond_0
    #v3=(Integer);
    invoke-virtual {p0, p1, v1}, Lcom/google/android/mail/common/base/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 199
    .end local v0           #c:C
    .end local p1
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);
    return-object p1

    .line 193
    .restart local v0       #c:C
    .restart local p1
    :cond_2
    #v0=(Char);v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .locals 7
    .parameter "cp"

    .prologue
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    #v3=(Null);
    const/16 v2, 0x25

    .line 209
    #v2=(PosByte);
    iget-object v1, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    #v1=(Reference);
    aget-boolean v1, v1, p1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 275
    :goto_0
    #v0=(Reference);v1=(Char);v2=(Integer);v3=(Integer);
    return-object v0

    .line 211
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(PosByte);v3=(Null);
    const/16 v1, 0x20

    #v1=(PosByte);
    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/mail/common/base/PercentEscaper;->plusForSpace:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 212
    sget-object v0, Lcom/google/android/mail/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    #v0=(Reference);
    goto :goto_0

    .line 213
    :cond_1
    #v0=(Uninit);v1=(PosByte);
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_2

    .line 216
    new-array v0, v6, [C

    .line 217
    .local v0, dest:[C
    #v0=(Reference);
    aput-char v2, v0, v3

    .line 218
    sget-object v1, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v1=(Reference);
    and-int/lit8 v2, p1, 0xf

    #v2=(Integer);
    aget-char v1, v1, v2

    #v1=(Char);
    aput-char v1, v0, v5

    .line 219
    sget-object v1, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v1=(Reference);
    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    #v1=(Char);
    aput-char v1, v0, v4

    goto :goto_0

    .line 221
    .end local v0           #dest:[C
    :cond_2
    #v0=(Uninit);v1=(PosByte);v2=(PosByte);
    const/16 v1, 0x7ff

    #v1=(PosShort);
    if-gt p1, v1, :cond_3

    .line 224
    const/4 v1, 0x6

    #v1=(PosByte);
    new-array v0, v1, [C

    .line 225
    .restart local v0       #dest:[C
    #v0=(Reference);
    aput-char v2, v0, v3

    .line 226
    aput-char v2, v0, v6

    .line 227
    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    #v3=(Integer);
    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 228
    ushr-int/lit8 p1, p1, 0x4

    .line 229
    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 230
    ushr-int/lit8 p1, p1, 0x2

    .line 231
    sget-object v1, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v1=(Reference);
    and-int/lit8 v2, p1, 0xf

    #v2=(Integer);
    aget-char v1, v1, v2

    #v1=(Char);
    aput-char v1, v0, v5

    .line 232
    ushr-int/lit8 p1, p1, 0x4

    .line 233
    sget-object v1, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v1=(Reference);
    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    #v1=(Char);
    aput-char v1, v0, v4

    goto :goto_0

    .line 235
    .end local v0           #dest:[C
    :cond_3
    #v0=(Uninit);v1=(PosShort);v2=(PosByte);v3=(Null);
    const v1, 0xffff

    #v1=(Char);
    if-gt p1, v1, :cond_4

    .line 238
    const/16 v1, 0x9

    #v1=(PosByte);
    new-array v0, v1, [C

    .line 239
    .restart local v0       #dest:[C
    #v0=(Reference);
    aput-char v2, v0, v3

    .line 240
    const/16 v1, 0x45

    aput-char v1, v0, v4

    .line 241
    aput-char v2, v0, v6

    .line 242
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 243
    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    #v3=(Integer);
    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 244
    ushr-int/lit8 p1, p1, 0x4

    .line 245
    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 246
    ushr-int/lit8 p1, p1, 0x2

    .line 247
    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 248
    ushr-int/lit8 p1, p1, 0x4

    .line 249
    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 250
    ushr-int/lit8 p1, p1, 0x2

    .line 251
    sget-object v1, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v1=(Reference);
    aget-char v1, v1, p1

    #v1=(Char);
    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 253
    .end local v0           #dest:[C
    :cond_4
    #v0=(Uninit);v2=(PosByte);v3=(Null);
    const v1, 0x10ffff

    #v1=(Integer);
    if-gt p1, v1, :cond_5

    .line 254
    const/16 v1, 0xc

    #v1=(PosByte);
    new-array v0, v1, [C

    .line 257
    .restart local v0       #dest:[C
    #v0=(Reference);
    aput-char v2, v0, v3

    .line 258
    const/16 v1, 0x46

    aput-char v1, v0, v4

    .line 259
    aput-char v2, v0, v6

    .line 260
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 261
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 262
    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    #v3=(Integer);
    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 263
    ushr-int/lit8 p1, p1, 0x4

    .line 264
    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 265
    ushr-int/lit8 p1, p1, 0x2

    .line 266
    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 267
    ushr-int/lit8 p1, p1, 0x4

    .line 268
    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 269
    ushr-int/lit8 p1, p1, 0x2

    .line 270
    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 271
    ushr-int/lit8 p1, p1, 0x4

    .line 272
    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v2=(Reference);
    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    #v2=(Char);
    aput-char v2, v0, v1

    .line 273
    ushr-int/lit8 p1, p1, 0x2

    .line 274
    sget-object v1, Lcom/google/android/mail/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    #v1=(Reference);
    and-int/lit8 v2, p1, 0x7

    #v2=(Integer);
    aget-char v1, v1, v2

    #v1=(Char);
    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 278
    .end local v0           #dest:[C
    :cond_5
    #v0=(Uninit);v1=(Integer);v2=(PosByte);v3=(Null);
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Invalid unicode character value "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .parameter "csq"
    .parameter "index"
    .parameter "end"

    .prologue
    .line 175
    :goto_0
    if-ge p2, p3, :cond_0

    .line 176
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 177
    .local v0, c:C
    #v0=(Char);
    iget-object v1, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/mail/common/base/PercentEscaper;->safeOctets:[Z

    #v1=(Reference);
    aget-boolean v1, v1, v0

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 181
    .end local v0           #c:C
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return p2

    .line 175
    .restart local v0       #c:C
    :cond_1
    #v0=(Char);v1=(Boolean);
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
