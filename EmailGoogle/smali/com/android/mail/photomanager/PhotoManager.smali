.class public abstract Lcom/android/mail/photomanager/PhotoManager;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/photomanager/PhotoManager$Request;,
        Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;,
        Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;,
        Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;,
        Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;,
        Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field private static final sBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mail/photomanager/PhotoManager$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 193
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #v3=(Reference);
    sput-object v3, Lcom/android/mail/photomanager/PhotoManager;->sStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #v3=(Reference);
    sput-object v3, Lcom/android/mail/photomanager/PhotoManager;->sFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    invoke-static {}, Lcom/android/mail/photomanager/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    const-wide/32 v5, 0x28000000

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-ltz v3, :cond_0

    const/high16 v1, 0x3f80

    .line 202
    .local v1, cacheSizeAdjustment:F
    :goto_0
    #v1=(Integer);
    const v3, 0x49f42400

    #v3=(Integer);
    mul-float/2addr v3, v1

    #v3=(Float);
    float-to-int v2, v3

    .line 203
    .local v2, holderCacheSize:I
    #v2=(Integer);
    new-instance v3, Lcom/android/mail/photomanager/PhotoManager$1;

    #v3=(UninitRef);
    invoke-direct {v3, v2}, Lcom/android/mail/photomanager/PhotoManager$1;-><init>(I)V

    #v3=(Reference);
    sput-object v3, Lcom/android/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    .line 213
    const/high16 v3, 0x4b00

    #v3=(Integer);
    mul-float/2addr v3, v1

    #v3=(Float);
    float-to-int v0, v3

    .line 214
    .local v0, bitmapCacheSize:I
    #v0=(Integer);
    new-instance v3, Lcom/android/mail/photomanager/PhotoManager$2;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Lcom/android/mail/photomanager/PhotoManager$2;-><init>(I)V

    #v3=(Reference);
    sput-object v3, Lcom/android/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    .line 224
    const-string v3, "PhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Cache adj: "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    return-void

    .line 199
    .end local v0           #bitmapCacheSize:I
    .end local v1           #cacheSizeAdjustment:F
    .end local v2           #holderCacheSize:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Byte);v4=(LongHi);v5=(LongLo);
    const/high16 v1, 0x3f00

    #v1=(Integer);
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 262
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    .line 242
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 263
    iput-object p1, p0, Lcom/android/mail/photomanager/PhotoManager;->mContext:Landroid/content/Context;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/photomanager/PhotoManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mail/photomanager/PhotoManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/mail/photomanager/PhotoManager;->cacheBitmapHolder(Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;)V

    return-void
.end method

