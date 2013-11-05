.class public Lcom/android/mail/bitmap/AttachmentDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AttachmentDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/android/bitmap/DecodeAggregator$Callback;
.implements Lcom/android/bitmap/DecodeTask$BitmapView;
.implements Lcom/android/mail/bitmap/Parallaxable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/bitmap/AttachmentDrawable$Progress;,
        Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mBitmap:Lcom/android/bitmap/ReusableBitmap;

.field private final mCache:Lcom/android/bitmap/BitmapCache;

.field private final mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

.field private mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

.field private final mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

.field private mDecodeHeight:I

.field private mDecodeWidth:I

.field private final mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private mLoadState:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallaxFraction:F

.field private mParallaxSpeedMultiplier:F

.field private mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

.field private mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

.field private final mProgressDelayMs:I

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTask:Lcom/android/bitmap/DecodeTask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    .line 64
    #v1=(PosByte);
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    #v0=(UninitRef);
    const-wide/16 v3, 0x1

    #v3=(LongLo);v4=(LongHi);
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #v5=(Reference);
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #v6=(Reference);
    move v2, v1

    #v2=(PosByte);
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/bitmap/AttachmentDrawable;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 67
    sget-object v0, Lcom/android/mail/bitmap/AttachmentDrawable;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/mail/bitmap/AttachmentDrawable;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/DecodeAggregator;Lcom/android/mail/browse/ConversationItemViewCoordinates;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "res"
    .parameter "cache"
    .parameter "decodeAggregator"
    .parameter "coordinates"
    .parameter "placeholder"
    .parameter "progress"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mLoadState:I

    .line 55
    const/high16 v0, 0x3f00

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mParallaxFraction:F

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mHandler:Landroid/os/Handler;

    .line 86
    const-string v0, "AttachPreview"

    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->LOG_TAG:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    .line 93
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDensity:F

    .line 94
    iput-object p2, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 95
    iput-object p3, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    .line 96
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 98
    const v0, 0x7f0e0032

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 99
    .local v4, fadeOutDurationMs:I
    #v4=(Integer);
    const v0, 0x7f0c000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 100
    .local v5, tileColor:I
    #v5=(Integer);
    const v0, 0x7f0e0034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgressDelayMs:I

    .line 102
    new-instance v0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    #v0=(UninitRef);
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, p1

    #v2=(Reference);
    move-object v3, p4

    #v3=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates;II)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    .line 104
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 106
    new-instance v0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    #v0=(UninitRef);
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates;II)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    .line 108
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/bitmap/AttachmentDrawable;Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/mail/bitmap/AttachmentDrawable;->onDecodeCompleteImpl(Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method private decode(Z)V
    .locals 9
    .parameter "executeStateChange"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 380
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 352
    :cond_0
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const-string v0, "decode"

    invoke-static {v0}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 354
    const/high16 v0, 0x3f80

    #v0=(Integer);
    const/high16 v1, 0x3fc0

    #v1=(Integer);
    iget v5, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDensity:F

    #v5=(Integer);
    div-float/2addr v1, v5

    #v1=(Float);
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 357
    .local v8, scale:F
    #v8=(Float);
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    mul-float/2addr v0, v8

    float-to-int v2, v0

    .line 358
    .local v2, w:I
    #v2=(Integer);
    iget v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeWidth:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 359
    .local v4, bufferW:I
    #v4=(Integer);
    iget v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeHeight:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    mul-float/2addr v0, v8

    float-to-int v3, v0

    .line 366
    .local v3, bufferH:I
    #v3=(Integer);
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 367
    :cond_1
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    invoke-virtual {v0}, Lcom/android/bitmap/DecodeTask;->cancel()V

    .line 374
    :cond_3
    if-eqz p1, :cond_4

    .line 375
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 377
    :cond_4
    #v0=(Conflicted);
    new-instance v0, Lcom/android/bitmap/DecodeTask;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v1=(Reference);
    iget-object v7, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    #v7=(Reference);
    move v5, v3

    move-object v6, p0

    #v6=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/bitmap/DecodeTask;-><init>(Lcom/android/bitmap/DecodeTask$Request;IIIILcom/android/bitmap/DecodeTask$BitmapView;Lcom/android/bitmap/BitmapCache;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    .line 378
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    sget-object v1, Lcom/android/mail/bitmap/AttachmentDrawable;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Void;

    #v5=(Reference);
    invoke-virtual {v0, v1, v5}, Lcom/android/bitmap/DecodeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 379
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    goto :goto_0
.end method

.method private onDecodeCompleteImpl(Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 1
    .parameter "key"
    .parameter "result"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, p2}, Lcom/android/mail/bitmap/AttachmentDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p2}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    goto :goto_0
.end method

