.class public final Lcom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilder$OneWeigher;,
        Lcom/google/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final EMPTY_STATS:Lcom/google/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lcom/google/common/base/Ticker;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lcom/google/common/base/Ticker;

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const-wide/16 v1, 0x0

    .line 142
    #v1=(LongLo);v2=(LongHi);
    new-instance v0, Lcom/google/common/cache/CacheBuilder$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$1;-><init>()V

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 164
    new-instance v0, Lcom/google/common/cache/CacheStats;

    #v0=(UninitRef);
    move-wide v3, v1

    #v3=(LongLo);v4=(LongHi);
    move-wide v5, v1

    #v5=(LongLo);v6=(LongHi);
    move-wide v7, v1

    #v7=(LongLo);v8=(LongHi);
    move-wide v9, v1

    #v9=(LongLo);v10=(LongHi);
    move-wide v11, v1

    #v11=(LongLo);v12=(LongHi);
    invoke-direct/range {v0 .. v12}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    .line 166
    new-instance v0, Lcom/google/common/cache/CacheBuilder$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 190
    new-instance v0, Lcom/google/common/cache/CacheBuilder$3;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$3;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    .line 197
    const-class v0, Lcom/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v3, -0x1

    #v3=(Byte);
    const-wide/16 v1, -0x1

    .line 225
    #v1=(LongLo);v2=(LongHi);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 203
    iput v3, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 204
    iput v3, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 205
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 206
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 212
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 213
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 214
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 222
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 225
    return-void
.end method

.method private checkNonLoadingCache()V
    .locals 4

    .prologue
    .line 761
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 762
    return-void

    .line 761
    :cond_0
    #v0=(Byte);v1=(LongHi);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private checkWeightWithWeigher()V
    .locals 6

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    #v1=(Null);
    const-wide/16 v4, -0x1

    .line 765
    #v4=(LongLo);v5=(LongHi);
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    #v2=(Reference);
    if-nez v2, :cond_2

    .line 766
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    :goto_0
    #v0=(Boolean);
    const-string v1, "maximumWeight requires weigher"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 776
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    :cond_1
    #v0=(One);v1=(Null);v2=(Byte);v3=(LongHi);
    move v0, v1

    .line 766
    #v0=(Null);
    goto :goto_0

    .line 768
    :cond_2
    #v0=(One);v2=(Reference);v3=(Uninit);
    iget-boolean v2, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 769
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-eqz v2, :cond_3

    :goto_2
    #v0=(Boolean);
    const-string v1, "weigher requires maximumWeight"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    #v0=(One);v1=(Null);
    move v0, v1

    #v0=(Null);
    goto :goto_2

    .line 771
    :cond_4
    #v0=(One);v2=(Boolean);v3=(Uninit);
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v0, v4

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 772
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    #v0=(Reference);
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v1=(Reference);
    const-string v2, "ignoring weigher specified without maximumWeight"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newBuilder()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/google/common/cache/CacheBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder;-><init>()V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Cache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 756
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 757
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalManualCache;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    #v0=(Reference);
    return-object v0
.end method

.method public build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK1;TV1;>;)",
            "Lcom/google/common/cache/LoadingCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, loader:Lcom/google/common/cache/CacheLoader;,"Lcom/google/common/cache/CacheLoader<-TK1;TV1;>;"
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 739
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalLoadingCache;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    #v0=(Reference);
    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;
    .locals 6
    .parameter "concurrencyLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 318
    #v2=(Null);
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    #v0=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "concurrency level was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget v5, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    if-lez p1, :cond_1

    :goto_1
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 321
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 322
    return-object p0

    :cond_0
    #v0=(Integer);v1=(One);v3=(Byte);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 318
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Boolean);v3=(Reference);v4=(Reference);v5=(Reference);
    move v1, v2

    .line 320
    #v1=(Null);
    goto :goto_1
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 7
    .parameter "duration"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 593
    #v2=(Null);
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    cmp-long v0, v3, v5

    #v0=(Byte);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "expireAfterAccess was already set to %s ns"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, p1, v3

    #v0=(Byte);
    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    const-string v3, "duration cannot be negative: %s %s"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 597
    return-object p0

    :cond_0
    #v0=(Byte);v1=(One);v3=(LongLo);v4=(LongHi);v5=(LongLo);
    move v0, v2

    .line 593
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Byte);v5=(Reference);
    move v0, v2

    .line 595
    #v0=(Null);
    goto :goto_1
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .locals 7
    .parameter "duration"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 559
    #v2=(Null);
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    cmp-long v0, v3, v5

    #v0=(Byte);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "expireAfterWrite was already set to %s ns"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 561
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, p1, v3

    #v0=(Byte);
    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    const-string v3, "duration cannot be negative: %s %s"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 563
    return-object p0

    :cond_0
    #v0=(Byte);v1=(One);v3=(LongLo);v4=(LongHi);v5=(LongLo);
    move v0, v2

    .line 559
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Byte);v5=(Reference);
    move v0, v2

    .line 561
    #v0=(Null);
    goto :goto_1
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 326
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    goto :goto_0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .prologue
    .line 601
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    #v0=(LongLo);
    return-wide v0

    :cond_0
    #v0=(Byte);
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    #v0=(LongLo);
    goto :goto_0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .prologue
    .line 567
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    #v0=(LongLo);
    return-wide v0

    :cond_0
    #v0=(Byte);
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    #v0=(LongLo);
    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 296
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    goto :goto_0
.end method