.method protected static cacheBitmap(Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmapKey"
    .parameter "bitmap"

    .prologue
    .line 535
    sget-object v0, Lcom/android/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    #v0=(Reference);
    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    return-void
.end method

.method private static cacheBitmapHolder(Ljava/lang/String;Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;)V
    .locals 1
    .parameter "cacheKey"
    .parameter "holder"

    .prologue
    .line 531
    sget-object v0, Lcom/android/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    #v0=(Reference);
    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method private ensureLoaderThread()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/photomanager/PhotoManager;->getLoaderThread(Landroid/content/ContentResolver;)Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;

    .line 336
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;

    invoke-virtual {v0}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->start()V

    .line 338
    :cond_0
    return-void
.end method

.method private static getCachedPhoto(Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmapKey"

    .prologue
    .line 413
    const-string v1, "Get cached photo"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 414
    sget-object v1, Lcom/android/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/Bitmap;

    .line 415
    .local v0, cached:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 416
    return-object v0
.end method

.method private loadCachedPhoto(Lcom/android/mail/photomanager/PhotoManager$Request;Z)Z
    .locals 9
    .parameter "request"
    .parameter "afterLoaderThreadFinished"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    .line 351
    #v5=(One);
    const-string v7, "Load cached photo"

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 352
    iget-object v7, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-static {v7}, Lcom/android/mail/photomanager/PhotoManager;->getCachedPhoto(Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, cached:Landroid/graphics/Bitmap;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getView()Lcom/android/mail/ui/ImageCanvas;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v6}, Lcom/android/mail/ui/ImageCanvas;->getGeneration()I

    move-result v6

    #v6=(Integer);
    iget v7, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    #v7=(Integer);
    if-ne v6, v7, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getView()Lcom/android/mail/ui/ImageCanvas;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    invoke-interface {v6, v0, v7}, Lcom/android/mail/ui/ImageCanvas;->drawImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0, p1, v5}, Lcom/android/mail/photomanager/PhotoManager;->onImageDrawn(Lcom/android/mail/photomanager/PhotoManager$Request;Z)V

    .line 366
    :cond_0
    #v6=(Conflicted);v7=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 406
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v8=(Conflicted);
    return v5

    .line 372
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(One);v6=(Null);v7=(Reference);v8=(Uninit);
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getPhotoIdentifier()Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;->getKeyToShowInsteadOfDefault()Ljava/lang/Object;

    move-result-object v4

    .line 373
    .local v4, replacementKey:Ljava/lang/Object;
    #v4=(Reference);
    if-eqz v4, :cond_3

    .line 374
    new-instance v3, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v3=(UninitRef);
    iget-object v7, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    iget v7, v7, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v7=(Integer);
    iget-object v8, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v8=(Reference);
    iget v8, v8, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    #v8=(Integer);
    invoke-direct {v3, v4, v7, v8}, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;-><init>(Ljava/lang/Object;II)V

    .line 376
    .local v3, replacementBitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;
    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/photomanager/PhotoManager;->getCachedPhoto(Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    .local v1, cachedReplacement:Landroid/graphics/Bitmap;
    #v1=(Reference);
    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getView()Lcom/android/mail/ui/ImageCanvas;

    move-result-object v7

    #v7=(Reference);
    invoke-interface {v7}, Lcom/android/mail/ui/ImageCanvas;->getGeneration()I

    move-result v7

    #v7=(Integer);
    iget v8, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    if-ne v7, v8, :cond_2

    .line 387
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getView()Lcom/android/mail/ui/ImageCanvas;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    invoke-interface {v7, v1, v8}, Lcom/android/mail/ui/ImageCanvas;->drawImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 388
    invoke-virtual {p0, p1, v5}, Lcom/android/mail/photomanager/PhotoManager;->onImageDrawn(Lcom/android/mail/photomanager/PhotoManager$Request;Z)V

    .line 390
    :cond_2
    #v7=(Conflicted);v8=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    move v5, v6

    .line 391
    #v5=(Null);
    goto :goto_0

    .line 396
    .end local v1           #cachedReplacement:Landroid/graphics/Bitmap;
    .end local v3           #replacementBitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;
    :cond_3
    #v1=(Conflicted);v3=(Conflicted);v5=(One);
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->applyDefaultImage()V

    .line 398
    sget-object v5, Lcom/android/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    #v5=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;

    .line 400
    .local v2, holder:Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    if-nez v5, :cond_4

    .line 401
    iget-boolean v5, v2, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    #v5=(Boolean);
    invoke-virtual {p0, p1, v5}, Lcom/android/mail/photomanager/PhotoManager;->onImageDrawn(Lcom/android/mail/photomanager/PhotoManager$Request;Z)V

    .line 402
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 403
    iget-boolean v5, v2, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 405
    :cond_4
    #v5=(Reference);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    move v5, v6

    .line 406
    #v5=(Null);
    goto :goto_0
.end method

.method private loadPhoto(ILcom/android/mail/photomanager/PhotoManager$Request;)V
    .locals 3
    .parameter "hashCode"
    .parameter "request"

    .prologue
    .line 304
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, p2, v1}, Lcom/android/mail/photomanager/PhotoManager;->loadCachedPhoto(Lcom/android/mail/photomanager/PhotoManager$Request;Z)Z

    move-result v0

    .line 305
    .local v0, loaded:Z
    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    #v1=(Boolean);v2=(Conflicted);
    return-void

    .line 314
    :cond_1
    #v1=(Null);v2=(Uninit);
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v1=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-boolean v1, p0, Lcom/android/mail/photomanager/PhotoManager;->mPaused:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager;->requestLoading()V

    goto :goto_0
.end method

.method private processLoadedImages()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 488
    #v8=(One);
    const-string v6, "process loaded images"

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 490
    .local v5, toRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    .line 491
    .local v0, hash:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v6=(Reference);
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 492
    .local v4, request:Lcom/android/mail/photomanager/PhotoManager$Request;
    invoke-direct {p0, v4, v8}, Lcom/android/mail/photomanager/PhotoManager;->loadCachedPhoto(Lcom/android/mail/photomanager/PhotoManager$Request;Z)Z

    move-result v3

    .line 496
    .local v3, loaded:Z
    #v3=(Boolean);
    if-nez v3, :cond_1

    iget v6, v4, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    #v6=(Integer);
    const/4 v7, 0x2

    #v7=(PosByte);
    if-le v6, v7, :cond_0

    .line 497
    :cond_1
    #v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    .end local v0           #hash:Ljava/lang/Integer;
    .end local v3           #loaded:Z
    .end local v4           #request:Lcom/android/mail/photomanager/PhotoManager$Request;
    :cond_2
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Boolean);
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    #v2=(Conflicted);v6=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/Integer;

    .line 501
    .local v2, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v6=(Reference);
    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 504
    .end local v2           #key:Ljava/lang/Integer;
    :cond_3
    #v2=(Conflicted);v6=(Boolean);
    iget-boolean v6, p0, Lcom/android/mail/photomanager/PhotoManager;->mPaused:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_4

    .line 505
    const-string v6, "PhotoManager"

    #v6=(Reference);
    const-string v7, "Finished loading batch. %d still have to be loaded."

    #v7=(Reference);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    iget-object v10, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v10=(Reference);
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    #v10=(Integer);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #v10=(Reference);
    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 507
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager;->requestLoading()V

    .line 509
    :cond_4
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 510
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 446
    #v1=(One);
    iget-boolean v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoadingRequested:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 447
    iput-boolean v1, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoadingRequested:Z

    .line 448
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    #v0=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :cond_0
    #v0=(Conflicted);
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 561
    sget-object v0, Lcom/android/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 562
    sget-object v0, Lcom/android/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 563
    return-void
