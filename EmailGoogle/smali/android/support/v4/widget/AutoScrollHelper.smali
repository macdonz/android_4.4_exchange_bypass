.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$1;,
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    #v0=(Integer);
    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$102(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$800(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$900(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    #v0=(Float);
    return v0
.end method

.method private cancelTargetTouch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 677
    #v5=(Null);
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 678
    .local v0, eventTime:J
    #v0=(LongLo);v1=(LongHi);
    const/4 v4, 0x3

    #v4=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    move-wide v2, v0

    #v2=(LongLo);v3=(LongHi);
    move v6, v5

    #v6=(Null);
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 680
    .local v8, cancel:Landroid/view/MotionEvent;
    #v8=(Reference);
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 681
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 682
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 9
    .parameter "direction"
    .parameter "coordinate"
    .parameter "srcSize"
    .parameter "dstSize"

    .prologue
    const/4 v7, 0x0

    .line 539
    #v7=(Null);
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #v8=(Reference);
    aget v3, v8, p1

    .line 540
    .local v3, relativeEdge:F
    #v3=(Integer);
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v0, v8, p1

    .line 541
    .local v0, maximumEdge:F
    #v0=(Integer);
    invoke-direct {p0, v3, p3, v0, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v6

    .line 542
    .local v6, value:F
    #v6=(Float);
    cmpl-float v8, v6, v7

    #v8=(Byte);
    if-nez v8, :cond_0

    .line 558
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Float);v8=(Conflicted);
    return v7

    .line 547
    :cond_0
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Null);v8=(Byte);
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #v8=(Reference);
    aget v4, v8, p1

    .line 548
    .local v4, relativeVelocity:F
    #v4=(Integer);
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v8, p1

    .line 549
    .local v2, minimumVelocity:F
    #v2=(Integer);
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v1, v8, p1

    .line 550
    .local v1, maximumVelocity:F
    #v1=(Integer);
    mul-float v5, v4, p4

    .line 555
    .local v5, targetVelocity:F
    #v5=(Float);
    cmpl-float v7, v6, v7

    #v7=(Byte);
    if-lez v7, :cond_1

    .line 556
    mul-float v7, v6, v5

    #v7=(Float);
    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    goto :goto_0

    .line 558
    :cond_1
    #v7=(Byte);
    neg-float v7, v6

    #v7=(Float);
    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 663
    cmpl-float v0, p0, p2

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 668
    .end local p2
    :goto_0
    return p2

    .line 665
    .restart local p2
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 666
    goto :goto_0

    :cond_1
    move p2, p0

    .line 668
    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 653
    if-le p0, p2, :cond_0

    .line 658
    .end local p2
    :goto_0
    return p2

    .line 655
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 656
    goto :goto_0

    :cond_1
    move p2, p0

    .line 658
    goto :goto_0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .parameter "current"
    .parameter "leading"

    .prologue
    const/high16 v1, 0x3f80

    #v1=(Integer);
    const/4 v0, 0x0

    .line 624
    #v0=(Null);
    cmpl-float v2, p2, v0

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    #v0=(Integer);v2=(Integer);v3=(Conflicted);
    return v0

    .line 628
    :cond_1
    #v0=(Null);v2=(Byte);v3=(Uninit);
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    cmpg-float v2, p1, p2

    #v2=(Byte);
    if-gez v2, :cond_0

    .line 632
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 634
    div-float v0, p1, p2

    #v0=(Float);
    sub-float v0, v1, v0

    goto :goto_0

    .line 635
    :cond_2
    #v0=(Null);
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-ne v2, v3, :cond_0

    move v0, v1

    .line 637
    #v0=(Integer);
    goto :goto_0

    .line 642
    :pswitch_1
    #v0=(Null);v3=(Uninit);
    cmpg-float v1, p1, v0

    #v1=(Byte);
    if-gez v1, :cond_0

    .line 644
    neg-float v0, p2

    #v0=(Float);
    div-float v0, p1, v0

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .parameter "relativeValue"
    .parameter "size"
    .parameter "maxValue"
    .parameter "current"

    .prologue
    const/4 v5, 0x0

    .line 607
    #v5=(Null);
    mul-float v6, p1, p2

    #v6=(Float);
    invoke-static {v6, v5, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 608
    .local v0, edgeSize:F
    #v0=(Float);
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 609
    .local v3, valueLeading:F
    #v3=(Float);
    sub-float v6, p2, p4

    invoke-direct {p0, v6, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v4

    .line 610
    .local v4, valueTrailing:F
    #v4=(Float);
    sub-float v2, v4, v3

    .line 612
    .local v2, value:F
    #v2=(Float);
    cmpg-float v6, v2, v5

    #v6=(Byte);
    if-gez v6, :cond_1

    .line 613
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #v5=(Reference);
    neg-float v6, v2

    #v6=(Float);
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    #v5=(Float);
    neg-float v1, v5

    .line 620
    .local v1, interpolated:F
    :goto_0
    #v1=(Float);v5=(Conflicted);
    const/high16 v5, -0x4080

    #v5=(Integer);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    invoke-static {v1, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    .end local v1           #interpolated:F
    :cond_0
    #v1=(Conflicted);v5=(Float);
    return v5

    .line 614
    :cond_1
    #v1=(Uninit);v5=(Null);v6=(Byte);
    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    .line 615
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #v5=(Reference);
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1       #interpolated:F
    #v1=(Float);
    goto :goto_0
.end method

.method private requestStop()V
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 535
    :goto_0
    #v0=(Reference);
    return-void

    .line 533
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private shouldAnimate()Z
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 493
    .local v1, scroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 494
    .local v2, verticalDirection:I
    #v2=(Integer);
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .line 496
    .local v0, horizontalDirection:I
    #v0=(Integer);
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    :cond_0
    #v3=(Conflicted);
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    #v3=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 504
    #v4=(One);
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$1;)V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 508
    :cond_0
    #v1=(Conflicted);
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 509
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 511
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #v0=(Integer);
    if-lez v0, :cond_1

    .line 512
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #v0=(Reference);
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 519
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 520
    return-void

    .line 514
    :cond_1
    #v0=(Integer);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 456
    #v4=(Null);
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 485
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Boolean);v6=(Conflicted);v7=(Conflicted);
    return v4

    .line 460
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v6=(Uninit);v7=(Uninit);
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 461
    .local v0, action:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 485
    :cond_1
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v5, :cond_2

    :goto_2
    #v3=(Boolean);
    move v4, v3

    #v4=(Boolean);
    goto :goto_0

    .line 463
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v6=(Uninit);v7=(Uninit);
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 464
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #v5=(Float);
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    #v7=(Integer);
    int-to-float v7, v7

    #v7=(Float);
    invoke-direct {p0, v4, v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .line 469
    .local v1, xTargetVelocity:F
    #v1=(Float);
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    #v7=(Integer);
    int-to-float v7, v7

    #v7=(Float);
    invoke-direct {p0, v3, v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .line 471
    .local v2, yTargetVelocity:F
    #v2=(Float);
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #v5=(Reference);
    invoke-virtual {v5, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 475
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 481
    .end local v1           #xTargetVelocity:F
    .end local v2           #yTargetVelocity:F
    :pswitch_2
    #v1=(Uninit);v2=(Uninit);v6=(Uninit);v7=(Uninit);
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move v3, v4

    .line 485
    #v3=(Null);
    goto :goto_2

    .line 461
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method
