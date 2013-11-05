.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    }
.end annotation


# static fields
.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    const/16 v3, 0x25

    .line 353
    #v3=(PosByte);
    new-array v2, v3, [J

    #v2=(Reference);
    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    .line 354
    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    .line 355
    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    .line 357
    new-instance v1, Ljava/math/BigInteger;

    #v1=(UninitRef);
    const-string v2, "10000000000000000"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 358
    .local v1, overflow:Ljava/math/BigInteger;
    #v1=(Reference);
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v3=(Integer);v4=(Conflicted);
    const/16 v2, 0x24

    #v2=(PosByte);
    if-gt v0, v2, :cond_0

    .line 359
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    #v2=(Reference);
    int-to-long v3, v0

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 360
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    #v3=(Integer);
    aput v3, v2, v0

    .line 361
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    #v2=(PosByte);v4=(Conflicted);
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static compare(JJ)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static divide(JJ)J
    .locals 8
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    const/4 v4, 0x1

    .line 179
    #v4=(One);
    cmp-long v7, p2, v5

    #v7=(Byte);
    if-gez v7, :cond_1

    .line 180
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    #v4=(Integer);
    if-gez v4, :cond_0

    move-wide v4, v5

    .line 200
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(LongLo);v5=(LongHi);
    return-wide v4

    .line 183
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(LongLo);
    const-wide/16 v4, 0x1

    #v4=(LongLo);v5=(LongHi);
    goto :goto_0

    .line 188
    :cond_1
    #v4=(One);v5=(LongLo);
    cmp-long v5, p0, v5

    #v5=(Byte);
    if-ltz v5, :cond_2

    .line 189
    div-long v4, p0, p2

    #v4=(LongLo);v5=(LongHi);
    goto :goto_0

    .line 198
    :cond_2
    #v4=(One);v5=(Byte);
    ushr-long v5, p0, v4

    #v5=(LongLo);
    div-long/2addr v5, p2

    shl-long v0, v5, v4

    .line 199
    .local v0, quotient:J
    #v0=(LongLo);v1=(LongHi);
    mul-long v5, v0, p2

    sub-long v2, p0, v5

    .line 200
    .local v2, rem:J
    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v5

    #v5=(Integer);
    if-ltz v5, :cond_3

    :goto_1
    #v4=(Boolean);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v4, v0

    goto :goto_0

    :cond_3
    #v4=(One);v5=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2
    .parameter "a"

    .prologue
    .line 59
    const-wide/high16 v0, -0x8000

    #v0=(LongLo);v1=(LongHi);
    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static remainder(JJ)J
    .locals 9
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const-wide/16 v4, 0x0

    .line 213
    #v4=(LongLo);v5=(LongHi);
    cmp-long v6, p2, v4

    #v6=(Byte);
    if-gez v6, :cond_1

    .line 214
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    #v4=(Integer);
    if-gez v4, :cond_0

    .line 234
    .end local p0
    .end local p2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Integer);v7=(Conflicted);
    return-wide p0

    .line 217
    .restart local p0
    .restart local p2
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v6=(Byte);v7=(Uninit);
    sub-long/2addr p0, p2

    goto :goto_0

    .line 222
    :cond_1
    #v4=(LongLo);
    cmp-long v6, p0, v4

    if-ltz v6, :cond_2

    .line 223
    rem-long/2addr p0, p2

    goto :goto_0

    .line 232
    :cond_2
    ushr-long v6, p0, v8

    #v6=(LongLo);v7=(LongHi);
    div-long/2addr v6, p2

    shl-long v0, v6, v8

    .line 233
    .local v0, quotient:J
    #v0=(LongLo);v1=(LongHi);
    mul-long v6, v0, p2

    sub-long v2, p0, v6

    .line 234
    .local v2, rem:J
    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v6

    #v6=(Integer);
    if-ltz v6, :cond_3

    .end local p2
    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    .restart local p2
    :cond_3
    move-wide p2, v4

    goto :goto_1
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 1
    .parameter "x"

    .prologue
    .line 307
    const/16 v0, 0xa

    #v0=(PosByte);
    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 11
    .parameter "x"
    .parameter "radix"

    .prologue
    .line 320
    const/4 v6, 0x2

    #v6=(PosByte);
    if-lt p2, v6, :cond_0

    const/16 v6, 0x24

    if-gt p2, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    #v6=(Boolean);
    const-string v7, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    #v7=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #v10=(Reference);
    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const-wide/16 v6, 0x0

    #v6=(LongLo);v7=(LongHi);
    cmp-long v6, p0, v6

    #v6=(Byte);
    if-nez v6, :cond_1

    .line 324
    const-string v6, "0"

    .line 348
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-object v6

    .line 320
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(PosByte);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_0

    .line 326
    :cond_1
    #v6=(Byte);v7=(LongHi);v8=(Reference);v9=(Null);v10=(Reference);
    const/16 v6, 0x40

    #v6=(PosByte);
    new-array v2, v6, [C

    .line 327
    .local v2, buf:[C
    #v2=(Reference);
    array-length v3, v2

    .line 328
    .local v3, i:I
    #v3=(Integer);
    const-wide/16 v6, 0x0

    #v6=(LongLo);
    cmp-long v6, p0, v6

    #v6=(Byte);
    if-gez v6, :cond_3

    .line 332
    const/16 v6, 0x20

    #v6=(PosByte);
    ushr-long v4, p0, v6

    .line 333
    .local v4, top:J
    #v4=(LongLo);v5=(LongHi);
    const-wide v6, 0xffffffffL

    #v6=(LongLo);
    and-long/2addr v6, p0

    int-to-long v8, p2

    #v8=(LongLo);v9=(LongHi);
    rem-long v8, v4, v8

    const/16 v10, 0x20

    #v10=(PosByte);
    shl-long/2addr v8, v10

    add-long v0, v6, v8

    .line 334
    .local v0, bot:J
    #v0=(LongLo);v1=(LongHi);
    int-to-long v6, p2

    div-long/2addr v4, v6

    .line 335
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    #v6=(Byte);
    if-gtz v6, :cond_2

    const-wide/16 v6, 0x0

    #v6=(LongLo);
    cmp-long v6, v4, v6

    #v6=(Byte);
    if-lez v6, :cond_4

    .line 336
    :cond_2
    add-int/lit8 v3, v3, -0x1

    int-to-long v6, p2

    #v6=(LongLo);
    rem-long v6, v0, v6

    long-to-int v6, v6

    #v6=(Integer);
    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    #v6=(Char);
    aput-char v6, v2, v3

    .line 337
    int-to-long v6, p2

    #v6=(LongLo);
    div-long v6, v0, v6

    int-to-long v8, p2

    rem-long v8, v4, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long v0, v6, v8

    .line 338
    int-to-long v6, p2

    div-long/2addr v4, v6

    goto :goto_2

    .line 342
    .end local v0           #bot:J
    .end local v4           #top:J
    :cond_3
    :goto_3
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Conflicted);v8=(Reference);v9=(Null);v10=(Reference);
    const-wide/16 v6, 0x0

    #v6=(LongLo);
    cmp-long v6, p0, v6

    #v6=(Byte);
    if-lez v6, :cond_4

    .line 343
    add-int/lit8 v3, v3, -0x1

    int-to-long v6, p2

    #v6=(LongLo);
    rem-long v6, p0, v6

    long-to-int v6, v6

    #v6=(Integer);
    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    #v6=(Char);
    aput-char v6, v2, v3

    .line 344
    int-to-long v6, p2

    #v6=(LongLo);
    div-long/2addr p0, v6

    goto :goto_3

    .line 348
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Byte);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    new-instance v6, Ljava/lang/String;

    #v6=(UninitRef);
    array-length v7, v2

    #v7=(Integer);
    sub-int/2addr v7, v3

    invoke-direct {v6, v2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    #v6=(Reference);
    goto :goto_1
.end method
