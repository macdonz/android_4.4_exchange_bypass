.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field private static final ONE_BITS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 180
    const-wide/high16 v0, 0x3ff0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #p0=(Reference);
    return-void
.end method

.method static getExponent(D)I
    .locals 6
    .parameter "d"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 80
    .local v0, bits:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/high16 v3, 0x7ff0

    #v3=(LongLo);v4=(LongHi);
    and-long/2addr v3, v0

    const/16 v5, 0x34

    #v5=(PosByte);
    shr-long/2addr v3, v5

    long-to-int v2, v3

    .line 81
    .local v2, exponent:I
    #v2=(Integer);
    add-int/lit16 v2, v2, -0x3ff

    .line 82
    return v2
.end method
