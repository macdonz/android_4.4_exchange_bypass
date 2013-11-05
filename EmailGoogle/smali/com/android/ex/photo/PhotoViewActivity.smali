.class public Lcom/android/ex/photo/PhotoViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/ex/photo/PhotoViewCallbacks;
.implements Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;",
        "Landroid/app/ActionBar$OnMenuVisibilityListener;",
        "Lcom/android/ex/photo/PhotoViewCallbacks;"
    }
.end annotation


# static fields
.field public static sMemoryClass:I


# instance fields
.field protected mActionBarHiddenInitially:Z

.field protected mActionBarSubtitle:Ljava/lang/String;

.field protected mActionBarTitle:Ljava/lang/String;

.field protected mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

.field protected mAlbumCount:I

.field protected mAnimationStartHeight:I

.field protected mAnimationStartWidth:I

.field protected mAnimationStartX:I

.field protected mAnimationStartY:I

.field protected mBackground:Landroid/view/View;

.field protected mBitmapCallback:Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;

.field private mCurrentPhotoIndex:I

.field private mCurrentPhotoUri:Ljava/lang/String;

.field private final mCursorListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayThumbsFullScreen:Z

.field private mEnterAnimationFinished:Z

.field private mEnterFullScreenDelayTime:J

.field private final mEnterFullScreenRunnable:Ljava/lang/Runnable;

.field protected mFullScreen:Z

.field protected final mHandler:Landroid/os/Handler;

.field protected mIsEmpty:Z

.field protected mIsPaused:Z

.field protected mMaxInitialScale:F

.field private mPhotosUri:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mRestartLoader:Z

.field protected mRootView:Landroid/view/View;

.field protected mScaleAnimationEnabled:Z

.field private final mScreenListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTemporaryImage:Landroid/widget/ImageView;

