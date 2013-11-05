.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_ATTRS:[I


# instance fields
.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [I

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const v2, 0x10100b3

    #v2=(Integer);
    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 217
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 221
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, 0x3f80

    #v5=(Integer);
    const/4 v4, 0x1

    .line 225
    #v4=(One);
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    #p0=(Reference);
    const/high16 v2, -0x6700

    #v2=(Integer);
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 137
    new-instance v2, Landroid/graphics/Paint;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #v2=(Reference);
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 145
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 227
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 228
    .local v0, density:F
    #v0=(Integer);
    const/high16 v2, 0x4280

    #v2=(Integer);
    mul-float/2addr v2, v0

    #v2=(Float);
    const/high16 v3, 0x3f00

    #v3=(Integer);
    add-float/2addr v2, v3

    float-to-int v2, v2

    #v2=(Integer);
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 229
    const/high16 v2, 0x43c8

    mul-float v1, v2, v0

    .line 231
    .local v1, minVel:F
    #v1=(Float);
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #v2=(UninitRef);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    #v2=(Reference);
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 232
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #v2=(UninitRef);
    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    #v2=(Reference);
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 234
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 235
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 236
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 237
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 239
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 240
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 241
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 242
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 245
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 247
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    #v2=(Reference);
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 248
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 249
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    #v0=(Reference);
    return-object v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 1197
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1198
    .local v1, childCount:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);
    if-ge v2, v1, :cond_1

    .line 1199
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1200
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1204
    .end local v0           #child:Landroid/view/View;
    :goto_1
    #v3=(Conflicted);
    return-object v0

    .line 1198
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    #v3=(Boolean);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1204
    .end local v0           #child:Landroid/view/View;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .parameter "gravity"

    .prologue
    .line 578
    and-int/lit8 v0, p0, 0x3

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 579
    const-string v0, "LEFT"

    .line 584
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 581
    :cond_0
    #v0=(Integer);
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 582
    const-string v0, "RIGHT"

    #v0=(Reference);
    goto :goto_0

    .line 584
    :cond_1
    #v0=(Integer);
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 783
    #v1=(Null);
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 784
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    #v2=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 787
    :cond_0
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .prologue
    .line 1158
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1159
    .local v0, childCount:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-ge v1, v0, :cond_1

    .line 1160
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1161
    .local v2, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1162
    const/4 v3, 0x1

    .line 1165
    .end local v2           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_1
    #v2=(Conflicted);
    return v3

    .line 1159
    .restart local v2       #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    #v2=(Reference);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1165
    .end local v2           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

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


# virtual methods
.method cancelChildViewTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1209
    #v5=(Null);
    iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1211
    .local v0, now:J
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

    .line 1213
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    #v8=(Reference);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1214
    .local v9, childCount:I
    #v9=(Integer);
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    #v2=(Conflicted);v10=(Integer);
    if-ge v10, v9, :cond_0

    .line 1215
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1214
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1217
    :cond_0
    #v2=(Conflicted);
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1218
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1220
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    .end local v9           #childCount:I
    .end local v10           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .parameter "drawerView"
    .parameter "checkFor"

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 525
    .local v0, absGravity:I
    #v0=(Integer);
    and-int v1, v0, p2

    #v1=(Integer);
    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1184
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 4
    .parameter "gravity"

    .prologue
    .line 1084
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1085
    .local v0, drawerView:Landroid/view/View;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1086
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "No drawer view found with gravity "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 1089
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1090
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 4
    .parameter "drawerView"

    .prologue
    .line 1058
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1059
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "View "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 1062
    :cond_0
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1063
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1064
    .local v0, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1065
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1074
    .end local v0           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1075
    return-void

    .line 1067
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 1068
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v1=(Reference);
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    #v2=(Integer);
    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1071
    :cond_2
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v1=(Reference);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 978
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .parameter "peekingOnly"

    .prologue
    .line 981
    const/4 v5, 0x0

    .line 982
    .local v5, needsInvalidate:Z
    #v5=(Null);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 983
    .local v1, childCount:I
    #v1=(Integer);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-ge v3, v1, :cond_3

    .line 984
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 985
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 987
    .local v4, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_1

    .line 983
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 991
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 993
    .local v2, childWidth:I
    #v2=(Integer);
    const/4 v6, 0x3

    #v6=(PosByte);
    invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    .line 994
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v6=(Reference);
    neg-int v7, v2

    #v7=(Integer);
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    #v6=(Boolean);
    or-int/2addr v5, v6

    .line 1001
    :goto_2
    const/4 v6, 0x0

    #v6=(Null);
    iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 997
    :cond_2
    #v6=(Boolean);v7=(Conflicted);v8=(Conflicted);
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v6=(Reference);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    #v6=(Boolean);
    or-int/2addr v5, v6

    goto :goto_2

    .line 1004
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childWidth:I
    .end local v4           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_3
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1005
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1007
    if-eqz v5, :cond_4

    .line 1008
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1010
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 768
    #v6=(One);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 769
    .local v0, childCount:I
    #v0=(Integer);
    const/4 v3, 0x0

    .line 770
    .local v3, scrimOpacity:F
    #v3=(Null);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Float);v4=(Conflicted);
    if-ge v1, v0, :cond_0

    .line 771
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 772
    .local v2, onscreen:F
    #v2=(Integer);
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 774
    .end local v2           #onscreen:F
    :cond_0
    #v2=(Conflicted);v4=(Conflicted);
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 777
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v4=(Reference);
    invoke-virtual {v4, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v4

    #v4=(Boolean);
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v5=(Reference);
    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    #v5=(Boolean);
    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 778
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 780
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 2
    .parameter "drawerView"

    .prologue
    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 474
    .local v0, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 475
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 476
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 479
    :cond_0
    const/16 v1, 0x20

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 481
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 2
    .parameter "drawerView"

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 485
    .local v0, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 486
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 487
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 490
    :cond_0
    const/16 v1, 0x20

    #v1=(PosByte);
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 492
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .parameter "drawerView"
    .parameter "slideOffset"

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 498
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 28
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 792
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    .line 793
    .local v18, height:I
    #v18=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    .line 794
    .local v17, drawingContent:Z
    #v17=(Boolean);
    const/4 v13, 0x0

    .local v13, clipLeft:I
    #v13=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v14

    .line 796
    .local v14, clipRight:I
    #v14=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 797
    .local v21, restoreCount:I
    #v21=(Integer);
    if-eqz v17, :cond_4

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v10

    .line 799
    .local v10, childCount:I
    #v10=(Integer);
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v13=(Integer);v19=(Integer);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    move/from16 v0, v19

    #v0=(Integer);
    if-ge v0, v10, :cond_3

    .line 800
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v19

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 801
    .local v25, v:Landroid/view/View;
    #v25=(Reference);
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    #v1=(Reference);
    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    #v2=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    if-ge v2, v0, :cond_1

    .line 799
    :cond_0
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 807
    :cond_1
    #v0=(Integer);v2=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 808
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 809
    .local v27, vright:I
    #v27=(Integer);
    move/from16 v0, v27

    #v0=(Integer);
    if-le v0, v13, :cond_0

    move/from16 v13, v27

    goto :goto_1

    .line 811
    .end local v27           #vright:I
    :cond_2
    #v0=(Reference);v27=(Conflicted);
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 812
    .local v26, vleft:I
    #v26=(Integer);
    move/from16 v0, v26

    #v0=(Integer);
    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_1

    .line 815
    .end local v25           #v:Landroid/view/View;
    .end local v26           #vleft:I
    :cond_3
    #v2=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    #v3=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 817
    .end local v10           #childCount:I
    .end local v19           #i:I
    :cond_4
    #v2=(Conflicted);v3=(Conflicted);v10=(Conflicted);v19=(Conflicted);
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 818
    .local v22, result:Z
    #v22=(Boolean);
    move-object/from16 v0, p1

    move/from16 v1, v21

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 820
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    cmpl-float v2, v2, v3

    #v2=(Byte);
    if-lez v2, :cond_6

    if-eqz v17, :cond_6

    .line 821
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #v2=(Integer);
    const/high16 v3, -0x100

    #v3=(Integer);
    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 822
    .local v9, baseAlpha:I
    #v9=(Char);
    int-to-float v2, v9

    #v2=(Float);
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    #v0=(Integer);
    move/from16 v20, v0

    .line 823
    .local v20, imag:I
    #v20=(Integer);
    shl-int/lit8 v2, v20, 0x18

    #v2=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    #v4=(Integer);
    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 824
    .local v15, color:I
    #v15=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #v2=(Reference);
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    int-to-float v3, v13

    #v3=(Float);
    const/4 v4, 0x0

    #v4=(Null);
    int-to-float v5, v14

    #v5=(Float);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v2

    #v2=(Integer);
    int-to-float v6, v2

    #v6=(Float);
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #v7=(Reference);
    move-object/from16 v2, p1

    #v2=(Reference);
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 849
    .end local v9           #baseAlpha:I
    .end local v15           #color:I
    .end local v20           #imag:I
    :cond_5
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v20=(Conflicted);v23=(Conflicted);v24=(Conflicted);
    return v22

    .line 827
    :cond_6
    #v1=(Integer);v2=(Byte);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);v15=(Uninit);v16=(Uninit);v20=(Uninit);v23=(Uninit);v24=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    if-eqz v2, :cond_7

    const/4 v2, 0x3

    #v2=(PosByte);
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 829
    .local v23, shadowWidth:I
    #v23=(Integer);
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 830
    .local v12, childRight:I
    #v12=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 831
    .local v16, drawerPeekDistance:I
    #v16=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    int-to-float v3, v12

    #v3=(Float);
    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v4, v0

    #v4=(Float);
    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    #v4=(Integer);
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 833
    .local v8, alpha:F
    #v8=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    #v3=(Integer);
    add-int v4, v12, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f

    mul-float/2addr v3, v8

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 837
    .end local v8           #alpha:F
    .end local v12           #childRight:I
    .end local v16           #drawerPeekDistance:I
    .end local v23           #shadowWidth:I
    :cond_7
    #v1=(Conflicted);v2=(Conflicted);v3=(Null);v4=(Uninit);v5=(Uninit);v8=(Uninit);v12=(Uninit);v16=(Uninit);v23=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    if-eqz v2, :cond_5

    const/4 v2, 0x5

    #v2=(PosByte);
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 839
    .restart local v23       #shadowWidth:I
    #v23=(Integer);
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 840
    .local v11, childLeft:I
    #v11=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    #v2=(Integer);
    sub-int v24, v2, v11

    .line 841
    .local v24, showing:I
    #v24=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 842
    .restart local v16       #drawerPeekDistance:I
    #v16=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    move/from16 v0, v24

    #v0=(Integer);
    int-to-float v3, v0

    #v3=(Float);
    move/from16 v0, v16

    int-to-float v4, v0

    #v4=(Float);
    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    #v4=(Integer);
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 844
    .restart local v8       #alpha:F
    #v8=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    sub-int v3, v11, v23

    #v3=(Integer);
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f

    mul-float/2addr v3, v8

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .parameter "gravity"

    .prologue
    .line 558
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    #v5=(Integer);
    invoke-static {p1, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 560
    .local v0, absHorizGravity:I
    #v0=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 561
    .local v3, childCount:I
    #v3=(Integer);
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Integer);
    if-ge v4, v3, :cond_1

    .line 562
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 563
    .local v1, child:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    .line 564
    .local v2, childAbsGravity:I
    #v2=(Integer);
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    .line 568
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childAbsGravity:I
    :goto_1
    #v2=(Conflicted);
    return-object v1

    .line 561
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #childAbsGravity:I
    :cond_0
    #v2=(Integer);
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childAbsGravity:I
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 529
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 530
    .local v1, childCount:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);
    if-ge v2, v1, :cond_1

    .line 531
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 536
    .end local v0           #child:Landroid/view/View;
    :goto_1
    #v3=(Conflicted);
    return-object v0

    .line 530
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    #v3=(Boolean);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    .end local v0           #child:Landroid/view/View;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1170
    #v1=(Byte);
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    #v0=(Reference);
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1189
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1175
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #v0=(UninitRef);
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    .restart local p1
    :cond_0
    #v0=(Boolean);
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #v0=(UninitRef);
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #v0=(Reference);
    goto :goto_0

    .restart local p1
    :cond_1
    #v0=(Boolean);
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 2
    .parameter "drawerView"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 429
    .local v0, absGravity:I
    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 430
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 434
    :goto_0
    #v1=(Integer);
    return v1

    .line 431
    :cond_0
    #v1=(PosByte);
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 432
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #v1=(Integer);
    goto :goto_0

    .line 434
    :cond_1
    #v1=(PosByte);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .parameter "drawerView"

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 520
    .local v0, gravity:I
    #v0=(Integer);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .parameter "drawerView"

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v0=(Integer);
    return v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .parameter "drawerGravity"

    .prologue
    .line 1119
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1120
    .local v0, drawerView:Landroid/view/View;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1123
    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .parameter "drawer"

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "View "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 1106
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #v0=(Boolean);
    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 3
    .parameter "child"

    .prologue
    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 858
    .local v1, gravity:I
    #v1=(Integer);
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 860
    .local v0, absGravity:I
    #v0=(Integer);
    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    return v2

    :cond_0
    #v2=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .parameter "drawerGravity"

    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1151
    .local v0, drawerView:Landroid/view/View;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1154
    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .parameter "drawer"

    .prologue
    .line 1135
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "View "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 1138
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    cmpl-float v0, v0, v1

    #v0=(Byte);
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 595
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 596
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 597
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 589
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 590
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 591
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 865
    #v5=(Null);
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 868
    .local v0, action:I
    #v0=(Integer);
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v7=(Reference);
    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    #v7=(Boolean);
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v8=(Reference);
    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    #v8=(Boolean);
    or-int v1, v7, v8

    .line 871
    .local v1, interceptForDrag:Z
    #v1=(Boolean);
    const/4 v2, 0x0

    .line 873
    .local v2, interceptForTap:Z
    #v2=(Null);
    packed-switch v0, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    #v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Integer);v9=(Conflicted);
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    iget-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v7, :cond_2

    :cond_1
    #v7=(Conflicted);
    move v5, v6

    :cond_2
    #v5=(Boolean);
    return v5

    .line 875
    :pswitch_0
    #v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Null);v7=(Boolean);v8=(Boolean);v9=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 876
    .local v3, x:F
    #v3=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 877
    .local v4, y:F
    #v4=(Float);
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 878
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 879
    iget v7, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #v7=(Integer);
    const/4 v8, 0x0

    #v8=(Null);
    cmpl-float v7, v7, v8

    #v7=(Byte);
    if-lez v7, :cond_3

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v7=(Reference);
    float-to-int v8, v3

    #v8=(Integer);
    float-to-int v9, v4

    #v9=(Integer);
    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 881
    const/4 v2, 0x1

    .line 883
    :cond_3
    #v2=(Boolean);v7=(Byte);v9=(Conflicted);
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 884
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 890
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_1
    #v2=(Null);v3=(Uninit);v4=(Uninit);v7=(Boolean);v8=(Boolean);v9=(Uninit);
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v7=(Reference);
    const/4 v8, 0x3

    #v8=(PosByte);
    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 891
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 892
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 899
    :pswitch_2
    #v7=(Boolean);v8=(Boolean);
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 900
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 901
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 873
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1224
    const/4 v0, 0x4

    #v0=(PosByte);
    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1225
    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    .line 1226
    const/4 v0, 0x1

    .line 1228
    :goto_0
    return v0

    :cond_0
    #v0=(PosByte);
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1233
    const/4 v1, 0x4

    #v1=(PosByte);
    if-ne p1, v1, :cond_2

    .line 1234
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1235
    .local v0, visibleDrawer:Landroid/view/View;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 1236
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1238
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1240
    .end local v0           #visibleDrawer:Landroid/view/View;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 1238
    .restart local v0       #visibleDrawer:Landroid/view/View;
    :cond_1
    #v0=(Reference);v1=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0

    .line 1240
    .end local v0           #visibleDrawer:Landroid/view/View;
    :cond_2
    #v0=(Uninit);v1=(PosByte);
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 677
    const/16 v18, 0x1

    #v18=(One);
    move/from16 v0, v18

    #v0=(One);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 678
    sub-int v17, p4, p2

    .line 679
    .local v17, width:I
    #v17=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 680
    .local v6, childCount:I
    #v6=(Integer);
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Integer);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Integer);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    if-ge v12, v6, :cond_9

    .line 681
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 683
    .local v5, child:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    #v19=(PosByte);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 680
    :cond_0
    :goto_1
    #v1=(Integer);v19=(Integer);
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 687
    :cond_1
    #v1=(PosByte);v19=(PosByte);
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 689
    .local v13, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_2

    .line 690
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    #v19=(Integer);
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    #v20=(Integer);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    #v21=(Integer);
    add-int v20, v20, v21

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    #v22=(Integer);
    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    #v1=(Integer);
    move/from16 v2, v20

    #v2=(Integer);
    move/from16 v3, v21

    #v3=(Integer);
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 694
    :cond_2
    #v0=(Reference);v1=(PosByte);v2=(Conflicted);v3=(Conflicted);v18=(Boolean);v19=(PosByte);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 695
    .local v10, childWidth:I
    #v10=(Integer);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 699
    .local v7, childHeight:I
    #v7=(Integer);
    const/16 v18, 0x3

    #v18=(PosByte);
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_4

    .line 700
    neg-int v0, v10

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    int-to-float v0, v10

    #v0=(Float);
    move/from16 v19, v0

    #v19=(Float);
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    mul-float v19, v19, v20

    move/from16 v0, v19

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    add-int v8, v18, v19

    .line 701
    .local v8, childLeft:I
    #v8=(Integer);
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v18, v0

    #v18=(Float);
    int-to-float v0, v10

    move/from16 v19, v0

    #v19=(Float);
    div-float v14, v18, v19

    .line 707
    .local v14, newOffset:F
    :goto_2
    #v14=(Float);v20=(Conflicted);
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    cmpl-float v18, v14, v18

    #v18=(Byte);
    if-eqz v18, :cond_5

    const/4 v4, 0x1

    .line 709
    .local v4, changeOffset:Z
    :goto_3
    #v4=(Boolean);
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    #v18=(Integer);
    and-int/lit8 v16, v18, 0x70

    .line 711
    .local v16, vgrav:I
    #v16=(Integer);
    sparse-switch v16, :sswitch_data_0

    .line 714
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    #v19=(Integer);
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    #v20=(Integer);
    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    #v1=(Integer);
    move/from16 v2, v20

    #v2=(Integer);
    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 745
    :goto_4
    #v2=(Conflicted);v20=(Conflicted);
    if-eqz v4, :cond_3

    .line 746
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 749
    :cond_3
    #v0=(Conflicted);
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v0=(Integer);
    move/from16 v18, v0

    const/16 v19, 0x0

    #v19=(Null);
    cmpl-float v18, v18, v19

    #v18=(Byte);
    if-lez v18, :cond_8

    const/4 v15, 0x0

    .line 750
    .local v15, newVisibility:I
    :goto_5
    #v15=(PosByte);
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    #v18=(Integer);
    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 751
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 703
    .end local v4           #changeOffset:Z
    .end local v8           #childLeft:I
    .end local v14           #newOffset:F
    .end local v15           #newVisibility:I
    .end local v16           #vgrav:I
    :cond_4
    #v0=(Reference);v1=(PosByte);v4=(Conflicted);v8=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Boolean);v19=(PosByte);
    int-to-float v0, v10

    #v0=(Float);
    move/from16 v18, v0

    #v18=(Float);
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    mul-float v18, v18, v19

    move/from16 v0, v18

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    sub-int v8, v17, v18

    .line 704
    .restart local v8       #childLeft:I
    #v8=(Integer);
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v18, v0

    #v18=(Float);
    int-to-float v0, v10

    move/from16 v19, v0

    #v19=(Float);
    div-float v14, v18, v19

    .restart local v14       #newOffset:F
    #v14=(Float);
    goto :goto_2

    .line 707
    :cond_5
    #v0=(Integer);v18=(Byte);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_3

    .line 720
    .restart local v4       #changeOffset:Z
    .restart local v16       #vgrav:I
    :sswitch_0
    #v4=(Boolean);v16=(Integer);v18=(Integer);
    sub-int v11, p5, p3

    .line 721
    .local v11, height:I
    #v11=(Integer);
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    #v19=(Integer);
    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    #v20=(Integer);
    sub-int v20, v11, v20

    move/from16 v0, v18

    move/from16 v1, v19

    #v1=(Integer);
    move/from16 v2, v20

    #v2=(Integer);
    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 729
    .end local v11           #height:I
    :sswitch_1
    #v1=(PosByte);v2=(Conflicted);v11=(Conflicted);v19=(Float);v20=(Conflicted);
    sub-int v11, p5, p3

    .line 730
    .restart local v11       #height:I
    #v11=(Integer);
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 734
    .local v9, childTop:I
    #v9=(Integer);
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 735
    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 739
    :cond_6
    :goto_6
    #v1=(Integer);v19=(Integer);
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 736
    :cond_7
    #v1=(PosByte);v19=(Float);
    add-int v18, v9, v7

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    #v19=(Integer);
    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    #v1=(Integer);
    if-le v0, v1, :cond_6

    .line 737
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    .line 749
    .end local v9           #childTop:I
    .end local v11           #height:I
    :cond_8
    #v9=(Conflicted);v11=(Conflicted);v18=(Byte);v19=(Null);
    const/4 v15, 0x4

    #v15=(PosByte);
    goto :goto_5

    .line 755
    .end local v4           #changeOffset:Z
    .end local v5           #child:Landroid/view/View;
    .end local v7           #childHeight:I
    .end local v8           #childLeft:I
    .end local v10           #childWidth:I
    .end local v13           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14           #newOffset:F
    .end local v16           #vgrav:I
    :cond_9
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Integer);v19=(Conflicted);
    const/16 v18, 0x0

    #v18=(Null);
    move/from16 v0, v18

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 756
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 757
    return-void

    .line 711
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 601
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 602
    .local v15, widthMode:I
    #v15=(Integer);
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 603
    .local v11, heightMode:I
    #v11=(Integer);
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 604
    .local v16, widthSize:I
    #v16=(Integer);
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 606
    .local v12, heightSize:I
    #v12=(Integer);
    const/high16 v17, 0x4000

    #v17=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    if-ne v15, v0, :cond_0

    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-eq v11, v0, :cond_2

    .line 607
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_5

    .line 612
    const/high16 v17, -0x8000

    #v17=(Integer);
    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 613
    const/high16 v15, 0x4000

    .line 618
    :cond_1
    :goto_0
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    .line 619
    const/high16 v11, 0x4000

    .line 631
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v16

    #v1=(Integer);
    invoke-virtual {v0, v1, v12}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 634
    const/4 v10, 0x0

    .line 635
    .local v10, foundDrawers:I
    #v10=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 636
    .local v4, childCount:I
    #v4=(Integer);
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v13=(Integer);v14=(Conflicted);v18=(Conflicted);
    if-ge v13, v4, :cond_a

    .line 637
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v13}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 639
    .local v3, child:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    #v18=(PosByte);
    move/from16 v0, v17

    #v0=(Integer);
    move/from16 v1, v18

    #v1=(PosByte);
    if-ne v0, v1, :cond_6

    .line 636
    :goto_3
    #v1=(Integer);v18=(Integer);
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 614
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v10           #foundDrawers:I
    .end local v13           #i:I
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v13=(Uninit);v14=(Uninit);v18=(Uninit);
    if-nez v15, :cond_1

    .line 615
    const/high16 v15, 0x4000

    .line 616
    const/16 v16, 0x12c

    #v16=(PosShort);
    goto :goto_0

    .line 621
    :cond_4
    #v16=(Integer);
    if-nez v11, :cond_2

    .line 622
    const/high16 v11, 0x4000

    .line 623
    const/16 v12, 0x12c

    #v12=(PosShort);
    goto :goto_1

    .line 626
    :cond_5
    #v12=(Integer);v17=(Boolean);
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #v17=(UninitRef);
    const-string v18, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    #v18=(Reference);
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v17=(Reference);
    throw v17

    .line 643
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #childCount:I
    .restart local v10       #foundDrawers:I
    .restart local v13       #i:I
    :cond_6
    #v1=(PosByte);v2=(Conflicted);v3=(Reference);v4=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Null);v13=(Integer);v14=(Conflicted);v17=(Integer);v18=(PosByte);
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    #v14=(Reference);
    check-cast v14, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 645
    .local v14, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_7

    .line 647
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    sub-int v17, v16, v17

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    #v18=(Integer);
    sub-int v17, v17, v18

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 649
    .local v7, contentWidthSpec:I
    #v7=(Integer);
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    iget v0, v14, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 651
    .local v6, contentHeightSpec:I
    #v6=(Integer);
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 652
    .end local v6           #contentHeightSpec:I
    .end local v7           #contentWidthSpec:I
    :cond_7
    #v0=(Reference);v6=(Conflicted);v7=(Conflicted);v17=(Boolean);v18=(PosByte);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 653
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v17

    #v17=(Integer);
    and-int/lit8 v5, v17, 0x7

    .line 655
    .local v5, childGravity:I
    #v5=(Integer);
    and-int v17, v10, v5

    if-eqz v17, :cond_8

    .line 656
    new-instance v17, Ljava/lang/IllegalStateException;

    #v17=(UninitRef);
    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #v18=(Reference);
    const-string v19, "Child drawer has absolute gravity "

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but this "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "DrawerLayout"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already has a "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "drawer view along that edge"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v17=(Reference);
    throw v17

    .line 660
    :cond_8
    #v17=(Integer);v18=(PosByte);v19=(Uninit);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    #v0=(Integer);
    move/from16 v17, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    #v18=(Integer);
    add-int v17, v17, v18

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v17

    #v1=(Integer);
    move/from16 v2, v18

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 663
    .local v9, drawerWidthSpec:I
    #v9=(Integer);
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    iget v0, v14, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v8

    .line 666
    .local v8, drawerHeightSpec:I
    #v8=(Integer);
    invoke-virtual {v3, v9, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 668
    .end local v5           #childGravity:I
    .end local v8           #drawerHeightSpec:I
    .end local v9           #drawerWidthSpec:I
    :cond_9
    #v0=(Reference);v1=(PosByte);v2=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v17=(Boolean);v18=(PosByte);
    new-instance v17, Ljava/lang/IllegalStateException;

    #v17=(UninitRef);
    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #v18=(Reference);
    const-string v19, "Child "

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v17=(Reference);
    throw v17

    .line 673
    .end local v3           #child:Landroid/view/View;
    .end local v14           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_a
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);v14=(Conflicted);v17=(Integer);v18=(Conflicted);v19=(Uninit);
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1245
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1246
    .local v0, ss:Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    #v2=(Reference);
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1248
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #v2=(Integer);
    if-eqz v2, :cond_0

    .line 1249
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1250
    .local v1, toOpen:Landroid/view/View;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 1251
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1255
    .end local v1           #toOpen:Landroid/view/View;
    :cond_0
    #v1=(Conflicted);
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1256
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1257
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1261
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1263
    .local v5, superState:Landroid/os/Parcelable;
    #v5=(Reference);
    new-instance v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    #v4=(UninitRef);
    invoke-direct {v4, v5}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1265
    .local v4, ss:Landroid/support/v4/widget/DrawerLayout$SavedState;
    #v4=(Reference);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1266
    .local v1, childCount:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);v6=(Conflicted);
    if-ge v2, v1, :cond_2

    .line 1267
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1268
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 1266
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1273
    .local v3, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v6, :cond_0

    .line 1274
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #v6=(Integer);
    iput v6, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1280
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_2
    #v0=(Conflicted);v3=(Conflicted);v6=(Conflicted);
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #v6=(Integer);
    iput v6, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1281
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v6, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1283
    return-object v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 910
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v10=(Reference);
    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 911
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 914
    .local v0, action:I
    #v0=(Integer);
    const/4 v7, 0x1

    .line 916
    .local v7, wantTouchEvents:Z
    #v7=(One);
    and-int/lit16 v10, v0, 0xff

    #v10=(Integer);
    packed-switch v10, :pswitch_data_0

    .line 957
    :goto_0
    :pswitch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return v7

    .line 918
    :pswitch_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 919
    .local v8, x:F
    #v8=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 920
    .local v9, y:F
    #v9=(Float);
    iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 921
    iput v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 922
    const/4 v10, 0x0

    #v10=(Null);
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 923
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 928
    .end local v8           #x:F
    .end local v9           #y:F
    :pswitch_2
    #v8=(Uninit);v9=(Uninit);v10=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 929
    .restart local v8       #x:F
    #v8=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 930
    .restart local v9       #y:F
    #v9=(Float);
    const/4 v4, 0x1

    .line 931
    .local v4, peekingOnly:Z
    #v4=(One);
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v10=(Reference);
    float-to-int v11, v8

    #v11=(Integer);
    float-to-int v12, v9

    #v12=(Integer);
    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    .line 932
    .local v6, touchedView:Landroid/view/View;
    #v6=(Reference);
    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    .line 933
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #v10=(Integer);
    sub-float v1, v8, v10

    .line 934
    .local v1, dx:F
    #v1=(Float);
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    .line 935
    .local v2, dy:F
    #v2=(Float);
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 936
    .local v5, slop:I
    #v5=(Integer);
    mul-float v10, v1, v1

    #v10=(Float);
    mul-float v11, v2, v2

    #v11=(Float);
    add-float/2addr v10, v11

    mul-int v11, v5, v5

    #v11=(Integer);
    int-to-float v11, v11

    #v11=(Float);
    cmpg-float v10, v10, v11

    #v10=(Byte);
    if-gez v10, :cond_0

    .line 938
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    .line 939
    .local v3, openDrawer:Landroid/view/View;
    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 940
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    #v10=(Integer);
    const/4 v11, 0x2

    #v11=(PosByte);
    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 944
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v3           #openDrawer:Landroid/view/View;
    .end local v5           #slop:I
    :cond_0
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Conflicted);v10=(Conflicted);v11=(Integer);
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 945
    const/4 v10, 0x0

    #v10=(Null);
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    .line 940
    .restart local v1       #dx:F
    .restart local v2       #dy:F
    .restart local v3       #openDrawer:Landroid/view/View;
    .restart local v5       #slop:I
    :cond_1
    #v1=(Float);v2=(Float);v3=(Reference);v4=(One);v5=(Integer);v10=(Integer);v11=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1

    .line 950
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v3           #openDrawer:Landroid/view/View;
    .end local v4           #peekingOnly:Z
    .end local v5           #slop:I
    .end local v6           #touchedView:Landroid/view/View;
    .end local v8           #x:F
    .end local v9           #y:F
    :pswitch_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    const/4 v10, 0x1

    #v10=(One);
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 951
    const/4 v10, 0x0

    #v10=(Null);
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 952
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 916
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 4
    .parameter "gravity"

    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1045
    .local v0, drawerView:Landroid/view/View;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1046
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "No drawer view found with gravity "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 1049
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1050
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 4
    .parameter "drawerView"

    .prologue
    .line 1018
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1019
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "View "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 1022
    :cond_0
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1023
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1024
    .local v0, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/high16 v1, 0x3f80

    #v1=(Integer);
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1025
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1034
    .end local v0           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1035
    return-void

    .line 1027
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 1028
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1030
    :cond_2
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v1=(Reference);
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    #v3=(Integer);
    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .parameter "disallowIntercept"

    .prologue
    .line 965
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 967
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 968
    if-eqz p1, :cond_0

    .line 969
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 971
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 762
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 764
    :cond_0
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 305
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 306
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .parameter "lockMode"

    .prologue
    .line 322
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 323
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 324
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 6
    .parameter "lockMode"
    .parameter "edgeGravity"

    .prologue
    const/4 v5, 0x3

    .line 346
    #v5=(PosByte);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    #v4=(Integer);
    invoke-static {p2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 348
    .local v0, absGravity:I
    #v0=(Integer);
    if-ne v0, v5, :cond_3

    .line 349
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 353
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 355
    if-ne v0, v5, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 356
    .local v1, helper:Landroid/support/v4/widget/ViewDragHelper;
    :goto_1
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 358
    .end local v1           #helper:Landroid/support/v4/widget/ViewDragHelper;
    :cond_1
    #v1=(Conflicted);
    packed-switch p1, :pswitch_data_0

    .line 373
    :cond_2
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 350
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v4, 0x5

    #v4=(PosByte);
    if-ne v0, v4, :cond_0

    .line 351
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 355
    :cond_4
    #v4=(Integer);
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v1=(Reference);
    goto :goto_1

    .line 360
    :pswitch_0
    #v1=(Conflicted);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 361
    .local v3, toOpen:Landroid/view/View;
    #v3=(Reference);
    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 366
    .end local v3           #toOpen:Landroid/view/View;
    :pswitch_1
    #v3=(Uninit);
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 367
    .local v2, toClose:Landroid/view/View;
    #v2=(Reference);
    if-eqz v2, :cond_2

    .line 368
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 358
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "shadowDrawable"
    .parameter "gravity"

    .prologue
    .line 265
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    #v1=(Integer);
    invoke-static {p2, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 267
    .local v0, absGravity:I
    #v0=(Integer);
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    .line 268
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 271
    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 272
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 275
    :cond_1
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .parameter "drawerView"
    .parameter "slideOffset"

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 502
    .local v0, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v1=(Integer);
    cmpl-float v1, p2, v1

    #v1=(Byte);
    if-nez v1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 507
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 7
    .parameter "forGravity"
    .parameter "activeState"
    .parameter "activeDrawer"

    .prologue
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v5, 0x1

    .line 442
    #v5=(One);
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 443
    .local v0, leftState:I
    #v0=(Integer);
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    .line 446
    .local v2, rightState:I
    #v2=(Integer);
    if-eq v0, v5, :cond_0

    if-ne v2, v5, :cond_3

    .line 447
    :cond_0
    const/4 v3, 0x1

    .line 454
    .local v3, state:I
    :goto_0
    #v3=(PosByte);
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 455
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 456
    .local v1, lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    cmpl-float v4, v4, v5

    #v4=(Byte);
    if-nez v4, :cond_6

    .line 457
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 463
    .end local v1           #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    #v1=(Conflicted);v4=(Conflicted);v5=(Integer);
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    #v4=(Integer);
    if-eq v3, v4, :cond_2

    .line 464
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 466
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #v4=(Reference);
    if-eqz v4, :cond_2

    .line 467
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, v3}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 470
    :cond_2
    #v4=(Conflicted);
    return-void

    .line 448
    .end local v3           #state:I
    :cond_3
    #v1=(Uninit);v3=(Uninit);v4=(Reference);v5=(One);
    if-eq v0, v6, :cond_4

    if-ne v2, v6, :cond_5

    .line 449
    :cond_4
    const/4 v3, 0x2

    .restart local v3       #state:I
    #v3=(PosByte);
    goto :goto_0

    .line 451
    .end local v3           #state:I
    :cond_5
    #v3=(Uninit);
    const/4 v3, 0x0

    .restart local v3       #state:I
    #v3=(Null);
    goto :goto_0

    .line 458
    .restart local v1       #lp:Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_6
    #v1=(Reference);v3=(PosByte);v4=(Byte);v5=(Null);
    iget v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #v4=(Integer);
    const/high16 v5, 0x3f80

    #v5=(Integer);
    cmpl-float v4, v4, v5

    #v4=(Byte);
    if-nez v4, :cond_1

    .line 459
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
