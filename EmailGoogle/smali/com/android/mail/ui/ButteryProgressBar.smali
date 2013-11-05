.class public Lcom/android/mail/ui/ButteryProgressBar;
.super Landroid/view/View;
.source "ButteryProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ButteryProgressBar$ExponentialInterpolator;
    }
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private final mBarColor:I

.field private final mDensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSegmentCount:I

.field private final mShadow:Landroid/graphics/drawable/GradientDrawable;

.field private final mSolidBarDetentWidth:I

.field private final mSolidBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 63
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ButteryProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v6, 0x0

    .line 67
    #v6=(Null);
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    #p0=(Reference);
    new-instance v1, Landroid/graphics/Paint;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mDensity:F

    .line 71
    sget-object v1, Lcom/android/mail/R$styleable;->ButteryProgressBar:[I

    #v1=(Reference);
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, ta:Landroid/content/res/TypedArray;
    #v0=(Reference);
    const/4 v1, 0x0

    :try_start_0
    #v1=(Null);
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference);
    const v3, 0x1060012

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mBarColor:I

    .line 75
    const/4 v1, 0x1

    #v1=(One);
    const/high16 v2, 0x4080

    iget v3, p0, Lcom/android/mail/ui/ButteryProgressBar;->mDensity:F

    mul-float/2addr v2, v3

    #v2=(Float);
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    .line 78
    const/4 v1, 0x2

    #v1=(PosByte);
    const/high16 v2, 0x4040

    iget v3, p0, Lcom/android/mail/ui/ButteryProgressBar;->mDensity:F

    mul-float/2addr v2, v3

    #v2=(Float);
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSolidBarDetentWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    new-instance v1, Landroid/animation/ValueAnimator;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 86
    iget-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v4, [F

    #v2=(Reference);
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 87
    iget-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 88
    iget-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/mail/ui/ButteryProgressBar$ExponentialInterpolator;

    #v2=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v2, v3}, Lcom/android/mail/ui/ButteryProgressBar$ExponentialInterpolator;-><init>(Lcom/android/mail/ui/ButteryProgressBar$1;)V

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/mail/ui/ButteryProgressBar$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/ui/ButteryProgressBar$1;-><init>(Lcom/android/mail/ui/ButteryProgressBar;)V

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/mail/ui/ButteryProgressBar;->mBarColor:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    #v1=(UninitRef);
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #v2=(Reference);
    new-array v3, v4, [I

    #v3=(Reference);
    iget v4, p0, Lcom/android/mail/ui/ButteryProgressBar;->mBarColor:I

    #v4=(Integer);
    const v5, 0xffffff

    #v5=(Integer);
    and-int/2addr v4, v5

    const/high16 v5, 0x2200

    or-int/2addr v4, v5

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 102
    return-void

    .line 82
    :catchall_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(PosByte);v5=(Uninit);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 86
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private start()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 144
    :cond_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .line 126
    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 130
    .local v10, val:F
    #v10=(Float);
    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getWidth()I

    move-result v11

    .line 135
    .local v11, w:I
    #v11=(Integer);
    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSegmentCount:I

    #v0=(Integer);
    add-int/lit8 v0, v0, -0x1

    shr-int v8, v11, v0

    .line 138
    .local v8, offset:I
    #v8=(Integer);
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v9=(Conflicted);
    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSegmentCount:I

    #v0=(Integer);
    if-ge v6, v0, :cond_0

    .line 139
    add-int/lit8 v0, v6, 0x1

    shr-int v0, v11, v0

    int-to-float v0, v0

    #v0=(Float);
    mul-float v7, v10, v0

    .line 140
    .local v7, l:F
    #v7=(Float);
    if-nez v6, :cond_2

    add-int v0, v11, v8

    #v0=(Integer);
    int-to-float v9, v0

    .line 141
    .local v9, r:F
    :goto_1
    #v9=(Float);
    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSolidBarDetentWidth:I

    int-to-float v0, v0

    #v0=(Float);
    add-float/2addr v0, v7

    int-to-float v1, v8

    #v1=(Float);
    sub-float v1, v0, v1

    const/4 v2, 0x0

    #v2=(Null);
    int-to-float v0, v8

    sub-float v3, v9, v0

    #v3=(Float);
    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    #v0=(Integer);
    int-to-float v4, v0

    #v4=(Float);
    iget-object v5, p0, Lcom/android/mail/ui/ButteryProgressBar;->mPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    move-object v0, p1

    #v0=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v9           #r:F
    :cond_2
    #v0=(Float);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);
    const/high16 v0, 0x4000

    #v0=(Integer);
    mul-float v9, v7, v0

    #v9=(Float);
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v9, 0x3f80

    .line 106
    #v9=(Integer);
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getWidth()I

    move-result v2

    .line 109
    .local v2, w:I
    #v2=(Integer);
    iget-object v4, p0, Lcom/android/mail/ui/ButteryProgressBar;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget v6, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    #v6=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getHeight()I

    move-result v7

    #v7=(Integer);
    iget v8, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    #v8=(Integer);
    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 111
    int-to-float v4, v2

    #v4=(Float);
    iget v5, p0, Lcom/android/mail/ui/ButteryProgressBar;->mDensity:F

    #v5=(Integer);
    div-float/2addr v4, v5

    const/high16 v5, 0x4396

    div-float v3, v4, v5

    .line 113
    .local v3, widthMultiplier:F
    #v3=(Float);
    const v4, 0x3e99999a

    #v4=(Integer);
    sub-float v5, v3, v9

    #v5=(Float);
    mul-float/2addr v4, v5

    #v4=(Float);
    add-float v0, v4, v9

    .line 114
    .local v0, durationMult:F
    #v0=(Float);
    const v4, 0x3dcccccd

    #v4=(Integer);
    sub-float v5, v3, v9

    mul-float/2addr v4, v5

    #v4=(Float);
    add-float v1, v4, v9

    .line 115
    .local v1, segmentMult:F
    #v1=(Float);
    iget-object v4, p0, Lcom/android/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    #v4=(Reference);
    const/high16 v5, 0x43fa

    #v5=(Integer);
    mul-float/2addr v5, v0

    #v5=(Float);
    float-to-int v5, v5

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    const/high16 v4, 0x40a0

    #v4=(Integer);
    mul-float/2addr v4, v1

    #v4=(Float);
    float-to-int v4, v4

    #v4=(Integer);
    iput v4, p0, Lcom/android/mail/ui/ButteryProgressBar;->mSegmentCount:I

    .line 118
    .end local v0           #durationMult:F
    .end local v1           #segmentMult:F
    .end local v2           #w:I
    .end local v3           #widthMultiplier:F
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/mail/ui/ButteryProgressBar;->start()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/ButteryProgressBar;->stop()V

    goto :goto_0
.end method
