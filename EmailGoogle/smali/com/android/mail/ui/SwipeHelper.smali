.class public Lcom/android/mail/ui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field public static ALPHA_TEXT_FADE_START:F

.field private static DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private static MAX_DISMISS_VELOCITY:I

.field private static MAX_ESCAPE_ANIMATION_DURATION:I

.field private static MIN_SWIPE:F

.field private static SNAP_ANIM_LEN:I

.field private static SWIPE_ESCAPE_VELOCITY:I

.field private static sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private final mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Lcom/android/mail/ui/SwipeableItemView;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPosX:F

.field private mInitialTouchPosY:F

.field private mLastY:F

.field private mPagingTouchSlop:F

.field private mPrevView:Lcom/android/mail/ui/LeaveBehindItem;

.field private final mSwipeDirection:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #v0=(UninitRef);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/SwipeHelper;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 52
    const/4 v0, -0x1

    #v0=(Byte);
    sput v0, Lcom/android/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 59
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    .line 61
    const v0, 0x3ecccccd

    #v0=(Integer);
    sput v0, Lcom/android/mail/ui/SwipeHelper;->ALPHA_TEXT_FADE_START:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mail/ui/SwipeHelper$Callback;FF)V
    .locals 3
    .parameter "context"
    .parameter "swipeDirection"
    .parameter "callback"
    .parameter "densityScale"
    .parameter "pagingTouchSlop"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    .line 87
    iput p2, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    .line 88
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 89
    iput p4, p0, Lcom/android/mail/ui/SwipeHelper;->mDensityScale:F

    .line 90
    iput p5, p0, Lcom/android/mail/ui/SwipeHelper;->mPagingTouchSlop:F

    .line 91
    sget v1, Lcom/android/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 94
    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 95
    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 96
    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 97
    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 98
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    #v1=(Float);
    sput v1, Lcom/android/mail/ui/SwipeHelper;->MIN_SWIPE:F

    .line 100
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    #v0=(Conflicted);v1=(Integer);
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/SwipeHelper;)Lcom/android/mail/ui/SwipeableItemView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/ui/SwipeHelper;)Lcom/android/mail/ui/SwipeHelper$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mail/ui/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mail/ui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    #v0=(Float);
    return v0
.end method

.method private createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;
    .locals 3
    .parameter "v"
    .parameter "newPos"
    .parameter "duration"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 123
    .local v0, anim:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/ui/SwipeHelper;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    int-to-long v1, p3

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .parameter "v"
    .parameter "newPos"

    .prologue
    .line 116
    iget v1, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    #v1=(Integer);
    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [F

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    .local v0, anim:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    return-object v0

    .line 116
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);
    const-string v1, "translationY"

    #v1=(Reference);
    goto :goto_0
.end method

.method private static determineDuration(Landroid/view/View;FF)I
    .locals 3
    .parameter "animView"
    .parameter "newPos"
    .parameter "velocity"

    .prologue
    .line 294
    sget v0, Lcom/android/mail/ui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 295
    .local v0, duration:I
    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    cmpl-float v1, p2, v1

    #v1=(Byte);
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    #v1=(Float);
    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a

    #v2=(Integer);
    mul-float/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    #v2=(Float);
    div-float/2addr v1, v2

    float-to-int v1, v1

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 303
    :goto_0
    #v2=(Conflicted);
    return v0

    .line 301
    :cond_0
    #v1=(Byte);v2=(Uninit);
    sget v0, Lcom/android/mail/ui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_0
.end method

.method private determinePos(Landroid/view/View;F)F
    .locals 3
    .parameter "animView"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 308
    #v2=(Null);
    cmpg-float v1, p2, v2

    #v1=(Byte);
    if-ltz v1, :cond_1

    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    #v1=(Float);
    cmpg-float v1, v1, v2

    #v1=(Byte);
    if-ltz v1, :cond_1

    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    #v1=(Float);
    cmpl-float v1, v1, v2

    #v1=(Byte);
    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-ne v1, v2, :cond_2

    .line 311
    :cond_1
    #v2=(Boolean);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    #v1=(Float);
    neg-float v0, v1

    .line 315
    .local v0, newPos:F
    :goto_0
    #v0=(Float);v1=(Integer);
    return v0

    .line 313
    .end local v0           #newPos:F
    :cond_2
    #v0=(Uninit);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    .restart local v0       #newPos:F
    #v0=(Float);
    goto :goto_0