.method getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;
    .locals 2

    .prologue
    .line 472
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .locals 4

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 426
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, v0

    #v2=(Byte);
    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    #v2=(LongLo);
    cmp-long v2, v2, v0

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    #v0=(Reference);
    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v0=(LongLo);
    goto :goto_0

    :cond_2
    #v0=(Reference);
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v0=(LongLo);
    goto :goto_0
.end method

.method getRefreshNanos()J
    .locals 4

    .prologue
    .line 639
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    #v0=(LongLo);
    return-wide v0

    :cond_0
    #v0=(Byte);
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    #v0=(LongLo);
    goto :goto_0
.end method

.method getRemovalListener()Lcom/google/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/RemovalListener",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalListener;

    return-object v0
.end method

.method getStatsCounterSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    #v0=(Reference);
    return-object v0
.end method

.method getTicker(Z)Lcom/google/common/base/Ticker;
    .locals 1
    .parameter "recordsTime"

    .prologue
    .line 659
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 662
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    goto :goto_0
.end method

.method getValueEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getValueStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/cache/LocalCache$Strength;
    .locals 2

    .prologue
    .line 536
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lcom/google/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Weigher",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Weigher;

    return-object v0
.end method

.method keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, equivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 250
    #v2=(Null);
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "key equivalence was already set to %s"

    #v3=(Reference);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    #v4=(Reference);
    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 252
    return-object p0

    :cond_0
    #v1=(One);v3=(Uninit);v4=(Uninit);
    move v0, v2

    .line 250
    #v0=(Null);
    goto :goto_0
.end method

.method public maximumSize(J)Lcom/google/common/cache/CacheBuilder;
    .locals 9
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 343
    #v2=(Null);
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, v3, v7

    #v0=(Byte);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "maximum size was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, v3, v7

    #v0=(Byte);
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    const-string v3, "maximum weight was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    #v0=(Reference);
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    #v0=(Boolean);
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 348
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, p1, v3

    #v0=(Byte);
    if-ltz v0, :cond_3

    :goto_3
    #v1=(Boolean);
    const-string v0, "maximum size must not be negative"

    #v0=(Reference);
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 349
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 350
    return-object p0

    :cond_0
    #v0=(Byte);v1=(One);v5=(Uninit);v6=(Uninit);
    move v0, v2

    .line 343
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Byte);v5=(Reference);v6=(LongHi);
    move v0, v2

    .line 345
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Reference);v3=(Reference);v4=(Reference);
    move v0, v2

    .line 347
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Byte);v3=(LongLo);v4=(LongHi);
    move v1, v2

    .line 348
    #v1=(Null);
    goto :goto_3
.end method

.method public maximumWeight(J)Lcom/google/common/cache/CacheBuilder;
    .locals 9
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 373
    #v2=(Null);
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, v3, v7

    #v0=(Byte);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "maximum weight was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, v3, v7

    #v0=(Byte);
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    const-string v3, "maximum size was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 378
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, p1, v3

    #v0=(Byte);
    if-ltz v0, :cond_2

    :goto_2
    #v1=(Boolean);
    const-string v0, "maximum weight must not be negative"

    #v0=(Reference);
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 379
    return-object p0

    :cond_0
    #v0=(Byte);v1=(One);v5=(Uninit);v6=(Uninit);
    move v0, v2

    .line 373
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Byte);v5=(Reference);v6=(LongHi);
    move v0, v2

    .line 375
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Byte);
    move v1, v2

    .line 378
    #v1=(Null);
    goto :goto_2
.end method

