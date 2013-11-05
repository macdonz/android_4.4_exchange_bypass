.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static checkedCast(J)I
    .locals 6
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 83
    #v3=(Null);
    long-to-int v0, p0

    .line 84
    .local v0, result:I
    #v0=(Integer);
    int-to-long v4, v0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v1, v4, p0

    #v1=(Byte);
    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    #v1=(Boolean);
    const-string v4, "Out of range: %s"

    #v4=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return v0

    :cond_0
    #v1=(Byte);v2=(One);v4=(LongLo);v5=(LongHi);
    move v1, v3

    .line 84
    #v1=(Null);
    goto :goto_0
.end method

.method public static compare(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 116
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    #v0=(Byte);
    return v0

    :cond_0
    #v0=(Uninit);
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    :cond_1
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static fromBytes(BBBB)I
    .locals 2
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 324
    shl-int/lit8 v0, p0, 0x18

    #v0=(Integer);
    and-int/lit16 v1, p1, 0xff

    #v1=(Integer);
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    return p0
.end method

.method private static indexOf([IIII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 153
    move v0, p2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, p3, :cond_1

    .line 154
    aget v1, p0, v0

    #v1=(Integer);
    if-ne v1, p1, :cond_0

    .line 158
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 153
    .restart local v0       #i:I
    :cond_0
    #v1=(Integer);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method private static lastIndexOf([IIII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 207
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, p2, :cond_1

    .line 208
    aget v1, p0, v0

    #v1=(Integer);
    if-ne v1, p1, :cond_0

    .line 212
    .end local v0           #i:I
    :goto_1
    #v1=(Conflicted);
    return v0

    .line 207
    .restart local v0       #i:I
    :cond_0
    #v1=(Integer);
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_1
    #v1=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_1
.end method

.method public static saturatedCast(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 97
    const-wide/32 v0, 0x7fffffff

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, p0, v0

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 98
    const v0, 0x7fffffff

    .line 103
    :goto_0
    #v0=(Integer);
    return v0

    .line 100
    :cond_0
    #v0=(Byte);
    const-wide/32 v0, -0x80000000

    #v0=(LongLo);
    cmp-long v0, p0, v0

    #v0=(Byte);
    if-gez v0, :cond_1

    .line 101
    const/high16 v0, -0x8000

    #v0=(Integer);
    goto :goto_0

    .line 103
    :cond_1
    #v0=(Byte);
    long-to-int v0, p0

    #v0=(Integer);
    goto :goto_0
.end method