.end method

.method private dismissChild(Lcom/android/mail/ui/SwipeableItemView;F)V
    .locals 6
    .parameter "view"
    .parameter "velocity"

    .prologue
    .line 267
    iget-object v5, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, animView:Landroid/view/View;
    #v1=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/android/mail/ui/SwipeableItemView;)Z

    move-result v2

    .line 269
    .local v2, canAnimViewBeDismissed:Z
    #v2=(Boolean);
    invoke-direct {p0, v1, p2}, Lcom/android/mail/ui/SwipeHelper;->determinePos(Landroid/view/View;F)F

    move-result v4

    .line 270
    .local v4, newPos:F
    #v4=(Float);
    invoke-static {v1, v4, p2}, Lcom/android/mail/ui/SwipeHelper;->determineDuration(Landroid/view/View;FF)I

    move-result v3

    .line 272
    .local v3, duration:I
    #v3=(Integer);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->enableHardwareLayer(Landroid/view/View;)V

    .line 273
    invoke-direct {p0, v1, v4, v3}, Lcom/android/mail/ui/SwipeHelper;->createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 274
    .local v0, anim:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    new-instance v5, Lcom/android/mail/ui/SwipeHelper$1;

    #v5=(UninitRef);
    invoke-direct {v5, p0, v1}, Lcom/android/mail/ui/SwipeHelper$1;-><init>(Lcom/android/mail/ui/SwipeHelper;Landroid/view/View;)V

    #v5=(Reference);
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    new-instance v5, Lcom/android/mail/ui/SwipeHelper$2;

    #v5=(UninitRef);
    invoke-direct {v5, p0, v2, v1}, Lcom/android/mail/ui/SwipeHelper$2;-><init>(Lcom/android/mail/ui/SwipeHelper;ZLandroid/view/View;)V

    #v5=(Reference);
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 291
    return-void
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 7
    .parameter "view"

    .prologue
    const/high16 v6, 0x3f80

    .line 147
    #v6=(Integer);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .line 148
    .local v4, viewSize:F
    #v4=(Float);
    const v5, 0x3f333333

    #v5=(Integer);
    mul-float v0, v5, v4

    .line 149
    .local v0, fadeSize:F
    #v0=(Float);
    const/high16 v3, 0x3f80

    .line 150
    .local v3, result:F
    #v3=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 151
    .local v2, pos:F
    #v2=(Float);
    sget v5, Lcom/android/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v4

    #v5=(Float);
    cmpl-float v5, v2, v5

    #v5=(Byte);
    if-ltz v5, :cond_1

    .line 152
    sget v5, Lcom/android/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    #v5=(Integer);
    mul-float/2addr v5, v4

    #v5=(Float);
    sub-float v5, v2, v5

    div-float/2addr v5, v0

    sub-float v3, v6, v5

    .line 156
    :cond_0
    :goto_0
    const/high16 v1, 0x3f00

    .line 157
    .local v1, minAlpha:F
    #v1=(Integer);
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    return v5

    .line 153
    .end local v1           #minAlpha:F
    :cond_1
    #v1=(Uninit);v5=(Byte);
    sget v5, Lcom/android/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    #v5=(Integer);
    sub-float v5, v6, v5

    #v5=(Float);
    mul-float/2addr v5, v4

    cmpg-float v5, v2, v5

    #v5=(Byte);
    if-gez v5, :cond_0

    .line 154
    sget v5, Lcom/android/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    #v5=(Integer);
    mul-float/2addr v5, v4

    #v5=(Float);
    add-float/2addr v5, v2

    div-float/2addr v5, v0

    add-float v3, v6, v5

    #v3=(Float);
    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .parameter "vt"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    #v0=(Integer);
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    #v0=(Float);
    return v0

    :cond_0
    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    #v0=(Float);
    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    iget v0, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    #v0=(Integer);
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    #v0=(Float);
    return v0

    :cond_0
    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    #v0=(Float);
    goto :goto_0