.method public removalListener(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/CacheBuilder;
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/RemovalListener",
            "<-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 696
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, listener:Lcom/google/common/cache/RemovalListener;,"Lcom/google/common/cache/RemovalListener<-TK1;-TV1;>;"
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    #v1=(Reference);
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 700
    move-object v0, p0

    .line 701
    .local v0, me:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    #v0=(Reference);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/cache/RemovalListener;

    iput-object v1, v0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 702
    return-object v0

    .line 696
    .end local v0           #me:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    :cond_0
    #v0=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .locals 5
    .parameter "strength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 466
    #v2=(Null);
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v0=(Reference);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "Key strength was already set to %s"

    #v3=(Reference);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v4=(Reference);
    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 468
    return-object p0

    :cond_0
    #v1=(One);v3=(Uninit);v4=(Uninit);
    move v0, v2

    .line 466
    #v0=(Null);
    goto :goto_0
.end method

.method setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .locals 5
    .parameter "strength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 530
    #v2=(Null);
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v0=(Reference);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "Value strength was already set to %s"

    #v3=(Reference);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v4=(Reference);
    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 532
    return-object p0

    :cond_0
    #v1=(One);v3=(Uninit);v4=(Uninit);
    move v0, v2

    .line 530
    #v0=(Null);
    goto :goto_0
.end method

.method public ticker(Lcom/google/common/base/Ticker;)Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .parameter "ticker"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Ticker;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 654
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Ticker;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 655
    return-object p0

    .line 653
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v3, -0x1

    #v3=(Byte);
    const-wide/16 v5, -0x1

    .line 784
    #v5=(LongLo);v6=(LongHi);
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 785
    .local v0, s:Lcom/google/common/base/Objects$ToStringHelper;
    #v0=(Reference);
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    #v1=(Integer);
    if-eq v1, v3, :cond_0

    .line 786
    const-string v1, "initialCapacity"

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 788
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    #v1=(Integer);
    if-eq v1, v3, :cond_1

    .line 789
    const-string v1, "concurrencyLevel"

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 791
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v1, v5

    #v1=(Byte);
    if-eqz v1, :cond_2

    .line 792
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    #v1=(Reference);
    if-nez v1, :cond_a

    .line 793
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    .line 798
    :cond_2
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v1, v5

    #v1=(Byte);
    if-eqz v1, :cond_3

    .line 799
    const-string v1, "expireAfterWrite"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 801
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v1, v5

    #v1=(Byte);
    if-eqz v1, :cond_4

    .line 802
    const-string v1, "expireAfterAccess"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 804
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v1=(Reference);
    if-eqz v1, :cond_5

    .line 805
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 807
    :cond_5
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_6

    .line 808
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 810
    :cond_6
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 811
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 813
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 814
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 816
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    if-eqz v1, :cond_9

    .line 817
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 819
    :cond_9
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 795
    :cond_a
    #v2=(LongHi);v3=(Byte);v4=(Uninit);
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    goto/16 :goto_0
.end method

.method valueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, equivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 267
    #v2=(Null);
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "value equivalence was already set to %s"

    #v3=(Reference);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    #v4=(Reference);
    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 270
    return-object p0

    :cond_0
    #v1=(One);v3=(Uninit);v4=(Uninit);
    move v0, v2

    .line 267
    #v0=(Null);
    goto :goto_0
.end method

.method public weakKeys()Lcom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weigher(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/CacheBuilder;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/Weigher",
            "<-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, weigher:Lcom/google/common/cache/Weigher;,"Lcom/google/common/cache/Weigher<-TK1;-TV1;>;"
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 412
    #v3=(Null);
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    #v1=(Reference);
    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 413
    iget-boolean v1, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v1, :cond_0

    .line 414
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, -0x1

    #v6=(LongLo);v7=(LongHi);
    cmp-long v1, v4, v6

    #v1=(Byte);
    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    #v1=(Boolean);
    const-string v4, "weigher can not be combined with maximum size"

    #v4=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-object v0, p0

    .line 421
    .local v0, me:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    #v0=(Reference);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/cache/Weigher;

    iput-object v1, v0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 422
    return-object v0

    .end local v0           #me:Lcom/google/common/cache/CacheBuilder;,"Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    :cond_1
    #v0=(Uninit);v2=(One);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    move v1, v3

    .line 412
    #v1=(Null);
    goto :goto_0

    :cond_2
    #v1=(Byte);v4=(LongLo);v5=(LongHi);v6=(LongLo);v7=(LongHi);
    move v1, v3

    .line 414
    #v1=(Null);
    goto :goto_1
.end method