.end method

.method protected abstract getDefaultImageProvider()Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;
.end method

.method protected abstract getHash(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;)I
.end method

.method protected abstract getLoaderThread(Landroid/content/ContentResolver;)Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 457
    #v2=(One);
    iget v4, p1, Landroid/os/Message;->what:I

    #v4=(Integer);
    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 480
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 459
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v4=(Integer);
    iput-boolean v3, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoadingRequested:Z

    .line 460
    iget-boolean v3, p0, Lcom/android/mail/photomanager/PhotoManager;->mPaused:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager;->ensureLoaderThread()V

    .line 462
    iget-object v3, p0, Lcom/android/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/photomanager/PhotoManager$PhotoLoaderThread;->requestLoading()V

    goto :goto_0

    .line 468
    :pswitch_1
    #v3=(Null);
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager;->processLoadedImages()V

    goto :goto_0

    .line 474
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 475
    .local v0, hashcode:I
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v3=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 476
    .local v1, request:Lcom/android/mail/photomanager/PhotoManager$Request;
    invoke-virtual {p0, v1}, Lcom/android/mail/photomanager/PhotoManager;->onImageLoadStarted(Lcom/android/mail/photomanager/PhotoManager$Request;)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected isSizeCompatible(IIII)Z
    .locals 1
    .parameter "prevWidth"
    .parameter "prevHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 94
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public loadThumbnail(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;)V
    .locals 1
    .parameter "id"
    .parameter "view"

    .prologue
    .line 267
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mail/photomanager/PhotoManager;->loadThumbnail(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;)V

    .line 268
    return-void
