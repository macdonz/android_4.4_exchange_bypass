.class public final Lcom/android/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCache$Statistics;,
        Lcom/android/email/provider/ContentCache$CachedCursor;,
        Lcom/android/email/provider/ContentCache$CacheToken;,
        Lcom/android/email/provider/ContentCache$TokenList;,
        Lcom/android/email/provider/ContentCache$CounterMap;
    }
.end annotation


# static fields
.field static final sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCache$CounterMap",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContentCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/ContentCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sLockCache:Z

.field private static sNotCacheable:I

.field private static final sNotCacheableMap:Lcom/android/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCache$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Lcom/android/email/provider/ContentCache$Statistics;

.field mTokenList:Lcom/android/email/provider/ContentCache$TokenList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/email/provider/ContentCache;->sNotCacheable:I

    .line 89
    new-instance v0, Lcom/android/email/provider/ContentCache$CounterMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/provider/ContentCache$CounterMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/provider/ContentCache;->sNotCacheableMap:Lcom/android/email/provider/ContentCache$CounterMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/android/email/provider/ContentCache$CounterMap;

    #v0=(UninitRef);
    const/16 v1, 0x18

    #v1=(PosByte);
    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCache$CounterMap;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/ContentCache;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    #v0=(Reference);
    return-object v0
.end method

.method public static invalidateAllCaches()V
    .locals 3

    .prologue
    .line 720
    sget-object v2, Lcom/android/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/email/provider/ContentCache;

    .line 721
    .local v0, cache:Lcom/android/email/provider/ContentCache;
    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache;->invalidate()V

    goto :goto_0

    .line 723
    .end local v0           #cache:Lcom/android/email/provider/ContentCache;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public static setLockCacheForTest(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 727
    sput-boolean p0, Lcom/android/email/provider/ContentCache;->sLockCache:Z

    .line 728
    sget-boolean v0, Lcom/android/email/provider/ContentCache;->sLockCache:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 729
    invoke-static {}, Lcom/android/email/provider/ContentCache;->invalidateAllCaches()V

    .line 731
    :cond_0
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "id"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    .prologue
    .line 666
    monitor-enter p0

    const/4 v0, 0x0

    #v0=(Null);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    :try_start_0
    #v2=(Null);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "operation"
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/provider/ContentCache$Statistics;->access$708(Lcom/android/email/provider/ContentCache$Statistics;)I

    .line 684
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 686
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache$TokenList;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method
