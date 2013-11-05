.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$1;,
        Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;,
        Lcom/google/common/collect/MapMaker$NullConcurrentMap;,
        Lcom/google/common/collect/MapMaker$RemovalCause;,
        Lcom/google/common/collect/MapMaker$RemovalNotification;,
        Lcom/google/common/collect/MapMaker$RemovalListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


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

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

.field ticker:Lcom/google/common/base/Ticker;

.field useCustomMap:Z

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

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    const/4 v0, -0x1

    .line 144
    #v0=(Byte);
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 123
    #p0=(Reference);
    iput v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 124
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 125
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 130
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 131
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 144
    return-void
.end method

.method private checkExpiration(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .parameter "duration"
    .parameter "unit"

    .prologue
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 476
    #v2=(Null);
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, v3, v7

    #v0=(Byte);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "expireAfterWrite was already set to %s ns"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, v3, v7

    #v0=(Byte);
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    const-string v3, "expireAfterAccess was already set to %s ns"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 480
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v0, p1, v3

    #v0=(Byte);
    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
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

    .line 481
    return-void

    :cond_0
    #v0=(Byte);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);
    move v0, v2

    .line 476
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Byte);v5=(Reference);v6=(LongHi);
    move v0, v2

    .line 478
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Byte);
    move v0, v2

    .line 480
    #v0=(Null);
    goto :goto_2
.end method

.method private useNullMap()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter "concurrencyLevel"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 271
    #v2=(Null);
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

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
    iget v5, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    if-lez p1, :cond_1

    :goto_1
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 274
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 275
    return-object p0

    :cond_0
    #v0=(Integer);v1=(One);v3=(Byte);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 271
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Boolean);v3=(Reference);v4=(Reference);v5=(Reference);
    move v1, v2

    .line 273
    #v1=(Null);
    goto :goto_1
.end method

.method expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .parameter "duration"
    .parameter "unit"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 515
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 516
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    #v0=(Byte);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 518
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 520
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 521
    return-object p0
.end method

.method expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 2
    .parameter "duration"
    .parameter "unit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 466
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 467
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    #v0=(Byte);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 469
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 471
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 472
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

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
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    #v0=(LongLo);
    goto :goto_0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

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
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    #v0=(LongLo);
    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

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
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getTicker()Lcom/google/common/base/Ticker;
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->ticker:Lcom/google/common/base/Ticker;

    #v0=(Reference);
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Ticker;

    return-object v0
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
    .line 188
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter "initialCapacity"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 203
    #v2=(Null);
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    #v0=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "initial capacity was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget v5, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    if-ltz p1, :cond_1

    :goto_1
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 206
    iput p1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 207
    return-object p0

    :cond_0
    #v0=(Integer);v1=(One);v3=(Byte);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 203
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Boolean);v3=(Reference);v4=(Reference);v5=(Reference);
    move v1, v2

    .line 205
    #v1=(Null);
    goto :goto_1
.end method

.method keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    .prologue
    .local p1, equivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 160
    #v1=(One);
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "key equivalence was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 162
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 163
    return-object p0

    :cond_0
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 160
    #v0=(Null);
    goto :goto_0
.end method

.method public makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    .local p1, computingFunction:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/MapMaker;->useNullMap()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Boolean);
    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    #v1=(Integer);
    const/high16 v2, 0x3f40

    #v2=(Integer);
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 590
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    #v0=(Reference);
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    #v0=(Reference);
    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method maximumSize(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter "size"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 238
    #v1=(One);
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    #v0=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "maximum size was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget v5, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    if-ltz p1, :cond_0

    move v2, v1

    :cond_0
    #v2=(Boolean);
    const-string v0, "maximum size must not be negative"

    #v0=(Reference);
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    iput p1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 242
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 243
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 245
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->nullRemovalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 247
    :cond_1
    #v0=(Conflicted);
    return-object p0

    :cond_2
    #v0=(Integer);v2=(Null);v3=(Byte);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 238
    #v0=(Null);
    goto :goto_0
.end method

.method removalListener(Lcom/google/common/collect/MapMaker$RemovalListener;)Lcom/google/common/collect/GenericMapMaker;
    .locals 3
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, listener:Lcom/google/common/collect/MapMaker$RemovalListener;,"Lcom/google/common/collect/MapMaker$RemovalListener<TK;TV;>;"
    const/4 v2, 0x1

    .line 563
    #v2=(One);
    iget-object v1, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    #v1=(Reference);
    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    #v1=(Boolean);
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 567
    move-object v0, p0

    .line 568
    .local v0, me:Lcom/google/common/collect/GenericMapMaker;,"Lcom/google/common/collect/GenericMapMaker<TK;TV;>;"
    #v0=(Reference);
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/google/common/collect/MapMaker$RemovalListener;

    iput-object v1, v0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    .line 569
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 570
    return-object v0

    .line 563
    .end local v0           #me:Lcom/google/common/collect/GenericMapMaker;,"Lcom/google/common/collect/GenericMapMaker<TK;TV;>;"
    :cond_0
    #v0=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter "strength"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 337
    #v1=(One);
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v0=(Reference);
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "Key strength was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 339
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 341
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 343
    :cond_0
    return-object p0

    :cond_1
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 337
    #v0=(Null);
    goto :goto_0
.end method

.method setValueStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter "strength"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 410
    #v1=(One);
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v0=(Reference);
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "Value strength was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 412
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 414
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 416
    :cond_0
    return-object p0

    :cond_1
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 410
    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    const/4 v3, -0x1

    .line 679
    #v3=(Byte);
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 680
    .local v0, s:Lcom/google/common/base/Objects$ToStringHelper;
    #v0=(Reference);
    iget v1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    #v1=(Integer);
    if-eq v1, v3, :cond_0

    .line 681
    const-string v1, "initialCapacity"

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 683
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    #v1=(Integer);
    if-eq v1, v3, :cond_1

    .line 684
    const-string v1, "concurrencyLevel"

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 686
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    iget v1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    #v1=(Integer);
    if-eq v1, v3, :cond_2

    .line 687
    const-string v1, "maximumSize"

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 689
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v1, v5

    #v1=(Byte);
    if-eqz v1, :cond_3

    .line 690
    const-string v1, "expireAfterWrite"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

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

    .line 692
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, v1, v5

    #v1=(Byte);
    if-eqz v1, :cond_4

    .line 693
    const-string v1, "expireAfterAccess"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

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

    .line 695
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v1=(Reference);
    if-eqz v1, :cond_5

    .line 696
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 698
    :cond_5
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 699
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 701
    :cond_6
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 702
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 704
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 705
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 707
    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    if-eqz v1, :cond_9

    .line 708
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 710
    :cond_9
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method valueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    .prologue
    .local p1, equivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 180
    #v1=(One);
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    #v0=(Reference);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    const-string v3, "value equivalence was already set to %s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 183
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 184
    return-object p0

    :cond_0
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move v0, v2

    .line 180
    #v0=(Null);
    goto :goto_0
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
