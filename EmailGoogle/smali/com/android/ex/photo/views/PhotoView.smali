.class public Lcom/android/ex/photo/views/PhotoView;
.super Landroid/view/View;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/ex/photo/fragments/PhotoViewFragment$HorizontallyScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/views/PhotoView$RotateRunnable;,
        Lcom/android/ex/photo/views/PhotoView$SnapRunnable;,
        Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;,
        Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;
    }
.end annotation


# static fields
.field private static sCropDimPaint:Landroid/graphics/Paint;

.field private static sCropPaint:Landroid/graphics/Paint;

.field private static sCropSize:I

.field private static sInitialized:Z

.field private static sTouchSlopSquare:I

.field private static sVideoImage:Landroid/graphics/Bitmap;

.field private static sVideoNotReadyImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAllowCrop:Z

.field private mCropRect:Landroid/graphics/Rect;

.field private mCropSize:I

.field private mDoubleTapDebounce:Z

.field private mDoubleTapOccurred:Z

.field private mDoubleTapToZoomEnabled:Z

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mExternalClickListener:Landroid/view/View$OnClickListener;

.field private mFixedHeight:I

.field private mFullScreen:Z

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mHaveLayout:Z

.field private mIsDoubleTouch:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxInitialScaleFactor:F

.field private mMaxScale:F

.field private mMinScale:F

.field private mOriginalMatrix:Landroid/graphics/Matrix;

.field private mQuickScaleEnabled:Z

.field private mRotateRunnable:Lcom/android/ex/photo/views/PhotoView$RotateRunnable;

.field private mRotation:F

.field private mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleRunnable:Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

.field private mSnapRunnable:Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mTransformsEnabled:Z

.field private mTranslateRect:Landroid/graphics/RectF;

.field private mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