.end method

.method public loadThumbnail(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;)V
    .locals 9
    .parameter "id"
    .parameter "view"
    .parameter "dimensions"

    .prologue
    const/4 v8, 0x0

    .line 277
    #v8=(Null);
    const-string v1, "Load thumbnail"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager;->getDefaultImageProvider()Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;

    move-result-object v3

    .line 279
    .local v3, defaultProvider:Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;
    #v3=(Reference);
    new-instance v0, Lcom/android/mail/photomanager/PhotoManager$Request;

    #v0=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    move-object v1, p0

    move-object v2, p1

    #v2=(Reference);
    move-object v4, p2

    #v4=(Reference);
    move-object v5, p3

    #v5=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/android/mail/photomanager/PhotoManager$Request;-><init>(Lcom/android/mail/photomanager/PhotoManager;Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;Lcom/android/mail/photomanager/PhotoManager$1;)V

    .line 280
    .local v0, request:Lcom/android/mail/photomanager/PhotoManager$Request;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/photomanager/PhotoManager$Request;->hashCode()I

    move-result v7

    .line 282
    .local v7, hashCode:I
    #v7=(Integer);
    invoke-virtual {p1}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;->isValid()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/android/mail/photomanager/PhotoManager$Request;->applyDefaultImage()V

    .line 285
    invoke-virtual {p0, v0, v8}, Lcom/android/mail/photomanager/PhotoManager;->onImageDrawn(Lcom/android/mail/photomanager/PhotoManager$Request;Z)V

    .line 286
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v1=(Reference);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :goto_0
    #v1=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 294
    return-void

    .line 287
    :cond_0
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v1=(Reference);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 288
    const-string v1, "PhotoManager"

    #v1=(Reference);
    const-string v2, "load request dropped for %s"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    aput-object p1, v4, v8

    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 291
    :cond_1
    #v1=(Boolean);
    invoke-direct {p0, v7, v0}, Lcom/android/mail/photomanager/PhotoManager;->loadPhoto(ILcom/android/mail/photomanager/PhotoManager$Request;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 541
    return-void
.end method

.method protected onImageDrawn(Lcom/android/mail/photomanager/PhotoManager$Request;Z)V
    .locals 0
    .parameter "request"
    .parameter "success"

    .prologue
    .line 74
    return-void
.end method

.method protected onImageLoadStarted(Lcom/android/mail/photomanager/PhotoManager$Request;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 82
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 552
    const/16 v0, 0x3c

    #v0=(PosByte);
    if-lt p1, v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager;->clear()V

    .line 556
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 423
    #v5=(One);
    const-string v0, "PhotoManager"

    #v0=(Reference);
    const-string v1, "%s paused."

    #v1=(Reference);
    new-array v2, v5, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    iput-boolean v5, p0, Lcom/android/mail/photomanager/PhotoManager;->mPaused:Z

    .line 425
    return-void
.end method

.method public removePhoto(I)V
    .locals 6
    .parameter "hashcode"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    #v1=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 328
    .local v0, r:Lcom/android/mail/photomanager/PhotoManager$Request;
    if-eqz v0, :cond_0

    .line 329
    const-string v1, "PhotoManager"

    const-string v2, "removed request %s"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 431
    #v4=(Null);
    const-string v0, "PhotoManager"

    #v0=(Reference);
    const-string v1, "%s resumed."

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    iput-boolean v4, p0, Lcom/android/mail/photomanager/PhotoManager;->mPaused:Z

    .line 434
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager;->requestLoading()V

    .line 437
    :cond_0
    return-void
.end method