.method private setBitmap(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eq v0, p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 339
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_0
    #v0=(PosByte);
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 341
    return-void

    .line 339
    :cond_1
    #v0=(Reference);
    const/4 v0, 0x4

    #v0=(PosByte);
    goto :goto_0
.end method

.method private setImage(Lcom/android/mail/bitmap/ImageAttachmentRequest;)V
    .locals 8
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 141
    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v4=(Reference);
    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {v4, p1}, Lcom/android/mail/bitmap/ImageAttachmentRequest;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 189
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Conflicted);
    return-void

    .line 145
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v5=(Uninit);v6=(Null);v7=(Uninit);
    const-string v4, "set image"

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {v4, p1}, Lcom/android/mail/bitmap/ImageAttachmentRequest;->matches(Lcom/android/mail/bitmap/ImageAttachmentRequest;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    move v1, v2

    .line 150
    .local v1, onlyRenditionChange:Z
    :goto_1
    #v1=(Boolean);v4=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v4=(Reference);
    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 151
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v4}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    .line 153
    iput-object v6, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    if-eqz v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    iget-object v5, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/bitmap/DecodeAggregator;->forget(Ljava/lang/Object;)V

    .line 158
    :cond_2
    #v5=(Conflicted);
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    .line 160
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    invoke-virtual {v4}, Lcom/android/bitmap/DecodeTask;->cancel()V

    .line 162
    iput-object v6, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    .line 165
    :cond_3
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    invoke-direct {p0, v3}, Lcom/android/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 171
    if-nez p1, :cond_5

    .line 172
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    goto :goto_0

    .end local v1           #onlyRenditionChange:Z
    :cond_4
    #v1=(Uninit);v4=(Conflicted);v5=(Uninit);
    move v1, v3

    .line 148
    #v1=(Null);
    goto :goto_1

    .line 177
    .restart local v1       #onlyRenditionChange:Z
    :cond_5
    #v1=(Boolean);v4=(Reference);v5=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    invoke-interface {v4, p1, v2}, Lcom/android/bitmap/BitmapCache;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/bitmap/ReusableBitmap;

    .line 178
    .local v0, cached:Lcom/android/bitmap/ReusableBitmap;
    if-eqz v0, :cond_7

    .line 179
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 180
    const-string v4, "AttachPreview"

    const-string v5, "CACHE HIT key=%s"

    #v5=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-object v6, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v6=(Reference);
    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    :cond_6
    :goto_2
    #v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    goto :goto_0

    .line 182
    :cond_7
    #v2=(One);v3=(Null);v4=(Reference);v6=(Null);v7=(Uninit);
    if-nez v1, :cond_8

    move v4, v2

    :goto_3
    #v4=(Boolean);
    invoke-direct {p0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable;->decode(Z)V

    .line 183
    const-string v4, "AttachPreview"

    #v4=(Reference);
    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-static {v4, v5}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 184
    const-string v4, "AttachPreview"

    #v4=(Reference);
    const-string v5, "CACHE MISS key=%s\ncache=%s"

    #v5=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v7=(Reference);
    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/bitmap/BitmapCache;->toDebugString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_8
    #v3=(Null);v5=(Conflicted);v6=(Null);v7=(Uninit);
    move v4, v3

    .line 182
    #v4=(Null);
    goto :goto_3
.end method

.method private setLoadState(I)V
    .locals 8
    .parameter "loadState"

    .prologue
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 383
    #v4=(Null);
    const-string v0, "AttachPreview"

    #v0=(Reference);
    const-string v1, "IN AD.setState. old=%s new=%s key=%s this=%s"

    #v1=(Reference);
    const/4 v2, 0x4

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mLoadState:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 385
    iget v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mLoadState:I

    #v0=(Integer);
    if-ne v0, p1, :cond_0

    .line 386
    const-string v0, "AttachPreview"

    #v0=(Reference);
    const-string v1, "OUT no-op AD.setState"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 423
    :goto_0
    return-void

    .line 390
    :cond_0
    #v0=(Integer);
    const-string v0, "set load state"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 418
    :goto_1
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 420
    iput p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mLoadState:I

    .line 421
    const-string v0, "AttachPreview"

    const-string v1, "OUT stateful AD.setState. new=%s placeholder=%s progress=%s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v3}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->isVisible()Z

    move-result v3

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v3}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->isVisible()Z

    move-result v3

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->reset()V

    .line 397
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->reset()V

    goto :goto_1

    .line 400
    :pswitch_1
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v5}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setPulseEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v5}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 402
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 405
    :pswitch_2
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 406
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v5}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 409
    :pswitch_3
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 410
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 413
    :pswitch_4
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setPulseEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v5}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 415
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v4}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public bind(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "lookupUri"
    .parameter "rendition"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    .local v0, bounds:Landroid/graphics/Rect;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef);
    const-string v2, "AttachmentDrawable must have bounds set before bind"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 137
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    new-instance v1, Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v1=(UninitRef);
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    #v2=(Integer);
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/mail/bitmap/ImageAttachmentRequest;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    #v1=(Reference);
    invoke-direct {p0, v1}, Lcom/android/mail/bitmap/AttachmentDrawable;->setImage(Lcom/android/mail/bitmap/ImageAttachmentRequest;)V

    .line 138
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 198
    #v7=(Null);
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 199
    .local v10, bounds:Landroid/graphics/Rect;
    #v10=(Reference);
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 235
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 203
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->getLogicalWidth()I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/bitmap/ReusableBitmap;->getLogicalHeight()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v4=(Reference);
    iget v4, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsDecodeHeight:I

    #v4=(Integer);
    const v5, 0x7fffffff

    #v5=(Integer);
    iget v6, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mParallaxFraction:F

    #v6=(Integer);
    iget v8, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mParallaxSpeedMultiplier:F

    #v8=(Integer);
    iget-object v9, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    #v9=(Reference);
    invoke-static/range {v0 .. v9}, Lcom/android/bitmap/BitmapUtils;->calculateCroppedSrcRect(IIIIIIFZFLandroid/graphics/Rect;)V

    .line 211
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->getOrientation()I

    move-result v11

    .line 215
    .local v11, orientation:I
    #v11=(Integer);
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/bitmap/ReusableBitmap;->getLogicalWidth()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/bitmap/ReusableBitmap;->getLogicalHeight()I

    move-result v2

    #v2=(Integer);
    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    #v1=(Reference);
    invoke-static {v11, v0, v1}, Lcom/android/mail/utils/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 220
    new-instance v12, Landroid/graphics/Rect;

    #v12=(UninitRef);
    invoke-direct {v12, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 221
    .local v12, rotatedBounds:Landroid/graphics/Rect;
    #v12=(Reference);
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    #v1=(Integer);
    invoke-static {v11, v0, v1, v12}, Lcom/android/mail/utils/RectUtils;->rotateRect(IIILandroid/graphics/Rect;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 225
    int-to-float v0, v11

    #v0=(Float);
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    #v1=(Float);
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    #v2=(Float);
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 226
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    #v2=(Reference);
    invoke-virtual {p1, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    .end local v11           #orientation:I
    .end local v12           #rotatedBounds:Landroid/graphics/Rect;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->draw(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    #v0=(Reference);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    iget-object v0, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0xff

    #v1=(PosShort);
    if-ge v0, v1, :cond_1

    :cond_0
    #v1=(Conflicted);
    const/4 v0, -0x3

    :goto_0
    #v0=(Byte);
    return v0

    :cond_1
    #v0=(Conflicted);
    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "who"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 428
    return-void
.end method

.method public onBecomeFirstExpected(Lcom/android/bitmap/DecodeTask$Request;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/android/mail/bitmap/ImageAttachmentRequest;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 287
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 286
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgressDelayMs:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onBecomeFirstExpected(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/android/bitmap/DecodeTask$Request;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable;->onBecomeFirstExpected(Lcom/android/bitmap/DecodeTask$Request;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 266
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setBounds(Landroid/graphics/Rect;)V

    .line 267
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setBounds(Landroid/graphics/Rect;)V

    .line 268
    return-void
.end method

.method public onDecodeBegin(Lcom/android/bitmap/DecodeTask$Request;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    #v0=(Reference);
    invoke-virtual {v0, p1, p0}, Lcom/android/bitmap/DecodeAggregator;->expect(Ljava/lang/Object;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;)V

    .line 277
    return-void
.end method

.method public onDecodeCancel(Lcom/android/bitmap/DecodeTask$Request;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/bitmap/DecodeAggregator;->forget(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public onDecodeComplete(Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2
    .parameter "key"
    .parameter "result"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/bitmap/AttachmentDrawable$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1, p2}, Lcom/android/mail/bitmap/AttachmentDrawable$1;-><init>(Lcom/android/mail/bitmap/AttachmentDrawable;Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V

    #v1=(Reference);
    invoke-virtual {v0, p1, v1}, Lcom/android/bitmap/DecodeAggregator;->execute(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mLoadState:I

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    if-ne v0, v1, :cond_0

    .line 292
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 294
    :cond_0
    #v0=(Integer);
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 432
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/mail/bitmap/AttachmentDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 433
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 240
    .local v0, old:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v1, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setAlpha(I)V

    .line 242
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v1, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setAlpha(I)V

    .line 243
    if-eq p1, v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 246
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 251
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 252
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 254
    return-void
.end method

.method public setDecodeDimensions(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeWidth:I

    .line 117
    iput p2, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mDecodeHeight:I

    .line 118
    return-void
.end method

.method public setParallaxFraction(F)V
    .locals 0
    .parameter "fraction"

    .prologue
    .line 193
    iput p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mParallaxFraction:F

    .line 194
    return-void
.end method

.method public setParallaxSpeedMultiplier(F)V
    .locals 0
    .parameter "parallaxSpeedMultiplier"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable;->mParallaxSpeedMultiplier:F

    .line 122
    return-void
.end method

.method public showStaticPlaceholder()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 126
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable;->setImage(Lcom/android/mail/bitmap/ImageAttachmentRequest;)V

    .line 130
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 437
    invoke-virtual {p0, p2}, Lcom/android/mail/bitmap/AttachmentDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 438
    return-void
.end method