.end method

.method private getTextAlphaForOffset(Landroid/view/View;)F
    .locals 7
    .parameter "view"

    .prologue
    const/high16 v6, 0x3f80

    #v6=(Integer);
    const/4 v5, 0x0

    .line 161
    #v5=(Null);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 162
    .local v3, viewSize:F
    #v3=(Float);
    sget v4, Lcom/android/mail/ui/SwipeHelper;->ALPHA_TEXT_FADE_START:F

    #v4=(Integer);
    mul-float v0, v4, v3

    .line 163
    .local v0, fadeSize:F
    #v0=(Float);
    const/high16 v2, 0x3f80

    .line 164
    .local v2, result:F
    #v2=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 165
    .local v1, pos:F
    #v1=(Float);
    cmpl-float v4, v1, v5

    #v4=(Byte);
    if-ltz v4, :cond_1

    .line 166
    div-float v4, v1, v0

    #v4=(Float);
    sub-float v2, v6, v4

    .line 170
    :cond_0
    :goto_0
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 167
    :cond_1
    #v4=(Byte);
    cmpg-float v4, v1, v5

    if-gez v4, :cond_0

    .line 168
    div-float v4, v1, v0

    #v4=(Float);
    add-float v2, v6, v4

    #v2=(Float);
    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .parameter "vt"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    #v0=(Integer);
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    #v0=(Float);
    return v0

    :cond_0
    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    #v0=(Float);
    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    #v3=(Integer);
    int-to-float v3, v3

    #v3=(Float);
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    #v4=(Integer);
    int-to-float v4, v4

    #v4=(Float);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/mail/ui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 178
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .parameter "view"
    .parameter "childBounds"

    .prologue
    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    .line 188
    .restart local p0
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 189
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #v0=(Integer);
    float-to-double v0, v0

    #v0=(DoubleLo);v1=(DoubleHi);
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    #v0=(Integer);
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #v1=(Integer);
    float-to-double v1, v1

    #v1=(DoubleLo);v2=(DoubleHi);
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    #v1=(Integer);
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #v2=(Integer);
    float-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    #v2=(Integer);
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    #v3=(Integer);
    float-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 200
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "translate"

    .prologue
    .line 134
    iget v0, p0, Lcom/android/mail/ui/SwipeHelper;->mSwipeDirection:I

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x0

    .line 203
    #v8=(Null);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 204
    .local v0, action:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    iget-boolean v8, p0, Lcom/android/mail/ui/SwipeHelper;->mDragging:Z

    :goto_1
    #v8=(Boolean);
    return v8

    .line 206
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Null);v9=(Null);v10=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    #v9=(Float);
    iput v9, p0, Lcom/android/mail/ui/SwipeHelper;->mLastY:F

    .line 207
    iput-boolean v8, p0, Lcom/android/mail/ui/SwipeHelper;->mDragging:Z

    .line 208
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    #v8=(Reference);
    invoke-interface {v8, p1}, Lcom/android/mail/ui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 209
    .local v7, view:Landroid/view/View;
    #v7=(Reference);
    instance-of v8, v7, Lcom/android/mail/ui/SwipeableItemView;

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 210
    check-cast v7, Lcom/android/mail/ui/SwipeableItemView;

    .end local v7           #view:Landroid/view/View;
    iput-object v7, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    .line 212
    :cond_0
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 213
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    if-eqz v8, :cond_1

    .line 214
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    invoke-interface {v8}, Lcom/android/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 215
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    #v9=(Reference);
    invoke-interface {v8, v9}, Lcom/android/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/android/mail/ui/SwipeableItemView;)Z

    move-result v8

    #v8=(Boolean);
    iput-boolean v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 216
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v8=(Reference);
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    #v8=(Float);
    iput v8, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosY:F

    .line 220
    :cond_1
    #v8=(Conflicted);v9=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    #v8=(Reference);
    invoke-interface {v8}, Lcom/android/mail/ui/SwipeHelper$Callback;->cancelDismissCounter()V

    goto :goto_0

    .line 223
    :pswitch_1
    #v7=(Uninit);v8=(Null);v9=(Null);
    iget-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    #v9=(Reference);
    if-eqz v9, :cond_3

    .line 225
    iget v9, p0, Lcom/android/mail/ui/SwipeHelper;->mLastY:F

    #v9=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    cmpl-float v9, v9, v10

    #v9=(Byte);
    if-ltz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/mail/ui/SwipeHelper;->mDragging:Z

    #v9=(Boolean);
    if-nez v9, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 227
    .local v2, currY:F
    #v2=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 228
    .local v1, currX:F
    #v1=(Float);
    iget v9, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosY:F

    #v9=(Integer);
    sub-float v9, v2, v9

    #v9=(Float);
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 229
    .local v5, deltaY:F
    #v5=(Float);
    iget v9, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    #v9=(Integer);
    sub-float v9, v1, v9

    #v9=(Float);
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 230
    .local v4, deltaX:F
    #v4=(Float);
    iget-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    #v9=(Reference);
    invoke-interface {v9}, Lcom/android/mail/ui/SwipeableItemView;->getMinAllowScrollDistance()F

    move-result v9

    #v9=(Float);
    cmpl-float v9, v5, v9

    #v9=(Byte);
    if-lez v9, :cond_2

    const v9, 0x3f99999a

    #v9=(Integer);
    mul-float/2addr v9, v4

    #v9=(Float);
    cmpl-float v9, v5, v9

    #v9=(Byte);
    if-lez v9, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    #v9=(Float);
    iput v9, p0, Lcom/android/mail/ui/SwipeHelper;->mLastY:F

    .line 233
    iget-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    #v9=(Reference);
    invoke-interface {v9}, Lcom/android/mail/ui/SwipeHelper$Callback;->onScroll()V

    goto/16 :goto_1

    .line 237
    .end local v1           #currX:F
    .end local v2           #currY:F
    .end local v4           #deltaX:F
    .end local v5           #deltaY:F
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Byte);
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v8=(Reference);
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 239
    .local v6, pos:F
    #v6=(Float);
    iget v8, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    #v8=(Integer);
    sub-float v3, v6, v8

    .line 240
    .local v3, delta:F
    #v3=(Float);
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    #v8=(Float);
    iget v9, p0, Lcom/android/mail/ui/SwipeHelper;->mPagingTouchSlop:F

    #v9=(Integer);
    cmpl-float v8, v8, v9

    #v8=(Byte);
    if-lez v8, :cond_3

    .line 241
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    #v9=(Reference);
    invoke-interface {v9}, Lcom/android/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/mail/ui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 242
    iget-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    invoke-interface {v8}, Lcom/android/mail/ui/SwipeHelper$Callback;->getLastSwipedItem()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mail/ui/SwipeHelper;->mPrevView:Lcom/android/mail/ui/LeaveBehindItem;

    .line 243
    const/4 v8, 0x1

    #v8=(One);
    iput-boolean v8, p0, Lcom/android/mail/ui/SwipeHelper;->mDragging:Z

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    #v8=(Float);
    iget-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v9

    #v9=(Float);
    sub-float/2addr v8, v9

    iput v8, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosY:F

    .line 248
    .end local v3           #delta:F
    .end local v6           #pos:F
    :cond_3
    #v3=(Conflicted);v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/mail/ui/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 252
    :pswitch_2
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Null);v9=(Null);v10=(Uninit);
    iput-boolean v8, p0, Lcom/android/mail/ui/SwipeHelper;->mDragging:Z

    .line 253
    iput-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    .line 254
    iput-object v9, p0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 255
    const/high16 v8, -0x4080

    #v8=(Integer);
    iput v8, p0, Lcom/android/mail/ui/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 353
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/mail/ui/SwipeHelper;->mDragging:Z

    #v0=(Boolean);
    move/from16 v16, v0

    #v16=(Boolean);
    if-nez v16, :cond_0

    .line 354
    const/16 v16, 0x0

    .line 440
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return v16

    .line 356
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 358
    .local v2, action:I
    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 440
    :cond_1
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    const/16 v16, 0x1

    #v16=(One);
    goto :goto_0

    .line 361
    :pswitch_0
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Reference);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    #v16=(Float);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    sub-float v6, v16, v17

    .line 364
    .local v6, deltaX:F
    #v6=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    #v0=(Integer);
    move/from16 v16, v0

    #v16=(Integer);
    const/high16 v17, 0x4260

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/ui/SwipeHelper;->mDensityScale:F

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    mul-float v17, v17, v18

    #v17=(Float);
    cmpg-float v16, v16, v17

    #v16=(Byte);
    if-gtz v16, :cond_2

    .line 365
    const/16 v16, 0x1

    #v16=(One);
    goto :goto_0

    .line 370
    :cond_2
    #v16=(Byte);
    sget v11, Lcom/android/mail/ui/SwipeHelper;->MIN_SWIPE:F

    .line 371
    .local v11, minDistance:F
    #v11=(Integer);
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    #v16=(Float);
    cmpg-float v16, v16, v11

    #v16=(Byte);
    if-gez v16, :cond_3

    .line 374
    const/16 v16, 0x1

    #v16=(One);
    goto :goto_0

    .line 378
    :cond_3
    #v16=(Byte);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-interface/range {v16 .. v17}, Lcom/android/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/android/mail/ui/SwipeableItemView;)Z

    move-result v16

    #v16=(Boolean);
    if-nez v16, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v13

    .line 380
    .local v13, size:F
    #v13=(Float);
    const v16, 0x3e19999a

    #v16=(Integer);
    mul-float v9, v16, v13

    .line 381
    .local v9, maxScrollDistance:F
    #v9=(Float);
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    #v16=(Float);
    cmpl-float v16, v16, v13

    #v16=(Byte);
    if-ltz v16, :cond_7

    .line 382
    const/16 v16, 0x0

    #v16=(Null);
    cmpl-float v16, v6, v16

    #v16=(Byte);
    if-lez v16, :cond_6

    move v6, v9

    .line 388
    .end local v9           #maxScrollDistance:F
    .end local v13           #size:F
    :cond_4
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v9=(Conflicted);v13=(Conflicted);v16=(Float);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-direct {v0, v1, v6}, Lcom/android/mail/ui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    #v0=(Boolean);
    move/from16 v16, v0

    #v16=(Boolean);
    if-eqz v16, :cond_5

    .line 390
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v17

    #v17=(Float);
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setAlpha(F)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mPrevView:Lcom/android/mail/ui/LeaveBehindItem;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mPrevView:Lcom/android/mail/ui/LeaveBehindItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->getTextAlphaForOffset(Landroid/view/View;)F

    move-result v17

    #v17=(Float);
    invoke-virtual/range {v16 .. v17}, Lcom/android/mail/ui/LeaveBehindItem;->setTextAlpha(F)V

    .line 397
    :cond_5
    #v0=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v16, v0

    #v16=(Reference);
    invoke-interface/range {v16 .. v16}, Lcom/android/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/mail/ui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto/16 :goto_1

    .line 382
    .restart local v9       #maxScrollDistance:F
    .restart local v13       #size:F
    :cond_6
    #v9=(Float);v13=(Float);v16=(Byte);v17=(Reference);v18=(Integer);v19=(Uninit);
    neg-float v6, v9

    goto :goto_2

    .line 384
    :cond_7
    div-float v16, v6, v13

    #v16=(Float);
    move/from16 v0, v16

    #v0=(Float);
    float-to-double v0, v0

    #v0=(DoubleLo);v1=(DoubleHi);
    move-wide/from16 v16, v0

    #v16=(DoubleLo);v17=(DoubleHi);
    const-wide v18, 0x3ff921fb54442d18L

    #v18=(LongLo);v19=(LongHi);
    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    mul-float v6, v9, v16

    goto :goto_2

    .line 402
    .end local v6           #deltaX:F
    .end local v9           #maxScrollDistance:F
    .end local v11           #minDistance:F
    .end local v13           #size:F
    :pswitch_1
    #v0=(Reference);v1=(Reference);v6=(Uninit);v9=(Uninit);v11=(Uninit);v13=(Uninit);v16=(Reference);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 403
    sget v16, Lcom/android/mail/ui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    #v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/ui/SwipeHelper;->mDensityScale:F

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    mul-float v10, v16, v17

    .line 404
    .local v10, maxVelocity:F
    #v10=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    #v16=(Reference);
    const/16 v17, 0x3e8

    #v17=(PosShort);
    move-object/from16 v0, v16

    move/from16 v1, v17

    #v1=(PosShort);
    invoke-virtual {v0, v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 405
    sget v16, Lcom/android/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    #v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/ui/SwipeHelper;->mDensityScale:F

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    mul-float v8, v16, v17

    .line 406
    .local v8, escapeVelocity:F
    #v8=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v15

    .line 407
    .local v15, velocity:F
    #v15=(Float);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v12

    .line 412
    .local v12, perpendicularVelocity:F
    #v12=(Float);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTranslationX()F

    move-result v16

    #v16=(Float);
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 413
    .local v14, translation:F
    #v14=(Float);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    .line 415
    .local v5, currAnimViewSize:F
    #v5=(Float);
    float-to-double v0, v14

    #v0=(DoubleLo);v1=(DoubleHi);
    move-wide/from16 v16, v0

    #v16=(DoubleLo);v17=(DoubleHi);
    const-wide v18, 0x3fd999999999999aL

    #v18=(LongLo);v19=(LongHi);
    float-to-double v0, v5

    move-wide/from16 v20, v0

    #v20=(DoubleLo);v21=(DoubleHi);
    mul-double v18, v18, v20

    #v18=(DoubleLo);v19=(DoubleHi);
    cmpl-double v16, v16, v18

    #v16=(Byte);
    if-lez v16, :cond_9

    const/4 v3, 0x1

    .line 419
    .local v3, childSwipedFarEnough:Z
    :goto_3
    #v3=(Boolean);
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    #v16=(Float);
    cmpl-float v16, v16, v8

    #v16=(Byte);
    if-lez v16, :cond_c

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    #v16=(Float);
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    #v17=(Float);
    cmpl-float v16, v16, v17

    #v16=(Byte);
    if-lez v16, :cond_c

    const/16 v16, 0x0

    #v16=(Null);
    cmpl-float v16, v15, v16

    #v16=(Byte);
    if-lez v16, :cond_a

    const/16 v16, 0x1

    :goto_4
    #v16=(Boolean);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationX()F

    move-result v17

    #v17=(Float);
    const/16 v18, 0x0

    #v18=(Null);
    cmpl-float v17, v17, v18

    #v17=(Byte);
    if-lez v17, :cond_b

    const/16 v17, 0x1

    :goto_5
    #v17=(Boolean);
    move/from16 v0, v16

    #v0=(Boolean);
    move/from16 v1, v17

    #v1=(Boolean);
    if-ne v0, v1, :cond_c

    float-to-double v0, v14

    #v0=(DoubleLo);v1=(DoubleHi);
    move-wide/from16 v16, v0

    #v16=(DoubleLo);v17=(DoubleHi);
    const-wide v18, 0x3fa999999999999aL

    #v18=(LongLo);v19=(LongHi);
    float-to-double v0, v5

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    #v18=(DoubleLo);v19=(DoubleHi);
    cmpl-double v16, v16, v18

    #v16=(Byte);
    if-lez v16, :cond_c

    const/4 v4, 0x1

    .line 429
    .local v4, childSwipedFastEnough:Z
    :goto_6
    #v0=(Conflicted);v1=(Conflicted);v4=(Boolean);v17=(Conflicted);v18=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-interface/range {v16 .. v17}, Lcom/android/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/android/mail/ui/SwipeableItemView;)Z

    move-result v16

    #v16=(Boolean);
    if-eqz v16, :cond_d

    if-nez v4, :cond_8

    if-eqz v3, :cond_d

    :cond_8
    const/4 v7, 0x1

    .line 432
    .local v7, dismissChild:Z
    :goto_7
    #v7=(Boolean);
    if-eqz v7, :cond_f

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v16, v0

    #v16=(Reference);
    if-eqz v4, :cond_e

    .end local v15           #velocity:F
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-direct {v0, v1, v15}, Lcom/android/mail/ui/SwipeHelper;->dismissChild(Lcom/android/mail/ui/SwipeableItemView;F)V

    goto/16 :goto_1

    .line 415
    .end local v3           #childSwipedFarEnough:Z
    .end local v4           #childSwipedFastEnough:Z
    .end local v7           #dismissChild:Z
    .restart local v15       #velocity:F
    :cond_9
    #v0=(DoubleLo);v1=(DoubleHi);v3=(Uninit);v4=(Uninit);v7=(Uninit);v16=(Byte);v17=(DoubleHi);v18=(DoubleLo);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_3

    .line 419
    .restart local v3       #childSwipedFarEnough:Z
    :cond_a
    #v3=(Boolean);v17=(Float);
    const/16 v16, 0x0

    #v16=(Null);
    goto :goto_4

    :cond_b
    #v0=(Reference);v16=(Boolean);v17=(Byte);v18=(Null);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_5

    :cond_c
    #v0=(Conflicted);v1=(Conflicted);v16=(Byte);v17=(Conflicted);v18=(Conflicted);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_6

    .line 429
    .restart local v4       #childSwipedFastEnough:Z
    :cond_d
    #v0=(Reference);v4=(Boolean);v16=(Boolean);v17=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_7

    .line 433
    .restart local v7       #dismissChild:Z
    :cond_e
    #v7=(Boolean);v16=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    goto :goto_8

    .line 435
    :cond_f
    #v15=(Float);v16=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/SwipeHelper;->mCurrView:Lcom/android/mail/ui/SwipeableItemView;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeHelper;->snapChild(Lcom/android/mail/ui/SwipeableItemView;)V

    goto/16 :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDensityScale(F)V
    .locals 0
    .parameter "densityScale"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/mail/ui/SwipeHelper;->mDensityScale:F

    .line 104
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .parameter "pagingTouchSlop"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/mail/ui/SwipeHelper;->mPagingTouchSlop:F

    .line 108
    return-void
.end method

.method public snapChild(Lcom/android/mail/ui/SwipeableItemView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 319
    invoke-interface {p1}, Lcom/android/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v1

    .line 320
    .local v1, animView:Landroid/view/View;
    #v1=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/SwipeHelper;->mCallback:Lcom/android/mail/ui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/android/mail/ui/SwipeableItemView;)Z

    move-result v2

    .line 321
    .local v2, canAnimViewBeDismissed:Z
    #v2=(Boolean);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {p0, v1, v4}, Lcom/android/mail/ui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 322
    .local v0, anim:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    sget v3, Lcom/android/mail/ui/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 323
    .local v3, duration:I
    #v3=(Integer);
    int-to-long v4, v3

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 324
    new-instance v4, Lcom/android/mail/ui/SwipeHelper$3;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v2, v1}, Lcom/android/mail/ui/SwipeHelper$3;-><init>(Lcom/android/mail/ui/SwipeHelper;ZLandroid/view/View;)V

    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    new-instance v4, Lcom/android/mail/ui/SwipeHelper$4;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v1}, Lcom/android/mail/ui/SwipeHelper$4;-><init>(Lcom/android/mail/ui/SwipeHelper;Landroid/view/View;)V

    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 350
    return-void
.end method