.field protected mViewPager:Lcom/android/ex/photo/PhotoViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 114
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAlbumCount:I

    .line 131
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    .line 138
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsPaused:Z

    .line 157
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    .line 631
    new-instance v0, Lcom/android/ex/photo/PhotoViewActivity$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/ex/photo/PhotoViewActivity$1;-><init>(Lcom/android/ex/photo/PhotoViewActivity;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterFullScreenRunnable:Ljava/lang/Runnable;

    .line 1026
    return-void
.end method

.method static synthetic access$100(Lcom/android/ex/photo/PhotoViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->onExitAnimationComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/ex/photo/PhotoViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->runEnterAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/ex/photo/PhotoViewActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/ex/photo/PhotoViewActivity;->initTemporaryImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calculateTranslate(IIIF)I
    .locals 5
    .parameter "start"
    .parameter "startSize"
    .parameter "totalSize"
    .parameter "scale"

    .prologue
    const/high16 v4, 0x4000

    .line 979
    #v4=(Integer);
    int-to-float v2, p3

    #v2=(Float);
    int-to-float v3, p3

    #v3=(Float);
    mul-float/2addr v3, p4

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 985
    .local v1, scaleFromEdge:I
    #v1=(Integer);
    int-to-float v2, p3

    mul-float/2addr v2, p4

    int-to-float v3, p2

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 987
    .local v0, blankSize:I
    #v0=(Integer);
    sub-int v2, p1, v1

    #v2=(Integer);
    sub-int/2addr v2, v0

    return v2
.end method

.method private cancelEnterFullScreenRunnable()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterFullScreenRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method private static final getInputOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "in"

    .prologue
    .line 703
    if-nez p0, :cond_0

    .line 704
    const-string p0, ""

    .line 706
    .end local p0
    :cond_0
    return-object p0
.end method

.method private initTemporaryImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 991
    iget-boolean v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1024
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 995
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 996
    if-eqz p1, :cond_1

    .line 998
    iget-object v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 999
    .local v1, totalWidth:I
    #v1=(Integer);
    if-nez v1, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    .line 1004
    .local v0, base:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/ex/photo/PhotoViewActivity$6;

    #v3=(UninitRef);
    invoke-direct {v3, p0, v0}, Lcom/android/ex/photo/PhotoViewActivity$6;-><init>(Lcom/android/ex/photo/PhotoViewActivity;Landroid/view/View;)V

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1023
    .end local v0           #base:Landroid/view/View;
    .end local v1           #totalWidth:I
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/16 v3, 0x64

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 1019
    .restart local v1       #totalWidth:I
    :cond_2
    #v0=(Uninit);v1=(Integer);v3=(Uninit);v4=(Uninit);
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->runEnterAnimation()V

    goto :goto_1
.end method

.method private declared-synchronized notifyCursorListeners(Landroid/database/Cursor;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;

    .line 499
    .local v1, listener:Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;
    invoke-interface {v1, p1}, Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;->onCursorChanged(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 498
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2

    .line 501
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v2=(Boolean);
    monitor-exit p0

    return-void
.end method

.method private onExitAnimationComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 794
    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->finish()V

    .line 795
    invoke-virtual {p0, v0, v0}, Lcom/android/ex/photo/PhotoViewActivity;->overridePendingTransition(II)V

    .line 796
    return-void
.end method

.method private postEnterFullScreenRunnableWithDelay()V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterFullScreenRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterFullScreenDelayTime:J

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    return-void
.end method

.method private runEnterAnimation()V
    .locals 23

    .prologue
    .line 799
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 800
    .local v14, totalWidth:I
    #v14=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 805
    .local v13, totalHeight:I
    #v13=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #v20=(Null);
    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    move/from16 v0, v19

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v19, v0

    #v19=(Float);
    int-to-float v0, v14

    move/from16 v20, v0

    #v20=(Float);
    div-float v11, v19, v20

    .line 812
    .local v11, scaleW:F
    #v11=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    move/from16 v0, v19

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v19, v0

    #v19=(Float);
    int-to-float v0, v13

    move/from16 v20, v0

    div-float v12, v19, v20

    .line 813
    .local v12, scaleY:F
    #v12=(Float);
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 815
    .local v9, scale:F
    #v9=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartX:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v19

    #v1=(Integer);
    move/from16 v2, v20

    #v2=(Integer);
    invoke-direct {v0, v1, v2, v14, v9}, Lcom/android/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v16

    .line 817
    .local v16, translateX:I
    #v16=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartY:I

    #v0=(Integer);
    move/from16 v19, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    #v0=(Integer);
    move/from16 v20, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v13, v9}, Lcom/android/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v17

    .line 820
    .local v17, translateY:I
    #v17=(Integer);
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 821
    .local v18, version:I
    #v18=(Integer);
    const/16 v19, 0xe

    #v19=(PosByte);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-lt v0, v1, :cond_1

    .line 822
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    #v19=(Reference);
    const/16 v20, 0x0

    #v20=(Null);
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    #v20=(Integer);
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0xfa

    #v20=(LongLo);v21=(LongHi);
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #v20=(Null);
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v20, v0

    #v20=(Float);
    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 829
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move/from16 v0, v17

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 831
    new-instance v7, Lcom/android/ex/photo/PhotoViewActivity$2;

    #v7=(UninitRef);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v7, v0}, Lcom/android/ex/photo/PhotoViewActivity$2;-><init>(Lcom/android/ex/photo/PhotoViewActivity;)V

    .line 837
    .local v7, endRunnable:Ljava/lang/Runnable;
    #v7=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    #v20=(Integer);
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    #v20=(Null);
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0xfa

    #v20=(LongLo);
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 839
    .local v6, animator:Landroid/view/ViewPropertyAnimator;
    #v6=(Reference);
    const/16 v19, 0x10

    #v19=(PosByte);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 840
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 844
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v19=(Conflicted);
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 877
    .end local v6           #animator:Landroid/view/ViewPropertyAnimator;
    .end local v7           #endRunnable:Ljava/lang/Runnable;
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v15=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    return-void

    .line 842
    .restart local v6       #animator:Landroid/view/ViewPropertyAnimator;
    .restart local v7       #endRunnable:Ljava/lang/Runnable;
    :cond_0
    #v0=(Integer);v1=(PosByte);v2=(Integer);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Reference);v8=(Uninit);v10=(Uninit);v15=(Uninit);v19=(PosByte);v20=(LongLo);v21=(LongHi);v22=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    #v19=(Reference);
    const-wide/16 v20, 0xfa

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 846
    .end local v6           #animator:Landroid/view/ViewPropertyAnimator;
    .end local v7           #endRunnable:Ljava/lang/Runnable;
    :cond_1
    #v0=(Integer);v1=(PosByte);v2=(Integer);v6=(Uninit);v7=(Uninit);v19=(PosByte);v20=(Integer);v21=(Uninit);
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #v4=(UninitRef);
    const/16 v19, 0x0

    #v19=(Null);
    const/high16 v20, 0x3f80

    move/from16 v0, v19

    #v0=(Null);
    move/from16 v1, v20

    #v1=(Integer);
    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 847
    .local v4, alphaAnimation:Landroid/view/animation/Animation;
    #v4=(Reference);
    const-wide/16 v19, 0xfa

    #v19=(LongLo);v20=(LongHi);
    move-wide/from16 v0, v19

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 848
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #v20=(Null);
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 851
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    #v15=(UninitRef);
    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v19, v0

    #v19=(Float);
    move/from16 v0, v17

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v20, v0

    #v20=(Float);
    const/16 v21, 0x0

    #v21=(Null);
    const/16 v22, 0x0

    #v22=(Null);
    move/from16 v0, v19

    move/from16 v1, v20

    #v1=(Float);
    move/from16 v2, v21

    #v2=(Null);
    move/from16 v3, v22

    #v3=(Null);
    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 853
    .local v15, translateAnimation:Landroid/view/animation/Animation;
    #v15=(Reference);
    const-wide/16 v19, 0xfa

    #v19=(LongLo);v20=(LongHi);
    move-wide/from16 v0, v19

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 854
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    #v10=(UninitRef);
    const/16 v19, 0x0

    #v19=(Null);
    const/16 v20, 0x0

    #v20=(Null);
    move/from16 v0, v19

    #v0=(Null);
    move/from16 v1, v20

    #v1=(Null);
    invoke-direct {v10, v9, v9, v0, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 855
    .local v10, scaleAnimation:Landroid/view/animation/Animation;
    #v10=(Reference);
    const-wide/16 v19, 0xfa

    #v19=(LongLo);v20=(LongHi);
    move-wide/from16 v0, v19

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 857
    new-instance v5, Landroid/view/animation/AnimationSet;

    #v5=(UninitRef);
    const/16 v19, 0x1

    #v19=(One);
    move/from16 v0, v19

    #v0=(One);
    invoke-direct {v5, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 858
    .local v5, animationSet:Landroid/view/animation/AnimationSet;
    #v5=(Reference);
    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 859
    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 860
    new-instance v8, Lcom/android/ex/photo/PhotoViewActivity$3;

    #v8=(UninitRef);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v8, v0}, Lcom/android/ex/photo/PhotoViewActivity$3;-><init>(Lcom/android/ex/photo/PhotoViewActivity;)V

    .line 874
    .local v8, listener:Landroid/view/animation/Animation$AnimationListener;
    #v8=(Reference);
    invoke-virtual {v5, v8}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method

.method private runExitAnimation()V
    .locals 20

    .prologue
    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/photo/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 886
    .local v6, intent:Landroid/content/Intent;
    #v6=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 887
    .local v13, totalWidth:I
    #v13=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 893
    .local v12, totalHeight:I
    #v12=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    move/from16 v0, v17

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v17, v0

    #v17=(Float);
    int-to-float v0, v13

    move/from16 v18, v0

    #v18=(Float);
    div-float v10, v17, v18

    .line 894
    .local v10, scaleW:F
    #v10=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    move/from16 v0, v17

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v17, v0

    #v17=(Float);
    int-to-float v0, v12

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 895
    .local v11, scaleY:F
    #v11=(Float);
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 897
    .local v8, scale:F
    #v8=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartX:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v17

    #v1=(Integer);
    move/from16 v2, v18

    #v2=(Integer);
    invoke-direct {v0, v1, v2, v13, v8}, Lcom/android/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v14

    .line 899
    .local v14, translateX:I
    #v14=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartY:I

    #v0=(Integer);
    move/from16 v17, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    #v0=(Integer);
    move/from16 v18, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v8}, Lcom/android/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v15

    .line 901
    .local v15, translateY:I
    #v15=(Integer);
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 902
    .local v16, version:I
    #v16=(Integer);
    const/16 v17, 0xe

    #v17=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v17

    #v1=(PosByte);
    if-lt v0, v1, :cond_2

    .line 903
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    #v18=(Null);
    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0xfa

    #v18=(LongLo);v19=(LongHi);
    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #v18=(Null);
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 906
    new-instance v5, Lcom/android/ex/photo/PhotoViewActivity$4;

    #v5=(UninitRef);
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/ex/photo/PhotoViewActivity$4;-><init>(Lcom/android/ex/photo/PhotoViewActivity;)V

    .line 915
    .local v5, endRunnable:Ljava/lang/Runnable;
    #v5=(Reference);
    const/4 v4, 0x0

    .line 916
    .local v4, animator:Landroid/view/ViewPropertyAnimator;
    #v4=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    #v17=(Integer);
    if-nez v17, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v14

    #v0=(Float);
    move/from16 v18, v0

    #v18=(Float);
    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0xfa

    #v18=(LongLo);
    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 925
    :goto_0
    #v4=(Reference);
    const/16 v17, 0x10

    #v17=(PosByte);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 926
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 930
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v17=(Conflicted);
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 963
    .end local v4           #animator:Landroid/view/ViewPropertyAnimator;
    .end local v5           #endRunnable:Ljava/lang/Runnable;
    :goto_2
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    return-void

    .line 921
    .restart local v4       #animator:Landroid/view/ViewPropertyAnimator;
    .restart local v5       #endRunnable:Ljava/lang/Runnable;
    :cond_0
    #v0=(Reference);v1=(PosByte);v2=(Integer);v3=(Uninit);v4=(Null);v5=(Reference);v7=(Uninit);v9=(Uninit);v17=(Integer);v18=(Null);v19=(LongHi);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/photo/PhotoViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v14

    #v0=(Float);
    move/from16 v18, v0

    #v18=(Float);
    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0xfa

    #v18=(LongLo);
    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    #v4=(Reference);
    goto :goto_0

    .line 928
    :cond_1
    #v0=(Integer);v17=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    #v17=(Reference);
    const-wide/16 v18, 0xfa

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 932
    .end local v4           #animator:Landroid/view/ViewPropertyAnimator;
    .end local v5           #endRunnable:Ljava/lang/Runnable;
    :cond_2
    #v0=(Integer);v1=(PosByte);v2=(Integer);v4=(Uninit);v5=(Uninit);v17=(PosByte);v18=(Integer);v19=(Uninit);
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    #v3=(UninitRef);
    const/high16 v17, 0x3f80

    #v17=(Integer);
    const/16 v18, 0x0

    #v18=(Null);
    move/from16 v0, v17

    move/from16 v1, v18

    #v1=(Null);
    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 933
    .local v3, alphaAnimation:Landroid/view/animation/Animation;
    #v3=(Reference);
    const-wide/16 v17, 0xfa

    #v17=(LongLo);v18=(LongHi);
    move-wide/from16 v0, v17

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 934
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #v18=(Null);
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 937
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    #v9=(UninitRef);
    const/high16 v17, 0x3f80

    #v17=(Integer);
    const/high16 v18, 0x3f80

    #v18=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    move/from16 v1, v18

    #v1=(Integer);
    invoke-direct {v9, v0, v1, v8, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 938
    .local v9, scaleAnimation:Landroid/view/animation/Animation;
    #v9=(Reference);
    const-wide/16 v17, 0xfa

    #v17=(LongLo);v18=(LongHi);
    move-wide/from16 v0, v17

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 939
    new-instance v7, Lcom/android/ex/photo/PhotoViewActivity$5;

    #v7=(UninitRef);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v7, v0}, Lcom/android/ex/photo/PhotoViewActivity$5;-><init>(Lcom/android/ex/photo/PhotoViewActivity;)V

    .line 953
    .local v7, listener:Landroid/view/animation/Animation$AnimationListener;
    #v7=(Reference);
    invoke-virtual {v9, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    #v17=(Integer);
    if-nez v17, :cond_3

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 960
    :cond_3
    #v17=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/ex/photo/PhotoViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized addCursorListener(Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public addScreenListener(ILcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;)V
    .locals 2
    .parameter "position"
    .parameter "listener"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    #v0=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method protected createPhotoPagerAdapter(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;F)Lcom/android/ex/photo/adapters/PhotoPagerAdapter;
    .locals 6
    .parameter "context"
    .parameter "fm"
    .parameter "c"
    .parameter "maxScale"

    .prologue
    .line 170
    new-instance v0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v0=(UninitRef);
    iget-boolean v5, p0, Lcom/android/ex/photo/PhotoViewActivity;->mDisplayThumbsFullScreen:Z

    #v5=(Boolean);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move v4, p4

    #v4=(Float);
    invoke-direct/range {v0 .. v5}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;FZ)V

    .line 172
    .local v0, adapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;
    #v0=(Reference);
    return-object v0
.end method

.method public getAdapter()Lcom/android/ex/photo/adapters/PhotoPagerAdapter;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorAtProperPosition()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 716
    #v2=(Null);
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v3=(Reference);
    if-nez v3, :cond_0

    move-object v0, v2

    .line 729
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .line 720
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v3}, Lcom/android/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v1

    .line 721
    .local v1, position:I
    #v1=(Integer);
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v3}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 723
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-nez v0, :cond_1

    move-object v0, v2

    .line 724
    #v0=(Null);
    goto :goto_0

    .line 727
    :cond_1
    #v0=(Reference);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public isFragmentActive(Landroid/support/v4/app/Fragment;)Z
    .locals 3
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    .line 519
    #v0=(Null);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    if-nez v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_1
    #v0=(Null);v1=(Reference);v2=(Uninit);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z
    .locals 2
    .parameter "fragment"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getCount()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 369
    :cond_0
    #v0=(Conflicted);
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    .line 371
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_1
    #v0=(Integer);v1=(Uninit);
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v0=(Boolean);
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    #v1=(Integer);
    if-eq v0, v1, :cond_3

    :cond_2
    #v1=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    :cond_3
    #v0=(Integer);v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarHiddenInitially:Z

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->toggleFullScreen()V

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->runExitAnimation()V

    goto :goto_0

    .line 318
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, -0x1

    #v12=(Byte);
    const/16 v11, 0x8

    #v11=(PosByte);
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x0

    .line 177
    #v8=(Null);
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    #v6=(Reference);
    const-string v7, "activity"

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/app/ActivityManager;

    .line 181
    .local v3, mgr:Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    #v6=(Integer);
    sput v6, Lcom/android/ex/photo/PhotoViewActivity;->sMemoryClass:I

    .line 183
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference);
    const-string v6, "photos_uri"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 186
    const-string v6, "photos_uri"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mPhotosUri:Ljava/lang/String;

    .line 188
    :cond_0
    #v6=(Conflicted);
    const-string v6, "scale_up_animation"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 189
    iput-boolean v10, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    .line 190
    const-string v6, "start_x_extra"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartX:I

    .line 191
    const-string v6, "start_y_extra"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartY:I

    .line 192
    const-string v6, "start_width_extra"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    .line 193
    const-string v6, "start_height_extra"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    .line 195
    :cond_1
    const-string v6, "action_bar_hidden_initially"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #v6=(Boolean);
    iput-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarHiddenInitially:Z

    .line 197
    const-string v6, "display_thumbs_fullscreen"

    #v6=(Reference);
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #v6=(Boolean);
    iput-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mDisplayThumbsFullScreen:Z

    .line 203
    const-string v6, "projection"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_6

    .line 204
    const-string v6, "projection"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mProjection:[Ljava/lang/String;

    .line 210
    :goto_0
    #v6=(Conflicted);
    const-string v6, "max_scale"

    #v6=(Reference);
    const/high16 v7, 0x3f80

    #v7=(Integer);
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mMaxInitialScale:F

    .line 211
    iput-object v9, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 212
    iput v12, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 219
    const-string v6, "photo_index"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    .line 220
    const-string v6, "photo_index"

    #v6=(Reference);
    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 222
    :cond_2
    const-string v6, "initial_photo_uri"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 223
    const-string v6, "initial_photo_uri"

    #v6=(Reference);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 225
    :cond_3
    #v6=(Conflicted);
    iput-boolean v10, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 227
    if-eqz p1, :cond_7

    .line 228
    const-string v6, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_URI"

    #v6=(Reference);
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 229
    const-string v6, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_INDEX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 230
    const-string v6, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    #v6=(Reference);
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    #v6=(Boolean);
    iput-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    .line 231
    const-string v6, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    #v6=(Reference);
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    .line 232
    const-string v6, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    .line 233
    const-string v6, "com.google.android.apps.plus.PhotoViewFragment.SCALEANIMATIONFINISHED"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    #v6=(Boolean);
    iput-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    .line 239
    :goto_1
    sget v6, Lcom/android/ex/photo/R$layout;->photo_activity_view:I

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/ex/photo/PhotoViewActivity;->setContentView(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    #v6=(Reference);
    iget v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mMaxInitialScale:F

    invoke-virtual {p0, p0, v6, v9, v7}, Lcom/android/ex/photo/PhotoViewActivity;->createPhotoPagerAdapter(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;F)Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    .line 244
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 245
    .local v4, resources:Landroid/content/res/Resources;
    #v4=(Reference);
    sget v6, Lcom/android/ex/photo/R$id;->photo_activity_root_view:I

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    .line 246
    sget v6, Lcom/android/ex/photo/R$id;->photo_activity_background:I

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    .line 247
    sget v6, Lcom/android/ex/photo/R$id;->photo_activity_temporary_image:I

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    .line 248
    sget v6, Lcom/android/ex/photo/R$id;->photo_view_pager:I

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/ex/photo/PhotoViewPager;

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    .line 249
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v7=(Reference);
    invoke-virtual {v6, v7}, Lcom/android/ex/photo/PhotoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 250
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v6, p0}, Lcom/android/ex/photo/PhotoViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 251
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v6, p0}, Lcom/android/ex/photo/PhotoViewPager;->setOnInterceptTouchListener(Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;)V

    .line 252
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    sget v7, Lcom/android/ex/photo/R$dimen;->photo_page_margin:I

    #v7=(Integer);
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/photo/PhotoViewPager;->setPageMargin(I)V

    .line 254
    new-instance v6, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;

    #v6=(UninitRef);
    invoke-direct {v6, p0, v9}, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;-><init>(Lcom/android/ex/photo/PhotoViewActivity;Lcom/android/ex/photo/PhotoViewActivity$1;)V

    #v6=(Reference);
    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mBitmapCallback:Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;

    .line 255
    iget-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    #v6=(Boolean);
    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    if-eqz v6, :cond_8

    .line 258
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    #v6=(Reference);
    const/16 v7, 0x64

    #v7=(PosByte);
    invoke-virtual {v6, v7, v9, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 261
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :goto_2
    #v1=(Conflicted);v8=(Reference);
    sget v6, Lcom/android/ex/photo/R$integer;->reenter_fullscreen_delay_time_in_millis:I

    #v6=(Integer);
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    #v6=(LongLo);v7=(LongHi);
    iput-wide v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterFullScreenDelayTime:J

    .line 276
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 277
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    if-eqz v0, :cond_5

    .line 278
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 279
    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 280
    const/16 v5, 0x8

    .line 281
    .local v5, showTitle:I
    #v5=(PosByte);
    invoke-virtual {v0, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/PhotoViewActivity;->setActionBarTitles(Landroid/app/ActionBar;)V

    .line 287
    .end local v5           #showTitle:I
    :cond_5
    #v5=(Conflicted);
    iget-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v6=(Boolean);
    invoke-virtual {p0, v6}, Lcom/android/ex/photo/PhotoViewActivity;->setLightsOutMode(Z)V

    .line 288
    return-void

    .line 206
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_6
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Reference);v8=(Null);
    iput-object v9, p0, Lcom/android/ex/photo/PhotoViewActivity;->mProjection:[Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :cond_7
    #v6=(Conflicted);v7=(Integer);
    iget-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarHiddenInitially:Z

    #v6=(Boolean);
    iput-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    goto/16 :goto_1

    .line 267
    .restart local v4       #resources:Landroid/content/res/Resources;
    :cond_8
    #v4=(Reference);
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v6=(Reference);
    invoke-virtual {v6, v11}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 268
    new-instance v1, Landroid/os/Bundle;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v1, args:Landroid/os/Bundle;
    #v1=(Reference);
    const-string v6, "image_uri"

    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    #v7=(Reference);
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    const/4 v7, 0x2

    #v7=(PosByte);
    iget-object v8, p0, Lcom/android/ex/photo/PhotoViewActivity;->mBitmapCallback:Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;

    #v8=(Reference);
    invoke-virtual {v6, v7, v1, v8}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_2
.end method

.method public onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    packed-switch p1, :pswitch_data_0

    .line 411
    const/4 v0, 0x0

    :goto_0
    #v0=(Reference);
    return-object v0

    .line 409
    :pswitch_0
    #v0=(Uninit);
    new-instance v0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p3}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v0=(Reference);
    goto :goto_0

    .line 405
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    const/16 v0, 0x64

    #v0=(PosByte);
    if-ne p1, v0, :cond_0

    .line 398
    new-instance v0, Lcom/android/ex/photo/loaders/PhotoPagerLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mPhotosUri:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mProjection:[Ljava/lang/String;

    #v2=(Reference);
    invoke-direct {v0, p0, v1, v2}, Lcom/android/ex/photo/loaders/PhotoPagerLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 400
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v0=(PosByte);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onCursorChanged(Lcom/android/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "fragment"
    .parameter "cursor"

    .prologue
    .line 781
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 789
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    .line 790
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 791
    return-void
.end method

.method public onFragmentPhotoLoadComplete(Lcom/android/ex/photo/fragments/PhotoViewFragment;Z)V
    .locals 4
    .parameter "fragment"
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/16 v2, 0x8

    .line 756
    #v2=(PosByte);
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    #v0=(Integer);
    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 758
    if-eqz p2, :cond_1

    .line 760
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 772
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 767
    :cond_1
    #v0=(Boolean);v1=(Reference);
    const-string v0, "PhotoViewActivity"

    #v0=(Reference);
    const-string v1, "Failed to load fragment image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFragmentVisible(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 528
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 12
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v11, 0x0

    #v11=(Null);
    const/16 v10, 0xb

    #v10=(PosByte);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x0

    .line 418
    #v9=(Null);
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    .line 419
    .local v1, id:I
    #v1=(Integer);
    const/16 v7, 0x64

    #v7=(PosByte);
    if-ne v1, v7, :cond_2

    .line 420
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    #v7=(Integer);
    if-nez v7, :cond_3

    .line 421
    :cond_0
    iput-boolean v8, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 480
    :cond_1
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->updateActionItems()V

    .line 482
    :cond_2
    :goto_1
    return-void

    .line 423
    :cond_3
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(One);
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    iput v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAlbumCount:I

    .line 424
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    #v7=(Reference);
    if-eqz v7, :cond_4

    .line 425
    const/4 v2, 0x0

    .line 427
    .local v2, index:I
    #v2=(Null);
    const-string v7, "uri"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 429
    .local v4, uriIndex:I
    #v4=(Integer);
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    #v7=(Integer);
    if-lt v7, v10, :cond_5

    .line 430
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    #v7=(Reference);
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 436
    .local v0, currentPhotoUri:Landroid/net/Uri;
    :goto_2
    #v0=(Reference);v2=(Integer);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    .line 437
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, uriString:Ljava/lang/String;
    #v5=(Reference);
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    #v7=(Integer);
    if-lt v7, v10, :cond_6

    .line 440
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 444
    .local v3, uri:Landroid/net/Uri;
    :goto_3
    #v3=(Reference);
    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_7

    .line 445
    iput v2, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 456
    .end local v0           #currentPhotoUri:Landroid/net/Uri;
    .end local v2           #index:I
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uriIndex:I
    .end local v5           #uriString:Ljava/lang/String;
    :cond_4
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    iget-boolean v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsPaused:Z

    #v7=(Boolean);
    if-eqz v7, :cond_8

    .line 457
    iput-boolean v8, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRestartLoader:Z

    goto :goto_1

    .line 433
    .restart local v2       #index:I
    .restart local v4       #uriIndex:I
    :cond_5
    #v0=(Uninit);v2=(Null);v3=(Uninit);v4=(Integer);v5=(Uninit);v7=(Integer);
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    #v7=(Reference);
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #currentPhotoUri:Landroid/net/Uri;
    #v0=(Reference);
    goto :goto_2

    .line 442
    .restart local v5       #uriString:Ljava/lang/String;
    :cond_6
    #v2=(Integer);v3=(Conflicted);v5=(Reference);v7=(Integer);
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    #v3=(Reference);
    goto :goto_3

    .line 448
    :cond_7
    #v7=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    .line 449
    goto :goto_2

    .line 460
    .end local v0           #currentPhotoUri:Landroid/net/Uri;
    .end local v2           #index:I
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uriIndex:I
    .end local v5           #uriString:Ljava/lang/String;
    :cond_8
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Boolean);
    iget-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 461
    .local v6, wasEmpty:Z
    #v6=(Boolean);
    iput-boolean v9, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 463
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v7=(Reference);
    invoke-virtual {v7, p2}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 464
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v7}, Lcom/android/ex/photo/PhotoViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v7

    if-nez v7, :cond_9

    .line 465
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    iget-object v8, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v8=(Reference);
    invoke-virtual {v7, v8}, Lcom/android/ex/photo/PhotoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 467
    :cond_9
    #v8=(Conflicted);
    invoke-direct {p0, p2}, Lcom/android/ex/photo/PhotoViewActivity;->notifyCursorListeners(Landroid/database/Cursor;)V

    .line 470
    iget v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    #v7=(Integer);
    if-gez v7, :cond_a

    .line 471
    iput v9, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 474
    :cond_a
    iget-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v7=(Reference);
    iget v8, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    #v8=(Integer);
    invoke-virtual {v7, v8, v9}, Lcom/android/ex/photo/PhotoViewPager;->setCurrentItem(IZ)V

    .line 475
    if-eqz v6, :cond_1

    .line 476
    iget v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    #v7=(Integer);
    invoke-virtual {p0, v7}, Lcom/android/ex/photo/PhotoViewActivity;->setViewActivated(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/photo/PhotoViewActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 738
    if-eqz p1, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->cancelEnterFullScreenRunnable()V

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->postEnterFullScreenRunnableWithDelay()V

    goto :goto_0
.end method

.method public onNewPhotoLoaded(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 748
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 342
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    #v0=(Boolean);
    return v0

    .line 339
    :pswitch_0
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->finish()V

    .line 340
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 337
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 515
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 505
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 509
    iput p1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/PhotoViewActivity;->setViewActivated(I)V

    .line 511
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsPaused:Z

    .line 305
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 306
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 292
    #v1=(Null);
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 293
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v0=(Boolean);
    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 295
    iput-boolean v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsPaused:Z

    .line 296
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRestartLoader:Z

    if-eqz v0, :cond_0

    .line 297
    iput-boolean v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRestartLoader:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    #v0=(Reference);
    const/16 v1, 0x64

    #v1=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 300
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 327
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_URI"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_INDEX"

    iget v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    iget-boolean v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.SCALEANIMATIONFINISHED"

    iget-boolean v1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    return-void
.end method

.method public onTouchIntercept(FF)Lcom/android/ex/photo/PhotoViewPager$InterceptType;
    .locals 5
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, interceptLeft:Z
    #v1=(Null);
    const/4 v2, 0x0

    .line 535
    .local v2, interceptRight:Z
    #v2=(Null);
    iget-object v4, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Boolean);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .line 536
    .local v3, listener:Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;
    if-nez v1, :cond_1

    .line 537
    invoke-interface {v3, p1, p2}, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;->onInterceptMoveLeft(FF)Z

    move-result v1

    .line 539
    :cond_1
    if-nez v2, :cond_0

    .line 540
    invoke-interface {v3, p1, p2}, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;->onInterceptMoveRight(FF)Z

    move-result v2

    goto :goto_0

    .line 544
    .end local v3           #listener:Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;
    :cond_2
    #v3=(Conflicted);
    if-eqz v1, :cond_4

    .line 545
    if-eqz v2, :cond_3

    .line 546
    sget-object v4, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->BOTH:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    .line 552
    :goto_1
    #v4=(Reference);
    return-object v4

    .line 548
    :cond_3
    #v4=(Boolean);
    sget-object v4, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->LEFT:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    #v4=(Reference);
    goto :goto_1

    .line 549
    :cond_4
    #v4=(Boolean);
    if-eqz v2, :cond_5

    .line 550
    sget-object v4, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->RIGHT:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    #v4=(Reference);
    goto :goto_1

    .line 552
    :cond_5
    #v4=(Boolean);
    sget-object v4, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->NONE:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    #v4=(Reference);
    goto :goto_1
.end method

.method public declared-synchronized removeCursorListener(Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public removeScreenListener(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    #v0=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method protected final setActionBarTitles(Landroid/app/ActionBar;)V
    .locals 1
    .parameter "actionBar"

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 695
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 693
    :cond_0
    #v0=(Uninit);
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/photo/PhotoViewActivity;->getInputOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/photo/PhotoViewActivity;->getInputOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setFullScreen(ZZ)V
    .locals 6
    .parameter "fullScreen"
    .parameter "setDelayedRunnable"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 559
    #v4=(Null);
    iget-boolean v5, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v5=(Boolean);
    if-eq p1, v5, :cond_1

    move v0, v3

    .line 560
    .local v0, fullScreenChanged:Z
    :goto_0
    #v0=(Boolean);
    iput-boolean p1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    .line 562
    iget-boolean v5, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    if-eqz v5, :cond_2

    .line 563
    invoke-virtual {p0, v3}, Lcom/android/ex/photo/PhotoViewActivity;->setLightsOutMode(Z)V

    .line 564
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->cancelEnterFullScreenRunnable()V

    .line 572
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 573
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .line 574
    .local v2, listener:Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;
    iget-boolean v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    invoke-interface {v2, v3}, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;->onFullScreenChanged(Z)V

    goto :goto_2

    .end local v0           #fullScreenChanged:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(One);
    move v0, v4

    .line 559
    #v0=(Null);
    goto :goto_0

    .line 566
    .restart local v0       #fullScreenChanged:Z
    :cond_2
    #v0=(Boolean);
    invoke-virtual {p0, v4}, Lcom/android/ex/photo/PhotoViewActivity;->setLightsOutMode(Z)V

    .line 567
    if-eqz p2, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->postEnterFullScreenRunnableWithDelay()V

    goto :goto_1

    .line 577
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);
    return-void
.end method

.method protected setLightsOutMode(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/16 v5, 0x10

    #v5=(PosByte);
    const/16 v3, 0xe

    #v3=(PosByte);
    const/16 v4, 0xb

    .line 588
    #v4=(PosByte);
    const/4 v1, 0x0

    .line 589
    .local v1, flags:I
    #v1=(Null);
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 590
    .local v2, version:I
    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 591
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    if-eqz p1, :cond_4

    .line 592
    if-lt v2, v5, :cond_2

    .line 593
    const/16 v1, 0x501

    .line 596
    #v1=(PosShort);
    iget-boolean v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 606
    or-int/lit8 v1, v1, 0x4

    .line 613
    :cond_0
    :goto_0
    #v1=(Integer);v3=(PosByte);
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 626
    :goto_1
    if-lt v2, v4, :cond_1

    .line 627
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 629
    :cond_1
    #v3=(Conflicted);
    return-void

    .line 608
    :cond_2
    #v1=(Null);v3=(PosByte);
    if-lt v2, v3, :cond_3

    .line 609
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 610
    :cond_3
    #v1=(Null);
    if-lt v2, v4, :cond_0

    .line 611
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 615
    :cond_4
    #v1=(Null);
    if-lt v2, v5, :cond_6

    .line 616
    const/16 v1, 0x500

    .line 623
    :cond_5
    :goto_2
    #v1=(PosShort);
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_1

    .line 618
    :cond_6
    #v1=(Null);
    if-lt v2, v3, :cond_7

    .line 619
    const/4 v1, 0x0

    goto :goto_2

    .line 620
    :cond_7
    if-lt v2, v4, :cond_5

    .line 621
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setViewActivated(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 640
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    #v3=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .line 641
    .local v1, listener:Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;
    if-eqz v1, :cond_0

    .line 642
    invoke-interface {v1}, Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;->onViewActivated()V

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 645
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    iput p1, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 649
    const-string v3, "uri"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 650
    .local v2, uriIndex:I
    #v2=(Integer);
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 651
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->updateActionBar()V

    .line 654
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->cancelEnterFullScreenRunnable()V

    .line 655
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;->postEnterFullScreenRunnableWithDelay()V

    .line 656
    return-void
.end method

.method public toggleFullScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 376
    #v1=(One);
    iget-boolean v0, p0, Lcom/android/ex/photo/PhotoViewActivity;->mFullScreen:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 377
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected updateActionBar()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 662
    #v5=(Null);
    iget-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mViewPager:Lcom/android/ex/photo/PhotoViewPager;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v6

    #v6=(Integer);
    add-int/lit8 v3, v6, 0x1

    .line 663
    .local v3, position:I
    #v3=(Integer);
    iget v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAlbumCount:I

    if-ltz v6, :cond_1

    move v1, v4

    .line 665
    .local v1, hasAlbumCount:Z
    :goto_0
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 666
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 669
    const-string v6, "_display_name"

    #v6=(Reference);
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 670
    .local v2, photoNameIndex:I
    #v2=(Integer);
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    .line 675
    .end local v2           #photoNameIndex:I
    :goto_1
    #v2=(Conflicted);v6=(Conflicted);
    iget-boolean v6, p0, Lcom/android/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    #v6=(Boolean);
    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    if-gtz v3, :cond_3

    .line 676
    :cond_0
    iput-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    .line 682
    :goto_2
    #v4=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p0, v4}, Lcom/android/ex/photo/PhotoViewActivity;->setActionBarTitles(Landroid/app/ActionBar;)V

    .line 683
    return-void

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #hasAlbumCount:Z
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(One);v5=(Null);v6=(Integer);v7=(Null);v8=(Uninit);v9=(Uninit);
    move v1, v5

    .line 663
    #v1=(Null);
    goto :goto_0

    .line 672
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #hasAlbumCount:Z
    :cond_2
    #v0=(Reference);v1=(Boolean);
    iput-object v7, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    goto :goto_1

    .line 678
    :cond_3
    #v2=(Conflicted);v6=(Boolean);
    invoke-virtual {p0}, Lcom/android/ex/photo/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #v6=(Reference);
    sget v7, Lcom/android/ex/photo/R$string;->photo_view_count:I

    #v7=(Integer);
    const/4 v8, 0x2

    #v8=(PosByte);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v8, v5

    iget v5, p0, Lcom/android/ex/photo/PhotoViewActivity;->mAlbumCount:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    goto :goto_2
.end method

.method protected updateActionItems()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method
