.class public final Lcom/google/common/primitives/UnsignedInts;
.super Ljava/lang/Object;
.source "UnsignedInts.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
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

.method public static compare(II)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    #v0=(Integer);
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    return v0
.end method

.method static flip(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 51
    const/high16 v0, -0x8000

    #v0=(Integer);
    xor-int/2addr v0, p0

    return v0
.end method

.method public static toLong(I)J
    .locals 4
    .parameter "value"

    .prologue
    .line 71
    int-to-long v0, p0

    #v0=(LongLo);v1=(LongHi);
    const-wide v2, 0xffffffffL

    #v2=(LongLo);v3=(LongHi);
    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 6
    .parameter "x"
    .parameter "radix"

    .prologue
    .line 239
    int-to-long v2, p0

    #v2=(LongLo);v3=(LongHi);
    const-wide v4, 0xffffffffL

    #v4=(LongLo);v5=(LongHi);
    and-long v0, v2, v4

    .line 240
    .local v0, asLong:J
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    return-object v2
.end method
