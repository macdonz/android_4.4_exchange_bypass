.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/IntMath$1;
    }
.end annotation


# static fields
.field static BIGGEST_BINOMIALS:[I = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[I = null

.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[I = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 150
    #v1=(PosByte);
    new-array v0, v1, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->POWERS_OF_10:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->HALF_POWERS_OF_10:[I

    .line 443
    const/16 v0, 0xd

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->FACTORIALS:[I

    .line 491
    const/16 v0, 0x11

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->BIGGEST_BINOMIALS:[I

    return-void

    .line 150
    #v0=(Unknown);v1=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x40t 0x42t 0xft 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0xe1t 0xf5t 0x5t
        0x0t 0xcat 0x9at 0x3bt
    .end array-data

    .line 154
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t
        0x5at 0xct 0x0t 0x0t
        0x86t 0x7bt 0x0t 0x0t
        0x43t 0xd3t 0x4t 0x0t
        0xa5t 0x40t 0x30t 0x0t
        0x78t 0x86t 0xe2t 0x1t
        0xb6t 0x40t 0xd9t 0x12t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data

    .line 443
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0xb0t 0x13t 0x0t 0x0t
        0x80t 0x9dt 0x0t 0x0t
        0x80t 0x89t 0x5t 0x0t
        0x0t 0x5ft 0x37t 0x0t
        0x0t 0x15t 0x61t 0x2t
        0x0t 0xfct 0x8ct 0x1ct
    .end array-data

    .line 491
    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0x0t 0x0t 0x1t 0x0t
        0x29t 0x9t 0x0t 0x0t
        0xddt 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static checkedAdd(II)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 356
    int-to-long v2, p0

    #v2=(LongLo);v3=(LongHi);
    int-to-long v4, p1

    #v4=(LongLo);v5=(LongHi);
    add-long v0, v2, v4

    .line 357
    .local v0, result:J
    #v0=(LongLo);v1=(LongHi);
    long-to-int v2, v0

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 358
    long-to-int v2, v0

    #v2=(Integer);
    return v2

    .line 357
    :cond_0
    #v2=(Byte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public static checkedMultiply(II)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 378
    int-to-long v2, p0

    #v2=(LongLo);v3=(LongHi);
    int-to-long v4, p1

    #v4=(LongLo);v5=(LongHi);
    mul-long v0, v2, v4

    .line 379
    .local v0, result:J
    #v0=(LongLo);v1=(LongHi);
    long-to-int v2, v0

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 380
    long-to-int v2, v0

    #v2=(Integer);
    return v2

    .line 379
    :cond_0
    #v2=(Byte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method
