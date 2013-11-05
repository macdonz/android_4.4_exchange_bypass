.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 2
    .parameter "hitCount"
    .parameter "missCount"
    .parameter "loadSuccessCount"
    .parameter "loadExceptionCount"
    .parameter "totalLoadTime"
    .parameter "evictionCount"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    #p0=(Reference);
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, p1, v0

    #v0=(Byte);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 73
    const-wide/16 v0, 0x0

    #v0=(LongLo);
    cmp-long v0, p3, v0

    #v0=(Byte);
    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 74
    const-wide/16 v0, 0x0

    #v0=(LongLo);
    cmp-long v0, p5, v0

    #v0=(Byte);
    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 75
    const-wide/16 v0, 0x0

    #v0=(LongLo);
    cmp-long v0, p7, v0

    #v0=(Byte);
    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    const-wide/16 v0, 0x0

    #v0=(LongLo);
    cmp-long v0, p9, v0

    #v0=(Byte);
    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 77
    const-wide/16 v0, 0x0

    #v0=(LongLo);
    cmp-long v0, p11, v0

    #v0=(Byte);
    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 79
    iput-wide p1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 80
    iput-wide p3, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 81
    iput-wide p5, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 82
    iput-wide p7, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 83
    iput-wide p9, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 84
    iput-wide p11, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 85
    return-void

    .line 72
    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 73
    :cond_1
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1

    .line 74
    :cond_2
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_2

    .line 75
    :cond_3
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_3

    .line 76
    :cond_4
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_4

    .line 77
    :cond_5
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 246
    #v1=(Null);
    instance-of v2, p1, Lcom/google/common/cache/CacheStats;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 247
    #v0=(Reference);
    check-cast v0, Lcom/google/common/cache/CacheStats;

    .line 248
    .local v0, other:Lcom/google/common/cache/CacheStats;
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    #v2=(LongLo);
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    #v2=(LongLo);
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    #v2=(LongLo);
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    #v2=(LongLo);
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    #v2=(LongLo);
    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 255
    .end local v0           #other:Lcom/google/common/cache/CacheStats;
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "hitCount"

    #v1=(Reference);
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
