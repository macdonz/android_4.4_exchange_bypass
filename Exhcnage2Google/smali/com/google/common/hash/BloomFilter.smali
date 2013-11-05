.class public final Lcom/google/common/hash/BloomFilter;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/BloomFilter$1;,
        Lcom/google/common/hash/BloomFilter$SerialForm;,
        Lcom/google/common/hash/BloomFilter$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LN2:D

.field private static final LN2_SQUARED:D


# instance fields
.field private final bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

.field private final funnel:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final numHashFunctions:I

.field private final strategy:Lcom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 183
    const-wide/high16 v0, 0x4000

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    sput-wide v0, Lcom/google/common/hash/BloomFilter;->LN2:D

    .line 184
    sget-wide v0, Lcom/google/common/hash/BloomFilter;->LN2:D

    sget-wide v2, Lcom/google/common/hash/BloomFilter;->LN2:D

    #v2=(DoubleLo);v3=(DoubleHi);
    mul-double/2addr v0, v2

    sput-wide v0, Lcom/google/common/hash/BloomFilter;->LN2_SQUARED:D

    return-void
.end method

.method private constructor <init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    .locals 2
    .parameter "bits"
    .parameter "numHashFunctions"
    .parameter
    .parameter "strategy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            "I",
            "Lcom/google/common/hash/Funnel",
            "<TT;>;",
            "Lcom/google/common/hash/BloomFilter$Strategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/hash/BloomFilter;,"Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p3, funnel:Lcom/google/common/hash/Funnel;,"Lcom/google/common/hash/Funnel<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    #p0=(Reference);
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    const-string v1, "numHashFunctions zero or negative"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 81
    iput p2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    .line 82
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnel;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 83
    iput-object p4, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 84
    return-void

    .line 79
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;Lcom/google/common/hash/BloomFilter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    .local p0, this:Lcom/google/common/hash/BloomFilter;,"Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/hash/BloomFilter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$200(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$Strategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    #v0=(Reference);
    return-object v0
.end method

.method static optimalNumOfBits(ID)I
    .locals 4
    .parameter "n"
    .parameter "p"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    neg-int v0, p0

    #v0=(Integer);
    int-to-double v0, v0

    #v0=(DoubleLo);v1=(DoubleHi);
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    mul-double/2addr v0, v2

    sget-wide v2, Lcom/google/common/hash/BloomFilter;->LN2_SQUARED:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method static optimalNumOfHashFunctions(II)I
    .locals 5
    .parameter "n"
    .parameter "m"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x1

    #v0=(One);
    div-int v1, p1, p0

    #v1=(Integer);
    int-to-double v1, v1

    #v1=(DoubleLo);v2=(DoubleHi);
    sget-wide v3, Lcom/google/common/hash/BloomFilter;->LN2:D

    #v3=(DoubleLo);v4=(DoubleHi);
    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    long-to-int v1, v1

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    .local p0, this:Lcom/google/common/hash/BloomFilter;,"Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Lcom/google/common/hash/BloomFilter$SerialForm;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/hash/BloomFilter$SerialForm;-><init>(Lcom/google/common/hash/BloomFilter;)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method computeExpectedFalsePositiveRate(I)D
    .locals 8
    .parameter "insertions"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/hash/BloomFilter;,"Lcom/google/common/hash/BloomFilter<TT;>;"
    const-wide/high16 v0, 0x3ff0

    #v0=(LongLo);v1=(LongHi);
    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    #v2=(Integer);
    neg-int v2, v2

    int-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    int-to-double v4, p1

    #v4=(DoubleLo);v5=(DoubleHi);
    iget-object v6, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->size()I

    move-result v6

    #v6=(Integer);
    int-to-double v6, v6

    #v6=(DoubleLo);v7=(DoubleHi);
    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    #v0=(DoubleLo);v1=(DoubleHi);
    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    #v2=(Integer);
    int-to-double v2, v2

    #v2=(DoubleLo);
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method getHashCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/hash/BloomFilter;,"Lcom/google/common/hash/BloomFilter<TT;>;"
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    #v0=(Integer);
    return v0
.end method