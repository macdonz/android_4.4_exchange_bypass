.class public Landroid/support/v4/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
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


# instance fields
.field private hitCount:I

.field private maxSize:I

.field private missCount:I


# virtual methods
.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, this:Landroid/support/v4/util/LruCache;,"Landroid/support/v4/util/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 321
    #v1=(Null);
    monitor-enter p0

    :try_start_0
    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #v2=(Integer);
    iget v3, p0, Landroid/support/v4/util/LruCache;->missCount:I

    #v3=(Integer);
    add-int v0, v2, v3

    .line 322
    .local v0, accesses:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 323
    .local v1, hitPercent:I
    :cond_0
    #v1=(Integer);
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    #v2=(Reference);
    const/4 v3, 0x4

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget v5, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget v5, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    iget v5, p0, Landroid/support/v4/util/LruCache;->missCount:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 321
    .end local v0           #accesses:I
    .end local v1           #hitPercent:I
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2
.end method