.field private mValues:[F

.field private mVideoBlob:[B

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    #p0=(Reference);
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    .line 163
    const/16 v0, 0x9

    #v0=(PosByte);
    new-array v0, v0, [F

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    .line 185
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->initialize()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    #p0=(Reference);
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    .line 163
    const/16 v0, 0x9

    #v0=(PosByte);
    new-array v0, v0, [F

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    .line 190
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->initialize()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    #p0=(Reference);
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    .line 163
    const/16 v0, 0x9

    #v0=(PosByte);
    new-array v0, v0, [F

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    .line 195
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->initialize()V

    .line 196
    return-void
.end method

.method static synthetic access$100(Lcom/android/ex/photo/views/PhotoView;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/photo/views/PhotoView;->scale(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/ex/photo/views/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/ex/photo/views/PhotoView;->translate(FF)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$300(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->snap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/ex/photo/views/PhotoView;FZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/ex/photo/views/PhotoView;->rotate(FZ)V

    return-void
.end method

.method private configureBounds(Z)V
    .locals 7
    .parameter "changed"

    .prologue
    const/4 v5, 0x0

    .line 712
    #v5=(Null);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v6=(Reference);
    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mHaveLayout:Z

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 739
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);
    return-void

    .line 715
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 716
    .local v1, dwidth:I
    #v1=(Integer);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 718
    .local v0, dheight:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v4

    .line 719
    .local v4, vwidth:I
    #v4=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v3

    .line 721
    .local v3, vheight:I
    #v3=(Integer);
    if-ltz v1, :cond_2

    if-ne v4, v1, :cond_7

    :cond_2
    if-ltz v0, :cond_3

    if-ne v3, v0, :cond_7

    :cond_3
    const/4 v2, 0x1

    .line 725
    .local v2, fits:Z
    :goto_1
    #v2=(Boolean);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v5, v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 728
    if-nez p1, :cond_4

    iget v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    cmpl-float v5, v5, v6

    #v5=(Byte);
    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v5=(Reference);
    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mHaveLayout:Z

    #v5=(Boolean);
    if-eqz v5, :cond_5

    .line 729
    :cond_4
    #v6=(Reference);
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->generateMatrix()V

    .line 730
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->generateScale()V

    .line 733
    :cond_5
    #v5=(Conflicted);
    if-nez v2, :cond_6

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_8

    .line 735
    :cond_6
    #v5=(Conflicted);
    const/4 v5, 0x0

    #v5=(Null);
    iput-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .end local v2           #fits:Z
    :cond_7
    #v2=(Uninit);
    move v2, v5

    .line 721
    #v2=(Null);
    goto :goto_1

    .line 737
    .restart local v2       #fits:Z
    :cond_8
    #v2=(Boolean);v5=(Boolean);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method private generateMatrix()V
    .locals 13

    .prologue
    const/high16 v12, 0x4000

    #v12=(Integer);
    const/4 v9, 0x0

    .line 746
    #v9=(Null);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 747
    .local v1, dwidth:I
    #v1=(Integer);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 749
    .local v0, dheight:I
    #v0=(Integer);
    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v6=(Boolean);
    if-eqz v6, :cond_2

    sget v5, Lcom/android/ex/photo/views/PhotoView;->sCropSize:I

    .line 750
    .local v5, vwidth:I
    :goto_0
    #v5=(Integer);
    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v6, :cond_3

    sget v4, Lcom/android/ex/photo/views/PhotoView;->sCropSize:I

    .line 752
    .local v4, vheight:I
    :goto_1
    #v4=(Integer);
    if-ltz v1, :cond_0

    if-ne v5, v1, :cond_4

    :cond_0
    if-ltz v0, :cond_1

    if-ne v4, v0, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 755
    .local v2, fits:Z
    :goto_2
    #v2=(Boolean);
    if-eqz v2, :cond_5

    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-nez v6, :cond_5

    .line 756
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 776
    :goto_3
    #v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 777
    return-void

    .line 749
    .end local v2           #fits:Z
    .end local v4           #vheight:I
    .end local v5           #vwidth:I
    :cond_2
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Null);v10=(Uninit);v11=(Uninit);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    #v5=(Integer);
    goto :goto_0

    .line 750
    .restart local v5       #vwidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v4

    #v4=(Integer);
    goto :goto_1

    .line 752
    .restart local v4       #vheight:I
    :cond_4
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_2

    .line 759
    .restart local v2       #fits:Z
    :cond_5
    #v2=(Boolean);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    #v6=(Reference);
    int-to-float v7, v1

    #v7=(Float);
    int-to-float v8, v0

    #v8=(Float);
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 760
    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v6=(Boolean);
    if-eqz v6, :cond_6

    .line 761
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 765
    :goto_4
    #v7=(Conflicted);
    new-instance v3, Landroid/graphics/RectF;

    #v3=(UninitRef);
    div-int/lit8 v6, v5, 0x2

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    int-to-float v7, v1

    #v7=(Float);
    iget v8, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    #v8=(Integer);
    mul-float/2addr v7, v8

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    #v7=(Integer);
    int-to-float v7, v7

    #v7=(Float);
    int-to-float v8, v0

    #v8=(Float);
    iget v9, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    #v9=(Integer);
    mul-float/2addr v8, v9

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    int-to-float v9, v1

    #v9=(Float);
    iget v10, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    #v10=(Integer);
    mul-float/2addr v9, v10

    div-float/2addr v9, v12

    add-float/2addr v8, v9

    div-int/lit8 v9, v4, 0x2

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    int-to-float v10, v0

    #v10=(Float);
    iget v11, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    #v11=(Integer);
    mul-float/2addr v10, v11

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 770
    .local v3, scaledDestination:Landroid/graphics/RectF;
    #v3=(Reference);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    #v6=(Reference);
    invoke-virtual {v6, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_7

    .line 771
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    #v7=(Reference);
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #v8=(Reference);
    invoke-virtual {v6, v7, v3, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_3

    .line 763
    .end local v3           #scaledDestination:Landroid/graphics/RectF;
    :cond_6
    #v3=(Uninit);v6=(Boolean);v7=(Float);v8=(Float);v9=(Null);v10=(Uninit);v11=(Uninit);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    #v6=(Reference);
    int-to-float v7, v5

    int-to-float v8, v4

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 773
    .restart local v3       #scaledDestination:Landroid/graphics/RectF;
    :cond_7
    #v3=(Reference);v6=(Boolean);v9=(Float);v10=(Float);v11=(Integer);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    #v8=(Reference);
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #v9=(Reference);
    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_3
.end method

.method private generateScale()V
    .locals 6

    .prologue
    const/high16 v5, 0x4100

    .line 780
    #v5=(Integer);
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 781
    .local v1, dwidth:I
    #v1=(Integer);
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 783
    .local v0, dheight:I
    #v0=(Integer);
    iget-boolean v4, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->getCropSize()I

    move-result v3

    .line 784
    .local v3, vwidth:I
    :goto_0
    #v3=(Integer);
    iget-boolean v4, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->getCropSize()I

    move-result v2

    .line 786
    .local v2, vheight:I
    :goto_1
    #v2=(Integer);
    if-ge v1, v3, :cond_2

    if-ge v0, v2, :cond_2

    iget-boolean v4, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-nez v4, :cond_2

    .line 787
    const/high16 v4, 0x3f80

    #v4=(Integer);
    iput v4, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    .line 791
    :goto_2
    iget v4, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    mul-float/2addr v4, v5

    #v4=(Float);
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxScale:F

    .line 792
    return-void

    .line 783
    .end local v2           #vheight:I
    .end local v3           #vwidth:I
    :cond_0
    #v2=(Uninit);v3=(Uninit);v4=(Boolean);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v3

    #v3=(Integer);
    goto :goto_0

    .line 784
    .restart local v3       #vwidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v2

    #v2=(Integer);
    goto :goto_1

    .line 789
    .restart local v2       #vheight:I
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->getScale()F

    move-result v4

    #v4=(Float);
    iput v4, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    goto :goto_2
.end method

.method private getCropSize()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    #v0=(Integer);
    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/ex/photo/views/PhotoView;->sCropSize:I

    goto :goto_0
.end method

.method private getScale()F
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 808
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    const/4 v1, 0x0

    #v1=(Null);
    aget v0, v0, v1

    #v0=(Integer);
    return v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 982
    #v6=(One);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 984
    .local v1, context:Landroid/content/Context;
    #v1=(Reference);
    sget-boolean v4, Lcom/android/ex/photo/views/PhotoView;->sInitialized:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 985
    sput-boolean v6, Lcom/android/ex/photo/views/PhotoView;->sInitialized:Z

    .line 987
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 989
    .local v2, resources:Landroid/content/res/Resources;
    #v2=(Reference);
    sget v4, Lcom/android/ex/photo/R$dimen;->photo_crop_width:I

    #v4=(Integer);
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/android/ex/photo/views/PhotoView;->sCropSize:I

    .line 991
    new-instance v4, Landroid/graphics/Paint;

    #v4=(UninitRef);
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #v4=(Reference);
    sput-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    .line 992
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 993
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/ex/photo/R$color;->photo_crop_dim_color:I

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 994
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 996
    new-instance v4, Landroid/graphics/Paint;

    #v4=(UninitRef);
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #v4=(Reference);
    sput-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    .line 997
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 998
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/ex/photo/R$color;->photo_crop_highlight_color:I

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 999
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1000
    sget-object v4, Lcom/android/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/ex/photo/R$dimen;->photo_crop_stroke_width:I

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    #v5=(Float);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1002
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1003
    .local v0, configuration:Landroid/view/ViewConfiguration;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 1004
    .local v3, touchSlop:I
    #v3=(Integer);
    mul-int v4, v3, v3

    #v4=(Integer);
    sput v4, Lcom/android/ex/photo/views/PhotoView;->sTouchSlopSquare:I

    .line 1007
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    .end local v2           #resources:Landroid/content/res/Resources;
    .end local v3           #touchSlop:I
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    new-instance v4, Landroid/support/v4/view/GestureDetectorCompat;

    #v4=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {v4, v1, p0, v5}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 1008
    new-instance v4, Landroid/view/ScaleGestureDetector;

    #v4=(UninitRef);
    invoke-direct {v4, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 1009
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    invoke-static {v4}, Landroid/support/v4/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    iput-boolean v4, p0, Lcom/android/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    .line 1010
    new-instance v4, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

    .line 1011
    new-instance v4, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    .line 1012
    new-instance v4, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

    .line 1013
    new-instance v4, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/android/ex/photo/views/PhotoView$RotateRunnable;

    .line 1014
    return-void
.end method

.method private rotate(FZ)V
    .locals 3
    .parameter "degrees"
    .parameter "animate"

    .prologue
    .line 969
    if-eqz p2, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/android/ex/photo/views/PhotoView$RotateRunnable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->start(F)V

    .line 976
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 972
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->mRotation:F

    #v0=(Integer);
    add-float/2addr v0, p1

    #v0=(Float);
    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->mRotation:F

    .line 973
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v1

    #v1=(Integer);
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    #v1=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v2

    #v2=(Integer);
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    #v2=(Float);
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 974
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method private scale(FFF)V
    .locals 6
    .parameter "newScale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 826
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v2=(Reference);
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->mRotation:F

    #v3=(Integer);
    neg-float v3, v3

    #v3=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v4

    #v4=(Integer);
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    #v4=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    #v5=(Integer);
    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    #v5=(Float);
    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 829
    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    #v2=(Integer);
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 830
    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxScale:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 832
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->getScale()F

    move-result v0

    .line 833
    .local v0, currentScale:F
    #v0=(Float);
    div-float v1, p1, v0

    .line 836
    .local v1, factor:F
    #v1=(Float);
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v2=(Reference);
    invoke-virtual {v2, v1, v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 839
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->snap()V

    .line 842
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->mRotation:F

    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v4

    #v4=(Integer);
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    #v4=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    #v5=(Integer);
    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    #v5=(Float);
    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 844
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 845
    return-void
.end method

.method private scale(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x0

    .line 263
    #v6=(Null);
    const/4 v1, 0x0

    .line 264
    .local v1, handled:Z
    #v1=(Null);
    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    #v3=(Boolean);
    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    if-eqz v3, :cond_1

    .line 265
    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapDebounce:Z

    if-nez v3, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->getScale()F

    move-result v0

    .line 267
    .local v0, currentScale:F
    #v0=(Float);
    const/high16 v3, 0x3fc0

    #v3=(Integer);
    mul-float v2, v0, v3

    .line 270
    .local v2, targetScale:F
    #v2=(Float);
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 271
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxScale:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 273
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

    #v3=(Reference);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    #v4=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    #v5=(Float);
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->start(FFFF)Z

    .line 274
    const/4 v1, 0x1

    .line 276
    .end local v0           #currentScale:F
    .end local v2           #targetScale:F
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iput-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapDebounce:Z

    .line 278
    :cond_1
    iput-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    .line 279
    return v1
.end method

.method private snap()V
    .locals 15

    .prologue
    const/high16 v14, 0x41a0

    #v14=(Integer);
    const/high16 v13, 0x4000

    #v13=(Integer);
    const/4 v10, 0x0

    .line 911
    #v10=(Null);
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v11=(Reference);
    iget-object v12, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    #v12=(Reference);
    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 912
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v12, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 915
    iget-boolean v11, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v11=(Boolean);
    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v11=(Reference);
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #v11=(Integer);
    int-to-float v3, v11

    .line 916
    .local v3, maxLeft:F
    :goto_0
    #v3=(Float);
    iget-boolean v11, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v11=(Boolean);
    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v11=(Reference);
    iget v11, v11, Landroid/graphics/Rect;->right:I

    #v11=(Integer);
    int-to-float v4, v11

    .line 917
    .local v4, maxRight:F
    :goto_1
    #v4=(Float);
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v11=(Reference);
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 918
    .local v1, l:F
    #v1=(Integer);
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v11, Landroid/graphics/RectF;->right:F

    .line 921
    .local v6, r:F
    #v6=(Integer);
    sub-float v11, v6, v1

    #v11=(Float);
    sub-float v12, v4, v3

    #v12=(Float);
    cmpg-float v11, v11, v12

    #v11=(Byte);
    if-gez v11, :cond_3

    .line 923
    sub-float v11, v4, v3

    #v11=(Float);
    add-float v12, v6, v1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    add-float v8, v3, v11

    .line 935
    .local v8, translateX:F
    :goto_2
    #v8=(Float);
    iget-boolean v11, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v11=(Boolean);
    if-eqz v11, :cond_6

    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #v10=(Integer);
    int-to-float v5, v10

    .line 936
    .local v5, maxTop:F
    :goto_3
    #v5=(Float);
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #v10=(Integer);
    int-to-float v2, v10

    .line 937
    .local v2, maxBottom:F
    :goto_4
    #v2=(Float);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v10=(Reference);
    iget v7, v10, Landroid/graphics/RectF;->top:F

    .line 938
    .local v7, t:F
    #v7=(Integer);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 941
    .local v0, b:F
    #v0=(Integer);
    sub-float v10, v0, v7

    #v10=(Float);
    sub-float v11, v2, v5

    #v11=(Float);
    cmpg-float v10, v10, v11

    #v10=(Byte);
    if-gez v10, :cond_8

    .line 943
    sub-float v10, v2, v5

    #v10=(Float);
    add-float v11, v0, v7

    sub-float/2addr v10, v11

    div-float/2addr v10, v13

    add-float v9, v5, v10

    .line 954
    .local v9, translateY:F
    :goto_5
    #v9=(Float);
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v14

    #v10=(Byte);
    if-gtz v10, :cond_0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    #v10=(Float);
    cmpl-float v10, v10, v14

    #v10=(Byte);
    if-lez v10, :cond_b

    .line 955
    :cond_0
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

    #v10=(Reference);
    invoke-virtual {v10, v8, v9}, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->start(FF)Z

    .line 960
    :goto_6
    return-void

    .end local v0           #b:F
    .end local v1           #l:F
    .end local v2           #maxBottom:F
    .end local v3           #maxLeft:F
    .end local v4           #maxRight:F
    .end local v5           #maxTop:F
    .end local v6           #r:F
    .end local v7           #t:F
    .end local v8           #translateX:F
    .end local v9           #translateY:F
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Null);v11=(Boolean);v12=(Reference);
    move v3, v10

    .line 915
    #v3=(Null);
    goto :goto_0

    .line 916
    .restart local v3       #maxLeft:F
    :cond_2
    #v3=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v11

    #v11=(Integer);
    int-to-float v4, v11

    #v4=(Float);
    goto :goto_1

    .line 924
    .restart local v1       #l:F
    .restart local v4       #maxRight:F
    .restart local v6       #r:F
    :cond_3
    #v1=(Integer);v6=(Integer);v11=(Byte);v12=(Float);
    cmpl-float v11, v1, v3

    if-lez v11, :cond_4

    .line 926
    sub-float v8, v3, v1

    .restart local v8       #translateX:F
    #v8=(Float);
    goto :goto_2

    .line 927
    .end local v8           #translateX:F
    :cond_4
    #v8=(Uninit);
    cmpg-float v11, v6, v4

    if-gez v11, :cond_5

    .line 929
    sub-float v8, v4, v6

    .restart local v8       #translateX:F
    #v8=(Float);
    goto :goto_2

    .line 931
    .end local v8           #translateX:F
    :cond_5
    #v8=(Uninit);
    const/4 v8, 0x0

    .restart local v8       #translateX:F
    #v8=(Null);
    goto :goto_2

    :cond_6
    #v8=(Float);v11=(Boolean);
    move v5, v10

    .line 935
    #v5=(Null);
    goto :goto_3

    .line 936
    .restart local v5       #maxTop:F
    :cond_7
    #v5=(Float);v10=(Boolean);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v10

    #v10=(Integer);
    int-to-float v2, v10

    #v2=(Float);
    goto :goto_4

    .line 944
    .restart local v0       #b:F
    .restart local v2       #maxBottom:F
    .restart local v7       #t:F
    :cond_8
    #v0=(Integer);v7=(Integer);v10=(Byte);v11=(Float);
    cmpl-float v10, v7, v5

    if-lez v10, :cond_9

    .line 946
    sub-float v9, v5, v7

    .restart local v9       #translateY:F
    #v9=(Float);
    goto :goto_5

    .line 947
    .end local v9           #translateY:F
    :cond_9
    #v9=(Uninit);
    cmpg-float v10, v0, v2

    if-gez v10, :cond_a

    .line 949
    sub-float v9, v2, v0

    .restart local v9       #translateY:F
    #v9=(Float);
    goto :goto_5

    .line 951
    .end local v9           #translateY:F
    :cond_a
    #v9=(Uninit);
    const/4 v9, 0x0

    .restart local v9       #translateY:F
    #v9=(Null);
    goto :goto_5

    .line 957
    :cond_b
    #v9=(Float);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v10=(Reference);
    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 958
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_6
.end method

.method private translate(FF)Z
    .locals 12
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 858
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v10=(Reference);
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    #v11=(Reference);
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 859
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 861
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #v10=(Integer);
    int-to-float v3, v10

    .line 862
    .local v3, maxLeft:F
    :goto_0
    #v3=(Float);
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #v10=(Integer);
    int-to-float v4, v10

    .line 863
    .local v4, maxRight:F
    :goto_1
    #v4=(Float);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v10=(Reference);
    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 864
    .local v1, l:F
    #v1=(Integer);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v10, Landroid/graphics/RectF;->right:F

    .line 867
    .local v6, r:F
    #v6=(Integer);
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_2

    .line 869
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/RectF;->right:F

    #v10=(Integer);
    sub-float v10, v3, v10

    #v10=(Float);
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    #v11=(Integer);
    sub-float v11, v4, v11

    #v11=(Float);
    invoke-static {v11, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 880
    .local v8, translateX:F
    :goto_2
    #v8=(Float);v11=(Integer);
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #v10=(Integer);
    int-to-float v5, v10

    .line 881
    .local v5, maxTop:F
    :goto_3
    #v5=(Float);
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #v10=(Integer);
    int-to-float v2, v10

    .line 882
    .local v2, maxBottom:F
    :goto_4
    #v2=(Float);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v10=(Reference);
    iget v7, v10, Landroid/graphics/RectF;->top:F

    .line 883
    .local v7, t:F
    #v7=(Integer);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 887
    .local v0, b:F
    #v0=(Integer);
    iget-boolean v10, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v10=(Boolean);
    if-eqz v10, :cond_6

    .line 889
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v10=(Reference);
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    #v10=(Integer);
    sub-float v10, v5, v10

    #v10=(Float);
    iget-object v11, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v11=(Reference);
    iget v11, v11, Landroid/graphics/RectF;->top:F

    #v11=(Integer);
    sub-float v11, v2, v11

    #v11=(Float);
    invoke-static {v11, p2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 901
    .local v9, translateY:F
    :goto_5
    #v9=(Float);v11=(Integer);
    iget-object v10, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v10=(Reference);
    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 902
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 904
    cmpl-float v10, v8, p1

    #v10=(Byte);
    if-nez v10, :cond_8

    cmpl-float v10, v9, p2

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_6
    #v10=(Boolean);
    return v10

    .line 861
    .end local v0           #b:F
    .end local v1           #l:F
    .end local v2           #maxBottom:F
    .end local v3           #maxLeft:F
    .end local v4           #maxRight:F
    .end local v5           #maxTop:F
    .end local v6           #r:F
    .end local v7           #t:F
    .end local v8           #translateX:F
    .end local v9           #translateY:F
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0

    .line 862
    .restart local v3       #maxLeft:F
    :cond_1
    #v3=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v10

    #v10=(Integer);
    int-to-float v4, v10

    #v4=(Float);
    goto :goto_1

    .line 873
    .restart local v1       #l:F
    .restart local v4       #maxRight:F
    .restart local v6       #r:F
    :cond_2
    #v1=(Integer);v6=(Integer);v10=(Boolean);
    sub-float v10, v6, v1

    #v10=(Float);
    sub-float v11, v4, v3

    #v11=(Float);
    cmpg-float v10, v10, v11

    #v10=(Byte);
    if-gez v10, :cond_3

    .line 874
    sub-float v10, v4, v3

    #v10=(Float);
    add-float v11, v6, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    #v11=(Integer);
    div-float/2addr v10, v11

    add-float v8, v3, v10

    .restart local v8       #translateX:F
    #v8=(Float);
    goto :goto_2

    .line 876
    .end local v8           #translateX:F
    :cond_3
    #v8=(Uninit);v10=(Byte);v11=(Float);
    sub-float v10, v4, v6

    #v10=(Float);
    sub-float v11, v3, v1

    invoke-static {v11, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .restart local v8       #translateX:F
    #v8=(Float);
    goto :goto_2

    .line 880
    :cond_4
    #v10=(Boolean);v11=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_3

    .line 881
    .restart local v5       #maxTop:F
    :cond_5
    #v5=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v10

    #v10=(Integer);
    int-to-float v2, v10

    #v2=(Float);
    goto :goto_4

    .line 893
    .restart local v0       #b:F
    .restart local v2       #maxBottom:F
    .restart local v7       #t:F
    :cond_6
    #v0=(Integer);v7=(Integer);v10=(Boolean);
    sub-float v10, v0, v7

    #v10=(Float);
    sub-float v11, v2, v5

    #v11=(Float);
    cmpg-float v10, v10, v11

    #v10=(Byte);
    if-gez v10, :cond_7

    .line 894
    sub-float v10, v2, v5

    #v10=(Float);
    add-float v11, v0, v7

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    #v11=(Integer);
    div-float/2addr v10, v11

    add-float v9, v5, v10

    .restart local v9       #translateY:F
    #v9=(Float);
    goto :goto_5

    .line 896
    .end local v9           #translateY:F
    :cond_7
    #v9=(Uninit);v10=(Byte);v11=(Float);
    sub-float v10, v2, v0

    #v10=(Float);
    sub-float v11, v5, v7

    invoke-static {v11, p2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .restart local v9       #translateY:F
    #v9=(Float);
    goto :goto_5

    .line 904
    :cond_8
    #v10=(Byte);v11=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    goto :goto_6
.end method


# virtual methods
.method public bindPhoto(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "photoBitmap"

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, changed:Z
    #v0=(Null);
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v2=(Reference);
    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 458
    .local v1, drawableBitmap:Landroid/graphics/Bitmap;
    #v1=(Reference);
    if-ne p1, v1, :cond_0

    .line 478
    .end local v1           #drawableBitmap:Landroid/graphics/Bitmap;
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v3=(Conflicted);
    return-void

    .line 463
    .restart local v1       #drawableBitmap:Landroid/graphics/Bitmap;
    :cond_0
    #v0=(Null);v1=(Reference);v3=(Uninit);
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #v3=(Integer);
    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 468
    :goto_1
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, p0, Lcom/android/ex/photo/views/PhotoView;->mMinScale:F

    .line 469
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 472
    .end local v1           #drawableBitmap:Landroid/graphics/Bitmap;
    :cond_2
    #v1=(Conflicted);v2=(Reference);
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 473
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #v2=(UninitRef);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 476
    :cond_3
    #v3=(Conflicted);
    invoke-direct {p0, v0}, Lcom/android/ex/photo/views/PhotoView;->configureBounds(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_0

    .line 463
    .restart local v1       #drawableBitmap:Landroid/graphics/Bitmap;
    :cond_4
    #v0=(Null);v1=(Reference);v2=(Conflicted);
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    #v1=(Null);
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 434
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 435
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 436
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->stop()V

    .line 437
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

    .line 438
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->stop()V

    .line 439
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    .line 440
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->stop()V

    .line 441
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

    .line 442
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/android/ex/photo/views/PhotoView$RotateRunnable;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->stop()V

    .line 443
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/android/ex/photo/views/PhotoView$RotateRunnable;

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/ex/photo/views/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 446
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    .line 447
    return-void
.end method

.method public enableImageTransforms(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    .line 703
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->resetTransformations()V

    .line 706
    :cond_0
    return-void
.end method

.method public interceptMoveLeft(FF)Z
    .locals 7
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 364
    #v3=(Null);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 390
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v5=(Byte);v6=(Conflicted);
    return v3

    .line 367
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v5=(Boolean);v6=(Uninit);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->access$000(Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    move v3, v4

    .line 369
    #v3=(One);
    goto :goto_0

    .line 371
    :cond_2
    #v3=(Null);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 372
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 373
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 375
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    #v5=(Integer);
    int-to-float v2, v5

    .line 376
    .local v2, viewWidth:F
    #v2=(Float);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    #v5=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    aget v1, v5, v6

    .line 377
    .local v1, transX:F
    #v1=(Integer);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    #v5=(Integer);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v6=(Reference);
    iget v6, v6, Landroid/graphics/RectF;->left:F

    #v6=(Integer);
    sub-float v0, v5, v6

    .line 379
    .local v0, drawWidth:F
    #v0=(Float);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    cmpg-float v5, v0, v2

    #v5=(Byte);
    if-lez v5, :cond_0

    .line 382
    const/4 v5, 0x0

    #v5=(Null);
    cmpl-float v5, v1, v5

    #v5=(Byte);
    if-eqz v5, :cond_0

    .line 385
    add-float v3, v0, v1

    #v3=(Float);
    cmpl-float v3, v2, v3

    #v3=(Byte);
    if-ltz v3, :cond_3

    move v3, v4

    .line 387
    #v3=(One);
    goto :goto_0

    :cond_3
    #v3=(Byte);
    move v3, v4

    .line 390
    #v3=(One);
    goto :goto_0
.end method

.method public interceptMoveRight(FF)Z
    .locals 7
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 397
    #v3=(Null);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 423
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v5=(Byte);v6=(Conflicted);
    return v3

    .line 400
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v5=(Boolean);v6=(Uninit);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->access$000(Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    move v3, v4

    .line 402
    #v3=(One);
    goto :goto_0

    .line 404
    :cond_2
    #v3=(Null);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 405
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 406
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    #v5=(Integer);
    int-to-float v2, v5

    .line 409
    .local v2, viewWidth:F
    #v2=(Float);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mValues:[F

    #v5=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    aget v1, v5, v6

    .line 410
    .local v1, transX:F
    #v1=(Integer);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    #v5=(Integer);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v6=(Reference);
    iget v6, v6, Landroid/graphics/RectF;->left:F

    #v6=(Integer);
    sub-float v0, v5, v6

    .line 412
    .local v0, drawWidth:F
    #v0=(Float);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    cmpg-float v5, v0, v2

    #v5=(Byte);
    if-lez v5, :cond_0

    .line 415
    const/4 v5, 0x0

    #v5=(Null);
    cmpl-float v5, v1, v5

    #v5=(Byte);
    if-nez v5, :cond_3

    move v3, v4

    .line 417
    #v3=(One);
    goto :goto_0

    .line 418
    :cond_3
    #v3=(Null);
    add-float v5, v0, v1

    #v5=(Float);
    cmpl-float v5, v2, v5

    #v5=(Byte);
    if-gez v5, :cond_0

    move v3, v4

    .line 423
    #v3=(One);
    goto :goto_0
.end method

.method public isPhotoBound()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v0=(Reference);
    if-eqz v0, :cond_0

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

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 223
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    .line 224
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/android/ex/photo/views/PhotoView;->scale(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    .local v0, action:I
    #v0=(Integer);
    const/4 v4, 0x0

    .line 235
    .local v4, handled:Z
    #v4=(Null);
    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Conflicted);v6=(Conflicted);
    return v4

    .line 237
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #v5=(Float);
    iput v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDownFocusX:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDownFocusY:F

    goto :goto_0

    .line 243
    :pswitch_1
    #v5=(Uninit);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/ex/photo/views/PhotoView;->scale(Landroid/view/MotionEvent;)Z

    move-result v4

    #v4=(Boolean);
    goto :goto_0

    .line 248
    :pswitch_2
    #v4=(Null);v5=(Uninit);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #v5=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDownFocusX:F

    #v6=(Integer);
    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 250
    .local v1, deltaX:I
    #v1=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->mDownFocusY:F

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 251
    .local v2, deltaY:I
    #v2=(Integer);
    mul-int v5, v1, v1

    #v5=(Integer);
    mul-int v6, v2, v2

    add-int v3, v5, v6

    .line 252
    .local v3, distance:I
    #v3=(Integer);
    sget v5, Lcom/android/ex/photo/views/PhotoView;->sTouchSlopSquare:I

    if-le v3, v5, :cond_0

    .line 253
    const/4 v5, 0x0

    #v5=(Null);
    iput-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    goto :goto_0

    .line 235
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->stop()V

    .line 316
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/android/ex/photo/views/PhotoView$SnapRunnable;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->stop()V

    .line 318
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 606
    #v1=(Null);
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 609
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v0=(Reference);
    if-eqz v0, :cond_4

    .line 610
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 611
    .local v9, saveCount:I
    #v9=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 613
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 620
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mVideoBlob:[B

    if-eqz v0, :cond_1

    .line 621
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mVideoReady:Z

    #v0=(Boolean);
    if-eqz v0, :cond_5

    sget-object v10, Lcom/android/ex/photo/views/PhotoView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 622
    .local v10, videoImage:Landroid/graphics/Bitmap;
    :goto_0
    #v10=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    .line 623
    .local v6, drawLeft:I
    #v6=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v7, v0, 0x2

    .line 624
    .local v7, drawTop:I
    #v7=(Integer);
    int-to-float v0, v6

    #v0=(Float);
    int-to-float v2, v7

    #v2=(Float);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p1, v10, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 628
    .end local v6           #drawLeft:I
    .end local v7           #drawTop:I
    .end local v10           #videoImage:Landroid/graphics/Bitmap;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    #v0=(Reference);
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 629
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 633
    :cond_2
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v8

    .line 635
    .local v8, previousSaveCount:I
    #v8=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    #v0=(Integer);
    int-to-float v3, v0

    #v3=(Float);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    #v4=(Float);
    sget-object v5, Lcom/android/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    move-object v0, p1

    #v0=(Reference);
    move v2, v1

    #v2=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 637
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 639
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 644
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 645
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 648
    .end local v8           #previousSaveCount:I
    .end local v9           #saveCount:I
    :cond_4
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 621
    .restart local v9       #saveCount:I
    :cond_5
    #v0=(Boolean);v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Integer);v10=(Uninit);
    sget-object v10, Lcom/android/ex/photo/views/PhotoView;->sVideoNotReadyImage:Landroid/graphics/Bitmap;

    #v10=(Reference);
    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    #v0=(Reference);
    invoke-virtual {v0, p3, p4}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->start(FF)Z

    .line 326
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 652
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 653
    const/4 v6, 0x1

    #v6=(One);
    iput-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mHaveLayout:Z

    .line 654
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    .line 655
    .local v5, layoutWidth:I
    #v5=(Integer);
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v4

    .line 657
    .local v4, layoutHeight:I
    #v4=(Integer);
    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView;->mAllowCrop:Z

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 658
    sget v6, Lcom/android/ex/photo/views/PhotoView;->sCropSize:I

    #v6=(Integer);
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    #v7=(Integer);
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    .line 659
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 660
    .local v1, cropLeft:I
    #v1=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    sub-int v6, v4, v6

    div-int/lit8 v3, v6, 0x2

    .line 661
    .local v3, cropTop:I
    #v3=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    add-int v2, v1, v6

    .line 662
    .local v2, cropRight:I
    #v2=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->mCropSize:I

    add-int v0, v3, v6

    .line 666
    .local v0, cropBottom:I
    #v0=(Integer);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    #v6=(Reference);
    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 668
    .end local v0           #cropBottom:I
    .end local v1           #cropLeft:I
    .end local v2           #cropRight:I
    .end local v3           #cropTop:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-direct {p0, p1}, Lcom/android/ex/photo/views/PhotoView;->configureBounds(Z)V

    .line 669
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 298
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 673
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->mFixedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 674
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->mFixedHeight:I

    const/high16 v1, -0x8000

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 676
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/views/PhotoView;->setMeasuredDimension(II)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    #v1=(Byte);
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 331
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 332
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    .line 333
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->getScale()F

    move-result v0

    .line 334
    .local v0, currentScale:F
    #v0=(Float);
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    #v2=(Float);
    mul-float v1, v0, v2

    .line 335
    .local v1, newScale:F
    #v1=(Float);
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    #v3=(Float);
    invoke-direct {p0, v1, v2, v3}, Lcom/android/ex/photo/views/PhotoView;->scale(FFF)V

    .line 337
    .end local v0           #currentScale:F
    .end local v1           #newScale:F
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 342
    #v1=(One);
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->stop()V

    .line 344
    iput-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    .line 346
    :cond_0
    #v0=(Conflicted);
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mDoubleTapDebounce:Z

    .line 353
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->resetTransformations()V

    .line 355
    :cond_0
    #v0=(Boolean);
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 307
    neg-float v0, p3

    #v0=(Float);
    neg-float v1, p4

    #v1=(Float);
    invoke-direct {p0, v0, v1}, Lcom/android/ex/photo/views/PhotoView;->translate(FF)Z

    .line 309
    :cond_0
    #v1=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 302
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    #v0=(Reference);
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 287
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    .line 288
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 293
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 200
    #v2=(One);
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return v2

    .line 205
    :cond_1
    #v0=(Uninit);v1=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, action:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;

    invoke-static {v1}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->access$000(Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->snap()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetTransformations()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 588
    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 1
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->mFullScreen:Z

    #v0=(Boolean);
    if-eq p1, v0, :cond_0

    .line 525
    iput-boolean p1, p0, Lcom/android/ex/photo/views/PhotoView;->mFullScreen:Z

    .line 526
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->requestLayout()V

    .line 527
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 529
    :cond_0
    return-void
.end method

.method public setMaxInitialScale(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1362
    iput p1, p0, Lcom/android/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    .line 1363
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 360
    return-void
.end method
