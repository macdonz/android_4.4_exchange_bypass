.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$1;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    .local v0, deviceVersion:I
    #v0=(Integer);
    const/16 v1, 0x11

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 194
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    #v1=(Reference);
    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    #v1=(PosByte);
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 196
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    #v1=(Reference);
    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 198
    :cond_1
    #v1=(PosByte);
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    #v1=(Reference);
    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 244
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 248
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, 0x3f00

    #v5=(Integer);
    const/4 v4, 0x1

    .line 252
    #v4=(One);
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    #p0=(Reference);
    const v2, -0x33333334

    #v2=(Integer);
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 182
    iput-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 184
    new-instance v2, Landroid/graphics/Rect;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #v2=(Reference);
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #v2=(Reference);
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 255
    .local v0, density:F
    #v0=(Integer);
    const/high16 v2, 0x4200

    #v2=(Integer);
    mul-float/2addr v2, v0

    #v2=(Float);
    add-float/2addr v2, v5

    float-to-int v2, v2

    #v2=(Integer);
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 257
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 259
    .local v1, viewConfig:Landroid/view/ViewConfiguration;
    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 261
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    #v2=(Reference);
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 262
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 264
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    #v2=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    #v2=(Reference);
    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 265
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 266
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v3, 0x43c8

    #v3=(Integer);
    mul-float/2addr v3, v0

    #v3=(Float);
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 267
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .parameter "pane"
    .parameter "initialVelocity"

    .prologue
    const/4 v0, 0x0

    .line 828
    #v0=(Null);
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 829
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 830
    const/4 v0, 0x1

    .line 832
    :cond_1
    #v0=(Boolean);
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9
    .parameter "v"
    .parameter "mag"
    .parameter "fadeColor"

    .prologue
    const/4 v8, 0x2

    .line 925
    #v8=(PosByte);
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 927
    .local v4, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    #v5=(Null);
    cmpl-float v5, p2, v5

    #v5=(Byte);
    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    .line 928
    const/high16 v5, -0x100

    #v5=(Integer);
    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    .line 929
    .local v0, baseAlpha:I
    #v0=(Char);
    int-to-float v5, v0

    #v5=(Float);
    mul-float/2addr v5, p2

    float-to-int v3, v5

    .line 930
    .local v3, imag:I
    #v3=(Integer);
    shl-int/lit8 v5, v3, 0x18

    #v5=(Integer);
    const v6, 0xffffff

    #v6=(Integer);
    and-int/2addr v6, p3

    or-int v1, v5, v6

    .line 931
    .local v1, color:I
    #v1=(Integer);
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    if-nez v5, :cond_0

    .line 932
    new-instance v5, Landroid/graphics/Paint;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #v5=(Reference);
    iput-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 934
    :cond_0
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    #v6=(UninitRef);
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #v7=(Reference);
    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 935
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    #v5=(Integer);
    if-eq v5, v8, :cond_1

    .line 936
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    invoke-static {p1, v8, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 938
    :cond_1
    #v5=(Conflicted);
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 947
    .end local v0           #baseAlpha:I
    .end local v1           #color:I
    .end local v3           #imag:I
    :cond_2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 939
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Byte);v6=(Uninit);v7=(Uninit);
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    #v5=(Integer);
    if-eqz v5, :cond_2

    .line 940
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    if-eqz v5, :cond_4

    .line 941
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 943
    :cond_4
    #v6=(Conflicted);
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    #v2=(UninitRef);
    invoke-direct {v2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 944
    .local v2, dlr:Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    #v2=(Reference);
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 991
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #v0=(Reference);
    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 992
    return-void
.end method

.method private onPanelDragged(I)V
    .locals 5
    .parameter "newLeft"

    .prologue
    .line 909
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 910
    .local v1, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    #v2=(Integer);
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v3=(Integer);
    add-int v0, v2, v3

    .line 912
    .local v0, leftBound:I
    #v0=(Integer);
    sub-int v2, p1, v0

    int-to-float v2, v2

    #v2=(Float);
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    #v3=(Float);
    div-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 914
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #v2=(Integer);
    if-eqz v2, :cond_0

    .line 915
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 918
    :cond_0
    iget-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 919
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v2=(Reference);
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v3=(Integer);
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #v4=(Integer);
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 921
    :cond_1
    #v2=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 922
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .parameter "pane"
    .parameter "initialVelocity"

    .prologue
    const/4 v0, 0x1

    .line 836
    #v0=(One);
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    const/high16 v1, 0x3f80

    #v1=(Integer);
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 837
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 840
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 11
    .parameter "slideOffset"

    .prologue
    const/high16 v10, 0x3f80

    .line 1071
    #v10=(Integer);
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1072
    .local v6, slideLp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v8, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #v8=(Boolean);
    if-eqz v8, :cond_1

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v8=(Integer);
    if-gtz v8, :cond_1

    const/4 v1, 0x1

    .line 1073
    .local v1, dimViews:Z
    :goto_0
    #v1=(Boolean);
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1074
    .local v0, childCount:I
    #v0=(Integer);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-ge v3, v0, :cond_3

    .line 1075
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1076
    .local v7, v:Landroid/view/View;
    #v7=(Reference);
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v8=(Reference);
    if-ne v7, v8, :cond_2

    .line 1074
    :cond_0
    :goto_2
    #v8=(Conflicted);
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1072
    .end local v0           #childCount:I
    .end local v1           #dimViews:Z
    .end local v3           #i:I
    .end local v7           #v:Landroid/view/View;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Integer);v9=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0

    .line 1078
    .restart local v0       #childCount:I
    .restart local v1       #dimViews:Z
    .restart local v3       #i:I
    .restart local v7       #v:Landroid/view/View;
    :cond_2
    #v0=(Integer);v1=(Boolean);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v7=(Reference);v8=(Reference);v9=(Conflicted);
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #v8=(Integer);
    sub-float v8, v10, v8

    #v8=(Float);
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 1079
    .local v5, oldOffset:I
    #v5=(Integer);
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1080
    sub-float v8, v10, p1

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 1081
    .local v4, newOffset:I
    #v4=(Integer);
    sub-int v2, v5, v4

    .line 1083
    .local v2, dx:I
    #v2=(Integer);
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1085
    if-eqz v1, :cond_0

    .line 1086
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #v8=(Integer);
    sub-float v8, v10, v8

    #v8=(Float);
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #v9=(Integer);
    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_2

    .line 1089
    .end local v2           #dx:I
    .end local v4           #newOffset:I
    .end local v5           #oldOffset:I
    .end local v7           #v:Landroid/view/View;
    :cond_3
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 398
    #v2=(Null);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Integer);v4=(Conflicted);
    return v1

    .line 403
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Boolean);v4=(Uninit);
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #v3=(Integer);
    const/16 v4, 0x12

    #v4=(PosByte);
    if-lt v3, v4, :cond_2

    move v1, v2

    #v1=(Null);
    goto :goto_0

    .line 405
    :cond_2
    #v1=(One);
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 406
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 407
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    #v4=(Byte);
    if-eq v3, v4, :cond_0

    move v1, v2

    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v4=(PosByte);
    move v1, v2

    .line 409
    #v1=(Null);
    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1147
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1022
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1029
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 1027
    :cond_1
    #v0=(Boolean);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 344
    :cond_0
    const/16 v0, 0x20

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 345
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 337
    :cond_0
    const/16 v0, 0x20

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 338
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .parameter "panel"

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v1=(Integer);
    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 331
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    .line 1053
    #v7=(One);
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1055
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    #v6=(Integer);
    if-le v6, v7, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1056
    .local v3, shadowView:Landroid/view/View;
    :goto_0
    #v3=(Reference);
    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    #v6=(Reference);
    if-nez v6, :cond_2

    .line 1068
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 1055
    .end local v3           #shadowView:Landroid/view/View;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0

    .line 1061
    .restart local v3       #shadowView:Landroid/view/View;
    :cond_2
    #v3=(Reference);v6=(Reference);
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1062
    .local v4, shadowWidth:I
    #v4=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1063
    .local v2, right:I
    #v2=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1064
    .local v5, top:I
    #v5=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1065
    .local v0, bottom:I
    #v0=(Integer);
    sub-int v1, v2, v4

    .line 1066
    .local v1, left:I
    #v1=(Integer);
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1067
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 951
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 953
    .local v1, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 955
    .local v3, save:I
    #v3=(Integer);
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v4=(Reference);
    if-eqz v4, :cond_0

    .line 957
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 958
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #v5=(Reference);
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #v5=(Integer);
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    #v6=(Integer);
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 959
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 962
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #v4=(Integer);
    const/16 v5, 0xb

    #v5=(PosByte);
    if-lt v4, v5, :cond_1

    .line 963
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 985
    .local v2, result:Z
    :goto_0
    #v0=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 987
    return v2

    .line 965
    .end local v2           #result:Z
    :cond_1
    #v0=(Uninit);v2=(Uninit);v4=(Integer);v5=(PosByte);
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #v4=(Boolean);
    if-eqz v4, :cond_4

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    cmpl-float v4, v4, v5

    #v4=(Byte);
    if-lez v4, :cond_4

    .line 966
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 967
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 969
    :cond_2
    #v4=(Boolean);
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    .local v0, cache:Landroid/graphics/Bitmap;
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 971
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    #v4=(Integer);
    int-to-float v4, v4

    #v4=(Float);
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    #v5=(Integer);
    int-to-float v5, v5

    #v5=(Float);
    iget-object v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #v6=(Reference);
    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 972
    const/4 v2, 0x0

    .restart local v2       #result:Z
    #v2=(Null);
    goto :goto_0

    .line 974
    .end local v2           #result:Z
    :cond_3
    #v2=(Uninit);v4=(Boolean);v5=(Null);v6=(Conflicted);
    const-string v4, "SlidingPaneLayout"

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "drawChild: child view "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null drawing cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2       #result:Z
    #v2=(Boolean);
    goto :goto_0

    .line 978
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #result:Z
    :cond_4
    #v0=(Uninit);v2=(Uninit);v4=(Byte);v5=(PosByte);v6=(Conflicted);
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 979
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 981
    :cond_5
    #v4=(Boolean);
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2       #result:Z
    #v2=(Boolean);
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1135
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1152
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1140
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #v0=(UninitRef);
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    .restart local p1
    :cond_0
    #v0=(Boolean);
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 1126
    #v1=(Null);
    if-nez p1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 1129
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1130
    .local v0, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    cmpl-float v2, v2, v3

    #v2=(Byte);
    if-lez v2, :cond_0

    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 886
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v0=(Integer);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    cmpl-float v0, v0, v1

    #v0=(Byte);
    if-nez v0, :cond_1

    :cond_0
    #v1=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Byte);v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v0=(Boolean);
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 415
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 421
    const/4 v3, 0x1

    #v3=(One);
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 423
    const/4 v2, 0x0

    .local v2, i:I
    #v2=(Null);
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Integer);
    if-ge v2, v0, :cond_0

    .line 424
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 425
    .local v1, dlr:Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v1           #dlr:Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    #v1=(Conflicted);
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 428
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 728
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 731
    .local v0, action:I
    #v0=(Integer);
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v9=(Boolean);
    if-nez v9, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    #v9=(Integer);
    const/4 v10, 0x1

    #v10=(One);
    if-le v9, v10, :cond_0

    .line 733
    const/4 v9, 0x1

    #v9=(One);
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 734
    .local v5, secondChild:Landroid/view/View;
    #v5=(Reference);
    if-eqz v5, :cond_0

    .line 735
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    #v10=(Float);
    float-to-int v10, v10

    #v10=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    #v11=(Float);
    float-to-int v11, v11

    #v11=(Integer);
    invoke-virtual {v9, v5, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 740
    .end local v5           #secondChild:Landroid/view/View;
    :cond_0
    #v5=(Conflicted);v9=(Integer);v10=(Conflicted);v11=(Conflicted);
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v9=(Boolean);
    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    .line 741
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 783
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Boolean);v12=(Conflicted);
    return v9

    .line 735
    .restart local v5       #secondChild:Landroid/view/View;
    :cond_2
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Integer);v11=(Integer);v12=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_0

    .line 745
    .end local v5           #secondChild:Landroid/view/View;
    :cond_3
    #v5=(Conflicted);v9=(Boolean);v10=(Conflicted);v11=(Conflicted);
    const/4 v9, 0x3

    #v9=(PosByte);
    if-eq v0, v9, :cond_4

    const/4 v9, 0x1

    #v9=(One);
    if-ne v0, v9, :cond_5

    .line 746
    :cond_4
    #v9=(PosByte);
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 747
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_1

    .line 750
    :cond_5
    #v9=(One);
    const/4 v4, 0x0

    .line 752
    .local v4, interceptTap:Z
    #v4=(Null);
    packed-switch v0, :pswitch_data_0

    .line 781
    :cond_6
    :goto_2
    :pswitch_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Byte);v12=(Conflicted);
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 783
    .local v3, interceptForDrag:Z
    #v3=(Boolean);
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    const/4 v9, 0x1

    #v9=(One);
    goto :goto_1

    .line 754
    .end local v3           #interceptForDrag:Z
    :pswitch_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);v6=(Uninit);v7=(Uninit);v8=(Uninit);v12=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 756
    .local v7, x:F
    #v7=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 757
    .local v8, y:F
    #v8=(Float);
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 758
    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 760
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    iget-object v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v10=(Reference);
    float-to-int v11, v7

    #v11=(Integer);
    float-to-int v12, v8

    #v12=(Integer);
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v9=(Reference);
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_6

    .line 762
    const/4 v4, 0x1

    #v4=(One);
    goto :goto_2

    .line 768
    .end local v7           #x:F
    .end local v8           #y:F
    :pswitch_2
    #v4=(Null);v7=(Uninit);v8=(Uninit);v9=(One);v10=(Conflicted);v11=(Conflicted);v12=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 769
    .restart local v7       #x:F
    #v7=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 770
    .restart local v8       #y:F
    #v8=(Float);
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #v9=(Integer);
    sub-float v9, v7, v9

    #v9=(Float);
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 771
    .local v1, adx:F
    #v1=(Float);
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #v9=(Integer);
    sub-float v9, v8, v9

    #v9=(Float);
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 772
    .local v2, ady:F
    #v2=(Float);
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 773
    .local v6, slop:I
    #v6=(Integer);
    int-to-float v9, v6

    #v9=(Float);
    cmpl-float v9, v1, v9

    #v9=(Byte);
    if-lez v9, :cond_6

    cmpl-float v9, v2, v1

    if-lez v9, :cond_6

    .line 774
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 775
    const/4 v9, 0x1

    #v9=(One);
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 776
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_1

    .line 783
    .end local v1           #adx:F
    .end local v2           #ady:F
    .end local v6           #slop:I
    .end local v7           #x:F
    .end local v8           #y:F
    .restart local v3       #interceptForDrag:Z
    :cond_8
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Reference);v12=(Conflicted);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_1

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 640
    sub-int v20, p4, p2

    .line 641
    .local v20, width:I
    #v20=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v16

    .line 642
    .local v16, paddingLeft:I
    #v16=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v17

    .line 643
    .local v17, paddingRight:I
    #v17=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v18

    .line 645
    .local v18, paddingTop:I
    #v18=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 646
    .local v6, childCount:I
    #v6=(Integer);
    move/from16 v21, v16

    .line 647
    .local v21, xStart:I
    #v21=(Integer);
    move/from16 v14, v21

    .line 649
    .local v14, nextXStart:I
    #v14=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #v0=(Boolean);
    move/from16 v22, v0

    #v22=(Boolean);
    if-eqz v22, :cond_0

    .line 650
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v0=(Boolean);
    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #v0=(Boolean);
    move/from16 v22, v0

    if-eqz v22, :cond_1

    const/high16 v22, 0x3f80

    :goto_0
    #v22=(Integer);
    move/from16 v0, v22

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 653
    :cond_0
    #v1=(Conflicted);
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Integer);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v19=(Conflicted);v23=(Conflicted);
    if-ge v11, v6, :cond_6

    .line 654
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 656
    .local v4, child:Landroid/view/View;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    #v23=(PosByte);
    move/from16 v0, v22

    #v0=(Integer);
    move/from16 v1, v23

    #v1=(PosByte);
    if-ne v0, v1, :cond_2

    .line 653
    :goto_2
    #v1=(Integer);v23=(Integer);
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 650
    .end local v4           #child:Landroid/view/View;
    .end local v11           #i:I
    :cond_1
    #v0=(Boolean);v1=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v15=(Uninit);v19=(Uninit);v22=(Boolean);v23=(Uninit);
    const/16 v22, 0x0

    #v22=(Null);
    goto :goto_0

    .line 660
    .restart local v4       #child:Landroid/view/View;
    .restart local v11       #i:I
    :cond_2
    #v0=(Integer);v1=(PosByte);v4=(Reference);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Integer);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v19=(Conflicted);v22=(Integer);v23=(PosByte);
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    #v12=(Reference);
    check-cast v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 662
    .local v12, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 663
    .local v10, childWidth:I
    #v10=(Integer);
    const/4 v15, 0x0

    .line 665
    .local v15, offset:I
    #v15=(Null);
    iget-boolean v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #v0=(Boolean);
    move/from16 v22, v0

    #v22=(Boolean);
    if-eqz v22, :cond_4

    .line 666
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v0=(Integer);
    move/from16 v22, v0

    #v22=(Integer);
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    #v23=(Integer);
    add-int v13, v22, v23

    .line 667
    .local v13, margin:I
    #v13=(Integer);
    sub-int v22, v20, v17

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #v0=(Integer);
    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    sub-int v22, v22, v21

    sub-int v19, v22, v13

    .line 669
    .local v19, range:I
    #v19=(Integer);
    move/from16 v0, v19

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 670
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v22, v22, v21

    add-int v22, v22, v19

    div-int/lit8 v23, v10, 0x2

    add-int v22, v22, v23

    sub-int v23, v20, v17

    move/from16 v0, v22

    move/from16 v1, v23

    #v1=(Integer);
    if-le v0, v1, :cond_3

    const/16 v22, 0x1

    :goto_3
    #v22=(Boolean);
    move/from16 v0, v22

    #v0=(Boolean);
    iput-boolean v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 672
    move/from16 v0, v19

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v22, v0

    #v22=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v0=(Integer);
    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v22, v0

    #v22=(Integer);
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v21, v21, v22

    .line 680
    .end local v13           #margin:I
    .end local v19           #range:I
    :goto_4
    #v13=(Conflicted);v15=(Integer);v19=(Conflicted);
    sub-int v7, v21, v15

    .line 681
    .local v7, childLeft:I
    #v7=(Integer);
    add-int v8, v7, v10

    .line 682
    .local v8, childRight:I
    #v8=(Integer);
    move/from16 v9, v18

    .line 683
    .local v9, childTop:I
    #v9=(Integer);
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v5, v9, v22

    .line 684
    .local v5, childBottom:I
    #v5=(Integer);
    move/from16 v0, v18

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 686
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v14, v14, v22

    goto/16 :goto_2

    .line 670
    .end local v5           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .restart local v13       #margin:I
    .restart local v19       #range:I
    :cond_3
    #v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Integer);v15=(Null);v19=(Integer);
    const/16 v22, 0x0

    #v22=(Null);
    goto :goto_3

    .line 673
    .end local v13           #margin:I
    .end local v19           #range:I
    :cond_4
    #v0=(Boolean);v1=(PosByte);v13=(Conflicted);v19=(Conflicted);v22=(Boolean);v23=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v0=(Boolean);
    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #v0=(Integer);
    move/from16 v22, v0

    #v22=(Integer);
    if-eqz v22, :cond_5

    .line 674
    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v0=(Integer);
    move/from16 v23, v0

    #v23=(Integer);
    sub-float v22, v22, v23

    #v22=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #v0=(Integer);
    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v23, v0

    #v23=(Float);
    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v15, v0

    .line 675
    #v15=(Integer);
    move/from16 v21, v14

    goto :goto_4

    .line 677
    :cond_5
    #v0=(Integer);v15=(Null);v22=(Integer);v23=(PosByte);
    move/from16 v21, v14

    goto :goto_4

    .line 689
    .end local v4           #child:Landroid/view/View;
    .end local v10           #childWidth:I
    .end local v12           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v15           #offset:I
    :cond_6
    #v1=(Conflicted);v4=(Conflicted);v10=(Conflicted);v12=(Conflicted);v15=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #v0=(Boolean);
    move/from16 v22, v0

    #v22=(Boolean);
    if-eqz v22, :cond_9

    .line 690
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v0=(Boolean);
    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 691
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #v0=(Integer);
    move/from16 v22, v0

    #v22=(Integer);
    if-eqz v22, :cond_7

    .line 692
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v0=(Integer);
    move/from16 v22, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v22

    #v1=(Integer);
    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 694
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v22, v0

    #v22=(Reference);
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #v0=(Boolean);
    move/from16 v22, v0

    #v22=(Boolean);
    if-eqz v22, :cond_8

    .line 695
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v22, v0

    #v22=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #v0=(Integer);
    move/from16 v23, v0

    #v23=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v22

    #v1=(Reference);
    move/from16 v2, v23

    #v2=(Integer);
    move/from16 v3, v24

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 703
    :cond_8
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v22, v0

    #v22=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 706
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v22=(Conflicted);
    const/16 v22, 0x0

    #v22=(Null);
    move/from16 v0, v22

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 707
    return-void

    .line 699
    :cond_a
    #v0=(Boolean);v1=(Conflicted);v2=(Uninit);v3=(Uninit);v22=(Boolean);v24=(Uninit);
    const/4 v11, 0x0

    :goto_5
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v22=(Conflicted);v24=(Conflicted);
    if-ge v11, v6, :cond_8

    .line 700
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    #v22=(Reference);
    const/16 v23, 0x0

    #v23=(Null);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v22

    #v1=(Reference);
    move/from16 v2, v23

    #v2=(Null);
    move/from16 v3, v24

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 699
    add-int/lit8 v11, v11, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 28
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 432
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 433
    .local v22, widthMode:I
    #v22=(Integer);
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 434
    .local v24, widthSize:I
    #v24=(Integer);
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 435
    .local v11, heightMode:I
    #v11=(Integer);
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 437
    .local v12, heightSize:I
    #v12=(Integer);
    const/high16 v26, 0x4000

    #v26=(Integer);
    move/from16 v0, v22

    #v0=(Integer);
    move/from16 v1, v26

    #v1=(Integer);
    if-eq v0, v1, :cond_5

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    #v26=(Boolean);
    if-eqz v26, :cond_4

    .line 443
    const/high16 v26, -0x8000

    #v26=(Integer);
    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 444
    const/high16 v22, 0x4000

    .line 466
    :cond_0
    :goto_0
    const/4 v15, 0x0

    .line 467
    .local v15, layoutHeight:I
    #v15=(Null);
    const/16 v17, -0x1

    .line 468
    .local v17, maxLayoutHeight:I
    #v17=(Byte);
    sparse-switch v11, :sswitch_data_0

    .line 477
    :goto_1
    #v15=(Integer);v17=(Integer);v27=(Conflicted);
    const/16 v21, 0x0

    .line 478
    .local v21, weightSum:F
    #v21=(Null);
    const/4 v3, 0x0

    .line 479
    .local v3, canSlide:Z
    #v3=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v26

    sub-int v26, v24, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v27

    #v27=(Integer);
    sub-int v23, v26, v27

    .line 480
    .local v23, widthRemaining:I
    #v23=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .line 482
    .local v5, childCount:I
    #v5=(Integer);
    const/16 v26, 0x2

    #v26=(PosByte);
    move/from16 v0, v26

    #v0=(PosByte);
    if-le v5, v0, :cond_1

    .line 483
    const-string v26, "SlidingPaneLayout"

    #v26=(Reference);
    const-string v27, "onMeasure: More than two child views are not supported."

    #v27=(Reference);
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    #v26=(Conflicted);v27=(Conflicted);
    const/16 v26, 0x0

    #v26=(Null);
    move-object/from16 v0, v26

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 491
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v3=(Boolean);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Conflicted);v14=(Integer);v16=(Conflicted);v21=(Float);v26=(Integer);
    if-ge v14, v5, :cond_f

    .line 492
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 493
    .local v4, child:Landroid/view/View;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    #v16=(Reference);
    check-cast v16, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 495
    .local v16, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    #v27=(PosByte);
    move/from16 v0, v26

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(PosByte);
    if-ne v0, v1, :cond_7

    .line 496
    const/16 v26, 0x0

    #v26=(Null);
    move/from16 v0, v26

    #v0=(Null);
    move-object/from16 v1, v16

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 491
    :cond_2
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v26=(Integer);v27=(Integer);
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 445
    .end local v3           #canSlide:Z
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childCount:I
    .end local v14           #i:I
    .end local v15           #layoutHeight:I
    .end local v16           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17           #maxLayoutHeight:I
    .end local v21           #weightSum:F
    .end local v23           #widthRemaining:I
    :cond_3
    #v0=(Integer);v1=(Integer);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v21=(Uninit);v23=(Uninit);v27=(Uninit);
    if-nez v22, :cond_0

    .line 446
    const/high16 v22, 0x4000

    .line 447
    const/16 v24, 0x12c

    #v24=(PosShort);
    goto :goto_0

    .line 450
    :cond_4
    #v24=(Integer);v26=(Boolean);
    new-instance v26, Ljava/lang/IllegalStateException;

    #v26=(UninitRef);
    const-string v27, "Width must have an exact value or MATCH_PARENT"

    #v27=(Reference);
    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v26=(Reference);
    throw v26

    .line 452
    :cond_5
    #v26=(Integer);v27=(Uninit);
    if-nez v11, :cond_0

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    #v26=(Boolean);
    if-eqz v26, :cond_6

    .line 457
    if-nez v11, :cond_0

    .line 458
    const/high16 v11, -0x8000

    .line 459
    const/16 v12, 0x12c

    #v12=(PosShort);
    goto :goto_0

    .line 462
    :cond_6
    #v12=(Integer);
    new-instance v26, Ljava/lang/IllegalStateException;

    #v26=(UninitRef);
    const-string v27, "Height must not be UNSPECIFIED"

    #v27=(Reference);
    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v26=(Reference);
    throw v26

    .line 470
    .restart local v15       #layoutHeight:I
    .restart local v17       #maxLayoutHeight:I
    :sswitch_0
    #v15=(Null);v17=(Byte);v26=(Integer);v27=(Uninit);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v26, v12, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    #v27=(Integer);
    sub-int v17, v26, v27

    #v17=(Integer);
    move/from16 v15, v17

    .line 471
    #v15=(Integer);
    goto/16 :goto_1

    .line 473
    :sswitch_1
    #v15=(Null);v17=(Byte);v27=(Uninit);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v26, v12, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    #v27=(Integer);
    sub-int v17, v26, v27

    #v17=(Integer);
    goto/16 :goto_1

    .line 500
    .restart local v3       #canSlide:Z
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #childCount:I
    .restart local v14       #i:I
    .restart local v16       #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v21       #weightSum:F
    .restart local v23       #widthRemaining:I
    :cond_7
    #v1=(PosByte);v3=(Boolean);v4=(Reference);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Conflicted);v14=(Integer);v15=(Integer);v16=(Reference);v21=(Float);v23=(Integer);v27=(PosByte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, 0x0

    #v27=(Null);
    cmpl-float v26, v26, v27

    #v26=(Byte);
    if-lez v26, :cond_8

    .line 501
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    add-float v21, v21, v26

    .line 505
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 509
    :cond_8
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v0=(Integer);
    move/from16 v26, v0

    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    add-int v13, v26, v27

    .line 510
    .local v13, horizontalMargin:I
    #v13=(Integer);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x2

    #v27=(Byte);
    move/from16 v0, v26

    move/from16 v1, v27

    #v1=(Byte);
    if-ne v0, v1, :cond_a

    .line 511
    sub-int v26, v24, v13

    const/high16 v27, -0x8000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 521
    .local v9, childWidthSpec:I
    :goto_4
    #v9=(Integer);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x2

    #v27=(Byte);
    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 522
    const/high16 v26, -0x8000

    move/from16 v0, v17

    move/from16 v1, v26

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 529
    .local v7, childHeightSpec:I
    :goto_5
    #v7=(Integer);v27=(Integer);
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    .line 530
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 531
    .local v8, childWidth:I
    #v8=(Integer);
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 533
    .local v6, childHeight:I
    #v6=(Integer);
    const/high16 v26, -0x8000

    move/from16 v0, v26

    if-ne v11, v0, :cond_9

    if-le v6, v15, :cond_9

    .line 534
    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 537
    :cond_9
    sub-int v23, v23, v8

    .line 538
    if-gez v23, :cond_e

    const/16 v26, 0x1

    :goto_6
    #v26=(Boolean);
    move/from16 v0, v26

    #v0=(Boolean);
    move-object/from16 v1, v16

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v3, v3, v26

    .line 539
    move-object/from16 v0, v16

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #v0=(Boolean);
    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 540
    move-object/from16 v0, p0

    #v0=(Reference);
    iput-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .line 513
    .end local v6           #childHeight:I
    .end local v7           #childHeightSpec:I
    .end local v8           #childWidth:I
    .end local v9           #childWidthSpec:I
    :cond_a
    #v0=(Integer);v1=(Byte);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v26=(Integer);v27=(Byte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 514
    sub-int v26, v24, v13

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childWidthSpec:I
    #v9=(Integer);
    goto :goto_4

    .line 517
    .end local v9           #childWidthSpec:I
    :cond_b
    #v9=(Conflicted);v27=(Byte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childWidthSpec:I
    #v9=(Integer);
    goto :goto_4

    .line 523
    :cond_c
    #v27=(Byte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 524
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_5

    .line 526
    .end local v7           #childHeightSpec:I
    :cond_d
    #v1=(Byte);v7=(Conflicted);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_5

    .line 538
    .restart local v6       #childHeight:I
    .restart local v8       #childWidth:I
    :cond_e
    #v1=(Integer);v6=(Integer);v8=(Integer);
    const/16 v26, 0x0

    #v26=(Null);
    goto :goto_6

    .line 545
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeight:I
    .end local v7           #childHeightSpec:I
    .end local v8           #childWidth:I
    .end local v9           #childWidthSpec:I
    .end local v13           #horizontalMargin:I
    .end local v16           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_f
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Conflicted);v16=(Conflicted);v26=(Integer);v27=(Conflicted);
    if-nez v3, :cond_10

    const/16 v26, 0x0

    #v26=(Null);
    cmpl-float v26, v21, v26

    #v26=(Byte);
    if-lez v26, :cond_1e

    .line 546
    :cond_10
    #v26=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #v0=(Integer);
    move/from16 v26, v0

    sub-int v10, v24, v26

    .line 548
    .local v10, fixedPanelWidthLimit:I
    #v10=(Integer);
    const/4 v14, 0x0

    :goto_7
    #v2=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v25=(Conflicted);
    if-ge v14, v5, :cond_1e

    .line 549
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 551
    .restart local v4       #child:Landroid/view/View;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    #v27=(PosByte);
    move/from16 v0, v26

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(PosByte);
    if-ne v0, v1, :cond_12

    .line 548
    :cond_11
    :goto_8
    #v1=(Integer);v27=(Integer);
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 555
    :cond_12
    #v1=(PosByte);v27=(PosByte);
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    #v16=(Reference);
    check-cast v16, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 557
    .restart local v16       #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 561
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    if-nez v26, :cond_14

    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, 0x0

    #v27=(Null);
    cmpl-float v26, v26, v27

    #v26=(Byte);
    if-lez v26, :cond_14

    const/16 v20, 0x1

    .line 562
    .local v20, skippedFirstPass:Z
    :goto_9
    #v20=(Boolean);v26=(Integer);v27=(PosByte);
    if-eqz v20, :cond_15

    const/16 v18, 0x0

    .line 563
    .local v18, measuredWidth:I
    :goto_a
    #v18=(Integer);
    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    #v26=(Reference);
    move-object/from16 v0, v26

    if-eq v4, v0, :cond_19

    .line 564
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    if-gez v26, :cond_11

    move/from16 v0, v18

    if-gt v0, v10, :cond_13

    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, 0x0

    #v27=(Null);
    cmpl-float v26, v26, v27

    #v26=(Byte);
    if-lez v26, :cond_11

    .line 568
    :cond_13
    #v26=(Integer);v27=(PosByte);
    if-eqz v20, :cond_18

    .line 571
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x2

    #v27=(Byte);
    move/from16 v0, v26

    move/from16 v1, v27

    #v1=(Byte);
    if-ne v0, v1, :cond_16

    .line 572
    const/high16 v26, -0x8000

    move/from16 v0, v17

    move/from16 v1, v26

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 585
    .restart local v7       #childHeightSpec:I
    :goto_b
    #v7=(Integer);v27=(Integer);
    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 587
    .restart local v9       #childWidthSpec:I
    #v9=(Integer);
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 561
    .end local v7           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v18           #measuredWidth:I
    .end local v20           #skippedFirstPass:Z
    :cond_14
    #v1=(PosByte);v7=(Conflicted);v9=(Conflicted);v18=(Conflicted);v20=(Conflicted);v27=(PosByte);
    const/16 v20, 0x0

    #v20=(Null);
    goto :goto_9

    .line 562
    .restart local v20       #skippedFirstPass:Z
    :cond_15
    #v20=(Boolean);
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    #v18=(Integer);
    goto :goto_a

    .line 574
    .restart local v18       #measuredWidth:I
    :cond_16
    #v1=(Byte);v27=(Byte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 575
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_b

    .line 578
    .end local v7           #childHeightSpec:I
    :cond_17
    #v1=(Byte);v7=(Conflicted);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_b

    .line 582
    .end local v7           #childHeightSpec:I
    :cond_18
    #v1=(PosByte);v7=(Conflicted);v27=(PosByte);
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_b

    .line 589
    .end local v7           #childHeightSpec:I
    :cond_19
    #v0=(Conflicted);v7=(Conflicted);v26=(Conflicted);v27=(PosByte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    const/16 v27, 0x0

    #v27=(Null);
    cmpl-float v26, v26, v27

    #v26=(Byte);
    if-lez v26, :cond_11

    .line 591
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    if-nez v26, :cond_1c

    .line 593
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x2

    #v27=(Byte);
    move/from16 v0, v26

    move/from16 v1, v27

    #v1=(Byte);
    if-ne v0, v1, :cond_1a

    .line 594
    const/high16 v26, -0x8000

    move/from16 v0, v17

    move/from16 v1, v26

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 608
    .restart local v7       #childHeightSpec:I
    :goto_c
    #v7=(Integer);v27=(Integer);
    if-eqz v3, :cond_1d

    .line 610
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v0=(Integer);
    move/from16 v26, v0

    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #v0=(Integer);
    move/from16 v27, v0

    add-int v13, v26, v27

    .line 611
    .restart local v13       #horizontalMargin:I
    #v13=(Integer);
    sub-int v19, v24, v13

    .line 612
    .local v19, newWidth:I
    #v19=(Integer);
    const/high16 v26, 0x4000

    move/from16 v0, v19

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 614
    .restart local v9       #childWidthSpec:I
    #v9=(Integer);
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 615
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 596
    .end local v7           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #horizontalMargin:I
    .end local v19           #newWidth:I
    :cond_1a
    #v1=(Byte);v7=(Conflicted);v9=(Conflicted);v13=(Conflicted);v19=(Conflicted);v27=(Byte);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 597
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_c

    .line 600
    .end local v7           #childHeightSpec:I
    :cond_1b
    #v1=(Byte);v7=(Conflicted);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v0=(Integer);
    move/from16 v26, v0

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_c

    .line 604
    .end local v7           #childHeightSpec:I
    :cond_1c
    #v1=(PosByte);v7=(Conflicted);v27=(Null);
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    #v7=(Integer);
    goto :goto_c

    .line 619
    :cond_1d
    #v1=(Integer);
    const/16 v26, 0x0

    #v26=(Null);
    move/from16 v0, v26

    #v0=(Null);
    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 620
    .local v25, widthToDistribute:I
    #v25=(Integer);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    move/from16 v0, v25

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v27, v0

    #v27=(Float);
    mul-float v26, v26, v27

    #v26=(Float);
    div-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v2, v0

    .line 621
    .local v2, addedWidth:I
    #v2=(Integer);
    add-int v26, v18, v2

    #v26=(Integer);
    const/high16 v27, 0x4000

    #v27=(Integer);
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 623
    .restart local v9       #childWidthSpec:I
    #v9=(Integer);
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 629
    .end local v2           #addedWidth:I
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v10           #fixedPanelWidthLimit:I
    .end local v16           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18           #measuredWidth:I
    .end local v20           #skippedFirstPass:Z
    .end local v25           #widthToDistribute:I
    :cond_1e
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v16=(Conflicted);v18=(Conflicted);v20=(Conflicted);v25=(Conflicted);v27=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 630
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    #v26=(Reference);
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v26

    #v26=(Integer);
    if-eqz v26, :cond_1f

    if-nez v3, :cond_1f

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    #v26=(Reference);
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 635
    :cond_1f
    #v26=(Conflicted);
    return-void

    .line 468
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);v22=(Unknown);v23=(Unknown);v24=(Unknown);v25=(Unknown);v26=(Unknown);v27=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1167
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1168
    .local v0, ss:Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1170
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 1175
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1176
    return-void

    .line 1173
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1157
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1159
    .local v1, superState:Landroid/os/Parcelable;
    #v1=(Reference);
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1160
    .local v0, ss:Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    #v0=(Reference);
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1162
    return-object v0

    .line 1160
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 713
    if-eq p1, p3, :cond_0

    .line 714
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 716
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    .line 788
    iget-boolean v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 789
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 824
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return v4

    .line 792
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Boolean);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v7=(Reference);
    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 795
    .local v0, action:I
    #v0=(Integer);
    const/4 v4, 0x1

    .line 797
    .local v4, wantTouchEvents:Z
    #v4=(One);
    and-int/lit16 v7, v0, 0xff

    #v7=(Integer);
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 799
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 800
    .local v5, x:F
    #v5=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 801
    .local v6, y:F
    #v6=(Float);
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 802
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    .line 807
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_1
    #v5=(Uninit);v6=(Uninit);
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v7=(Reference);
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 809
    .restart local v5       #x:F
    #v5=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 810
    .restart local v6       #y:F
    #v6=(Float);
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #v7=(Integer);
    sub-float v1, v5, v7

    .line 811
    .local v1, dx:F
    #v1=(Float);
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v2, v6, v7

    .line 812
    .local v2, dy:F
    #v2=(Float);
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 813
    .local v3, slop:I
    #v3=(Integer);
    mul-float v7, v1, v1

    #v7=(Float);
    mul-float v8, v2, v2

    #v8=(Float);
    add-float/2addr v7, v8

    mul-int v8, v3, v3

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    cmpg-float v7, v7, v8

    #v7=(Byte);
    if-gez v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v7=(Reference);
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v8=(Reference);
    float-to-int v9, v5

    #v9=(Integer);
    float-to-int v10, v6

    #v10=(Integer);
    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 816
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_0

    .line 797
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 720
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 721
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v0=(Reference);
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 724
    :cond_0
    return-void

    .line 722
    :cond_1
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 389
    const/4 v2, 0x0

    .local v2, i:I
    #v2=(Null);
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);v4=(Conflicted);
    if-ge v2, v1, :cond_1

    .line 390
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    #v3=(Integer);
    const/4 v4, 0x4

    #v4=(PosByte);
    if-ne v3, v4, :cond_0

    .line 392
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_0
    #v3=(Integer);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0           #child:Landroid/view/View;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 7
    .parameter "slideOffset"
    .parameter "velocity"

    .prologue
    const/4 v3, 0x0

    .line 1001
    #v3=(Null);
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1016
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v5=(Conflicted);v6=(Conflicted);
    return v3

    .line 1006
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v5=(Uninit);v6=(Uninit);
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1008
    .local v1, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    #v4=(Integer);
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v5=(Integer);
    add-int v0, v4, v5

    .line 1009
    .local v0, leftBound:I
    #v0=(Integer);
    int-to-float v4, v0

    #v4=(Float);
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v5, v5

    #v5=(Float);
    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1011
    .local v2, x:I
    #v2=(Integer);
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #v4=(Reference);
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v5=(Reference);
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v4, v5, v2, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 1012
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1013
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1014
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 19
    .parameter "panel"

    .prologue
    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v11

    .line 349
    .local v11, leftBound:I
    #v11=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v17

    #v17=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v18

    #v18=(Integer);
    sub-int v13, v17, v18

    .line 350
    .local v13, rightBound:I
    #v13=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v15

    .line 351
    .local v15, topBound:I
    #v15=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v18

    sub-int v2, v17, v18

    .line 356
    .local v2, bottomBound:I
    #v2=(Integer);
    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_1

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 358
    .local v10, left:I
    #v10=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v12

    .line 359
    .local v12, right:I
    #v12=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    .line 360
    .local v14, top:I
    #v14=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 365
    .local v1, bottom:I
    :goto_0
    #v1=(Integer);v17=(Integer);
    const/4 v9, 0x0

    .local v9, i:I
    #v9=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    .local v4, childCount:I
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Integer);v16=(Conflicted);
    if-ge v9, v4, :cond_0

    .line 366
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 368
    .local v3, child:Landroid/view/View;
    #v3=(Reference);
    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2

    .line 386
    .end local v3           #child:Landroid/view/View;
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 362
    .end local v1           #bottom:I
    .end local v4           #childCount:I
    .end local v9           #i:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v14           #top:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v12=(Uninit);v14=(Uninit);v16=(Uninit);
    const/4 v1, 0x0

    .restart local v1       #bottom:I
    #v1=(Null);
    move v14, v1

    .restart local v14       #top:I
    #v14=(Null);
    move v12, v1

    .restart local v12       #right:I
    #v12=(Null);
    move v10, v1

    .restart local v10       #left:I
    #v10=(Null);
    goto :goto_0

    .line 373
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #childCount:I
    .restart local v9       #i:I
    :cond_2
    #v0=(Reference);v1=(Integer);v3=(Reference);v4=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Integer);v10=(Integer);v12=(Integer);v14=(Integer);v16=(Conflicted);
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v17

    #v0=(Integer);
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 374
    .local v6, clampedChildLeft:I
    #v6=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 375
    .local v8, clampedChildTop:I
    #v8=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 376
    .local v7, clampedChildRight:I
    #v7=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 378
    .local v5, clampedChildBottom:I
    #v5=(Integer);
    if-lt v6, v10, :cond_3

    if-lt v8, v14, :cond_3

    if-gt v7, v12, :cond_3

    if-gt v5, v1, :cond_3

    .line 380
    const/16 v16, 0x4

    .line 384
    .local v16, vis:I
    :goto_2
    #v16=(PosByte);
    move/from16 v0, v16

    #v0=(PosByte);
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 382
    .end local v16           #vis:I
    :cond_3
    #v0=(Integer);v16=(Conflicted);
    const/16 v16, 0x0

    .restart local v16       #vis:I
    #v16=(Null);
    goto :goto_2
.end method
