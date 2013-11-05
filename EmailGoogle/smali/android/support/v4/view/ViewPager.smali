.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [I

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const v2, 0x10100b3

    #v2=(Integer);
    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 116
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 123
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, -0x1

    .line 344
    #v1=(Byte);
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 130
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 137
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 138
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 139
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 151
    const v0, -0x800001

    #v0=(Integer);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 152
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 161
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 180
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 207
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 208
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 241
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 248
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 345
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, -0x1

    .line 349
    #v1=(Byte);
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 137
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 138
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 139
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 151
    const v0, -0x800001

    #v0=(Integer);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 152
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 161
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 180
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 207
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 208
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 241
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 248
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 350
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 351
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    #v0=(Reference);
    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 14
    .parameter "curItem"
    .parameter "curIndex"
    .parameter "oldCurInfo"

    .prologue
    .line 1122
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1123
    .local v1, N:I
    #v1=(Integer);
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v11

    .line 1124
    .local v11, width:I
    #v11=(Integer);
    if-lez v11, :cond_0

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v12=(Integer);
    int-to-float v12, v12

    #v12=(Float);
    int-to-float v13, v11

    #v13=(Float);
    div-float v6, v12, v13

    .line 1126
    .local v6, marginOffset:F
    :goto_0
    #v6=(Float);v12=(Conflicted);v13=(Conflicted);
    if-eqz p3, :cond_6

    .line 1127
    move-object/from16 v0, p3

    #v0=(Reference);
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1129
    .local v8, oldCurPosition:I
    #v8=(Integer);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-ge v8, v12, :cond_3

    .line 1130
    const/4 v5, 0x0

    .line 1131
    .local v5, itemIndex:I
    #v5=(Null);
    const/4 v3, 0x0

    .line 1132
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v3=(Null);
    move-object/from16 v0, p3

    iget v12, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v13=(Integer);
    add-float/2addr v12, v13

    #v12=(Float);
    add-float v7, v12, v6

    .line 1133
    .local v7, offset:F
    #v7=(Float);
    add-int/lit8 v9, v8, 0x1

    .line 1134
    .local v9, pos:I
    :goto_1
    #v3=(Reference);v5=(Integer);v9=(Integer);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-gt v9, v12, :cond_6

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    if-ge v5, v12, :cond_6

    .line 1135
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1136
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-le v9, v12, :cond_1

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1137
    add-int/lit8 v5, v5, 0x1

    .line 1138
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_2

    .line 1124
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v6           #marginOffset:F
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_0
    #v0=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v13=(Uninit);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_0

    .line 1140
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v5       #itemIndex:I
    .restart local v6       #marginOffset:F
    .restart local v7       #offset:F
    .restart local v8       #oldCurPosition:I
    .restart local v9       #pos:I
    :cond_1
    :goto_3
    #v0=(Reference);v3=(Reference);v5=(Integer);v6=(Float);v7=(Float);v8=(Integer);v9=(Integer);v12=(Integer);v13=(Integer);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1143
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    #v12=(Float);
    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1144
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1146
    :cond_2
    #v12=(Integer);
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1147
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    #v12=(Float);
    add-float/2addr v7, v12

    .line 1134
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1149
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v9           #pos:I
    :cond_3
    #v3=(Uninit);v5=(Uninit);v7=(Uninit);v9=(Uninit);v12=(Integer);v13=(Conflicted);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1150
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    add-int/lit8 v5, v12, -0x1

    .line 1151
    .restart local v5       #itemIndex:I
    #v5=(Integer);
    const/4 v3, 0x0

    .line 1152
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v3=(Null);
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1153
    .restart local v7       #offset:F
    #v7=(Integer);
    add-int/lit8 v9, v8, -0x1

    .line 1154
    .restart local v9       #pos:I
    :goto_4
    #v3=(Reference);v9=(Integer);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1155
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1156
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1157
    add-int/lit8 v5, v5, -0x1

    .line 1158
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_5

    .line 1160
    :cond_4
    :goto_6
    #v12=(Integer);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1163
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    #v12=(Float);
    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1164
    #v7=(Float);
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1166
    :cond_5
    #v7=(Integer);v12=(Integer);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    #v12=(Float);
    sub-float/2addr v7, v12

    .line 1167
    #v7=(Float);
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1154
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1173
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_6
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1174
    .local v4, itemCount:I
    #v4=(Integer);
    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1175
    .restart local v7       #offset:F
    #v7=(Integer);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    add-int/lit8 v9, v12, -0x1

    .line 1176
    .restart local v9       #pos:I
    #v9=(Integer);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1177
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    #v13=(Integer);
    if-ne v12, v13, :cond_8

    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    #v12=(Float);
    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    :goto_8
    #v12=(Integer);
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1180
    add-int/lit8 v2, p2, -0x1

    .local v2, i:I
    :goto_9
    #v2=(Integer);v10=(Conflicted);
    if-ltz v2, :cond_b

    .line 1181
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1182
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_a
    #v12=(Conflicted);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-le v9, v12, :cond_9

    .line 1183
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    add-int/lit8 v10, v9, -0x1

    .end local v9           #pos:I
    .local v10, pos:I
    #v10=(Integer);
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    #v12=(Float);
    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    #v7=(Float);
    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_a

    .line 1176
    .end local v2           #i:I
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_7
    #v2=(Uninit);v3=(Conflicted);v7=(Integer);v10=(Uninit);v12=(Integer);v13=(Conflicted);
    const v12, -0x800001

    goto :goto_7

    .line 1177
    :cond_8
    #v13=(Integer);
    const v12, 0x7f7fffff

    goto :goto_8

    .line 1185
    .restart local v2       #i:I
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_9
    #v2=(Integer);v3=(Reference);v10=(Conflicted);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    #v12=(Float);
    sub-float/2addr v7, v12

    .line 1186
    #v7=(Float);
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1187
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-nez v12, :cond_a

    iput v7, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1180
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1189
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_b
    #v3=(Conflicted);v7=(Integer);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    #v12=(Float);
    add-float v7, v12, v6

    .line 1190
    #v7=(Float);
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    add-int/lit8 v9, v12, 0x1

    .line 1192
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1193
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1194
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_c
    #v12=(Conflicted);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-ge v9, v12, :cond_c

    .line 1195
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    add-int/lit8 v10, v9, 0x1

    .end local v9           #pos:I
    .restart local v10       #pos:I
    #v10=(Integer);
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    #v12=(Float);
    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_c

    .line 1197
    :cond_c
    #v10=(Conflicted);v12=(Integer);
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1198
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    #v12=(Float);
    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1200
    :cond_d
    #v12=(Integer);
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1201
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    #v12=(Float);
    add-float/2addr v7, v12

    .line 1192
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1204
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_e
    #v3=(Conflicted);v12=(Integer);
    const/4 v12, 0x0

    #v12=(Null);
    iput-boolean v12, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1205
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .parameter "postEvents"

    .prologue
    const/4 v7, 0x0

    .line 1736
    #v7=(Null);
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #v8=(Integer);
    const/4 v9, 0x2

    #v9=(PosByte);
    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1737
    .local v2, needPopulate:Z
    :goto_0
    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 1739
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1740
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1741
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1742
    .local v3, oldX:I
    #v3=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1743
    .local v4, oldY:I
    #v4=(Integer);
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1744
    .local v5, x:I
    #v5=(Integer);
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1745
    .local v6, y:I
    #v6=(Integer);
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1746
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1749
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    iput-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1750
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    #v0=(Integer);v1=(Conflicted);
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v8=(Reference);
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    #v8=(Integer);
    if-ge v0, v8, :cond_4

    .line 1751
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v8=(Reference);
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1752
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #v8=(Boolean);
    if-eqz v8, :cond_2

    .line 1753
    const/4 v2, 0x1

    .line 1754
    #v2=(One);
    iput-boolean v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1750
    :cond_2
    #v2=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Integer);
    move v2, v7

    .line 1736
    #v2=(Null);
    goto :goto_0

    .line 1757
    .restart local v0       #i:I
    .restart local v2       #needPopulate:Z
    :cond_4
    #v0=(Integer);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-eqz v2, :cond_5

    .line 1758
    if-eqz p1, :cond_6

    .line 1759
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #v7=(Reference);
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1764
    :cond_5
    :goto_2
    return-void

    .line 1761
    :cond_6
    #v7=(Null);
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #v7=(Reference);
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2151
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    #v1=(Integer);
    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_2

    .line 2152
    if-lez p3, :cond_1

    .line 2158
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 2159
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2160
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v1=(Reference);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2163
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v1=(Integer);
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2166
    :cond_0
    #v2=(Conflicted);
    return p1

    .line 2152
    :cond_1
    #v2=(Uninit);
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2154
    :cond_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd

    .line 2155
    :goto_1
    int-to-float v1, p1

    #v1=(Float);
    add-float/2addr v1, p2

    add-float/2addr v0, v1

    #v0=(Float);
    float-to-int p1, v0

    goto :goto_0

    .line 2154
    :cond_3
    #v0=(Integer);v1=(Integer);
    const v0, 0x3f19999a

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1771
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1772
    .local v0, childCount:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    if-ge v1, v0, :cond_1

    .line 1773
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1775
    .local v2, layerType:I
    :goto_1
    #v2=(PosByte);
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1773
    .end local v2           #layerType:I
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 1777
    :cond_1
    #v2=(Conflicted);
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2399
    #v0=(Null);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2400
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2402
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2404
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2406
    :cond_0
    #v0=(Reference);
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter "outRect"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 2580
    #v2=(Null);
    if-nez p1, :cond_0

    .line 2581
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    #p1=(UninitRef);
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2583
    .restart local p1
    :cond_0
    #p1=(Reference);
    if-nez p2, :cond_2

    .line 2584
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2602
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return-object p1

    .line 2587
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    #v2=(Integer);
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2588
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2589
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2590
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2592
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2593
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    instance-of v2, v1, Landroid/view/ViewGroup;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2594
    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .line 2595
    .local v0, group:Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #v2=(Integer);
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2596
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2597
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2598
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2600
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2601
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2108
    #v8=(Null);
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    .line 2109
    .local v12, width:I
    #v12=(Integer);
    if-lez v12, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v13

    #v13=(Integer);
    int-to-float v13, v13

    #v13=(Float);
    int-to-float v14, v12

    #v14=(Float);
    div-float v11, v13, v14

    .line 2110
    .local v11, scrollOffset:F
    :goto_0
    #v11=(Float);v13=(Conflicted);v14=(Conflicted);
    if-lez v12, :cond_0

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v13=(Integer);
    int-to-float v13, v13

    #v13=(Float);
    int-to-float v14, v12

    #v14=(Float);
    div-float v8, v13, v14

    .line 2111
    .local v8, marginOffset:F
    :cond_0
    #v8=(Float);v13=(Conflicted);v14=(Conflicted);
    const/4 v5, -0x1

    .line 2112
    .local v5, lastPos:I
    #v5=(Byte);
    const/4 v4, 0x0

    .line 2113
    .local v4, lastOffset:F
    #v4=(Null);
    const/4 v6, 0x0

    .line 2114
    .local v6, lastWidth:F
    #v6=(Null);
    const/4 v0, 0x1

    .line 2116
    .local v0, first:Z
    #v0=(One);
    const/4 v3, 0x0

    .line 2117
    .local v3, lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v3=(Null);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v0=(Boolean);v1=(Integer);v2=(Conflicted);v3=(Reference);v4=(Integer);v5=(Integer);v6=(Integer);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v13=(Reference);
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    #v13=(Integer);
    if-ge v1, v13, :cond_4

    .line 2118
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v13=(Reference);
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2120
    .local v2, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v13=(Integer);
    add-int/lit8 v14, v5, 0x1

    #v14=(Integer);
    if-eq v13, v14, :cond_1

    .line 2122
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2123
    add-float v13, v4, v6

    #v13=(Float);
    add-float/2addr v13, v8

    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2124
    add-int/lit8 v13, v5, 0x1

    #v13=(Integer);
    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2125
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v13=(Reference);
    iget v14, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    #v13=(Float);
    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2126
    add-int/lit8 v1, v1, -0x1

    .line 2128
    :cond_1
    #v13=(Conflicted);v14=(Conflicted);
    iget v9, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2130
    .local v9, offset:F
    #v9=(Integer);
    move v7, v9

    .line 2131
    .local v7, leftBound:F
    #v7=(Integer);
    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v13=(Integer);
    add-float/2addr v13, v9

    #v13=(Float);
    add-float v10, v13, v8

    .line 2132
    .local v10, rightBound:F
    #v10=(Float);
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    #v13=(Byte);
    if-ltz v13, :cond_4

    .line 2133
    :cond_2
    #v13=(Float);
    cmpg-float v13, v11, v10

    #v13=(Byte);
    if-ltz v13, :cond_3

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v13=(Reference);
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    #v13=(Integer);
    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2146
    .end local v2           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v3           #lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v7           #leftBound:F
    .end local v9           #offset:F
    .end local v10           #rightBound:F
    :cond_4
    #v2=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-object v3

    .end local v0           #first:Z
    .end local v1           #i:I
    .end local v4           #lastOffset:F
    .end local v5           #lastPos:I
    .end local v6           #lastWidth:F
    .end local v8           #marginOffset:F
    .end local v11           #scrollOffset:F
    :cond_5
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Null);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);
    move v11, v8

    .line 2109
    #v11=(Null);
    goto :goto_0

    .line 2139
    .restart local v0       #first:Z
    .restart local v1       #i:I
    .restart local v2       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v3       #lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4       #lastOffset:F
    .restart local v5       #lastPos:I
    .restart local v6       #lastWidth:F
    .restart local v7       #leftBound:F
    .restart local v8       #marginOffset:F
    .restart local v9       #offset:F
    .restart local v10       #rightBound:F
    .restart local v11       #scrollOffset:F
    :cond_6
    #v0=(Boolean);v1=(Integer);v2=(Reference);v3=(Reference);v4=(Integer);v5=(Integer);v6=(Integer);v7=(Integer);v8=(Float);v9=(Integer);v10=(Float);v11=(Float);v13=(Integer);v14=(Conflicted);
    const/4 v0, 0x0

    .line 2140
    #v0=(Null);
    iget v5, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2141
    move v4, v9

    .line 2142
    iget v6, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2143
    move-object v3, v2

    .line 2117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .parameter "x"
    .parameter "dx"

    .prologue
    const/4 v2, 0x0

    .line 1767
    #v2=(Null);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    cmpg-float v0, p1, v0

    #v0=(Byte);
    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    #v1=(Integer);
    sub-int/2addr v0, v1

    int-to-float v0, v0

    #v0=(Float);
    cmpl-float v0, p1, v0

    #v0=(Byte);
    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    #v1=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_2
    #v0=(Byte);v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 2384
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2385
    .local v2, pointerIndex:I
    #v2=(Integer);
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2386
    .local v1, pointerId:I
    #v1=(Integer);
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #v3=(Integer);
    if-ne v1, v3, :cond_0

    .line 2389
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2390
    .local v0, newPointerIndex:I
    :goto_0
    #v0=(Boolean);
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    #v3=(Float);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2391
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2392
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 2393
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2396
    .end local v0           #newPointerIndex:I
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 2389
    :cond_1
    #v0=(Uninit);v3=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1631
    #v0=(Null);
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 1632
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1633
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1634
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 1635
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "onPageScrolled did not call superclass implementation"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 1640
    :cond_0
    #v0=(Null);v1=(Integer);
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 1641
    #v1=(Reference);
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 1642
    #v2=(Integer);
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v3=(Integer);
    add-int/2addr v3, v2

    .line 1643
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v4=(Integer);
    int-to-float v4, v4

    #v4=(Float);
    int-to-float v5, v2

    #v5=(Float);
    div-float/2addr v4, v5

    .line 1644
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1645
    #v5=(Integer);
    int-to-float v6, p1

    #v6=(Float);
    int-to-float v2, v2

    #v2=(Float);
    div-float v2, v6, v2

    iget v6, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #v6=(Integer);
    sub-float/2addr v2, v6

    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v1=(Integer);
    add-float/2addr v1, v4

    #v1=(Float);
    div-float v1, v2, v1

    .line 1647
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1649
    #v2=(Integer);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1650
    invoke-virtual {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1651
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 1652
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "onPageScrolled did not call superclass implementation"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 1655
    :cond_1
    #v0=(Boolean);v1=(Float);
    const/4 v0, 0x1

    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v0
.end method

.method private performDrag(F)Z
    .locals 17
    .parameter "x"

    .prologue
    .line 2057
    const/4 v7, 0x0

    .line 2059
    .local v7, needsInvalidate:Z
    #v7=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #v14=(Integer);
    sub-float v2, v14, p1

    .line 2060
    .local v2, deltaX:F
    #v2=(Float);
    move/from16 v0, p1

    #v0=(Float);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2062
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2063
    .local v8, oldScrollX:F
    #v8=(Float);
    add-float v12, v8, v2

    .line 2064
    .local v12, scrollX:F
    #v12=(Float);
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v13

    .line 2066
    .local v13, width:I
    #v13=(Integer);
    int-to-float v14, v13

    #v14=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #v15=(Integer);
    mul-float v6, v14, v15

    .line 2067
    .local v6, leftBound:F
    #v6=(Float);
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2068
    .local v11, rightBound:F
    #v11=(Float);
    const/4 v5, 0x1

    .line 2069
    .local v5, leftAbsolute:Z
    #v5=(One);
    const/4 v10, 0x1

    .line 2071
    .local v10, rightAbsolute:Z
    #v10=(One);
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v14=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2072
    .local v3, firstItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v15=(Reference);
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    #v15=(Integer);
    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2073
    .local v4, lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v14=(Integer);
    if-eqz v14, :cond_0

    .line 2074
    const/4 v5, 0x0

    .line 2075
    #v5=(Null);
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    #v15=(Float);
    mul-float v6, v14, v15

    .line 2077
    :cond_0
    #v5=(Boolean);v15=(Integer);
    iget v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v15=(Reference);
    invoke-virtual {v15}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    #v15=(Integer);
    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2078
    const/4 v10, 0x0

    .line 2079
    #v10=(Null);
    iget v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    #v15=(Float);
    mul-float v11, v14, v15

    .line 2082
    :cond_1
    #v10=(Boolean);v15=(Integer);
    cmpg-float v14, v12, v6

    #v14=(Byte);
    if-gez v14, :cond_4

    .line 2083
    if-eqz v5, :cond_2

    .line 2084
    sub-float v9, v6, v12

    .line 2085
    .local v9, over:F
    #v9=(Float);
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v14=(Reference);
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    #v15=(Float);
    int-to-float v0, v13

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2087
    .end local v9           #over:F
    :cond_2
    #v0=(Conflicted);v7=(Boolean);v9=(Conflicted);v14=(Conflicted);v15=(Integer);v16=(Conflicted);
    move v12, v6

    .line 2096
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #v14=(Integer);
    float-to-int v15, v12

    int-to-float v15, v15

    #v15=(Float);
    sub-float v15, v12, v15

    add-float/2addr v14, v15

    #v14=(Float);
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2097
    float-to-int v14, v12

    #v14=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v15

    #v15=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2098
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2100
    return v7

    .line 2088
    :cond_4
    #v7=(Null);v9=(Uninit);v14=(Byte);v16=(Uninit);
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2089
    if-eqz v10, :cond_5

    .line 2090
    sub-float v9, v12, v11

    .line 2091
    .restart local v9       #over:F
    #v9=(Float);
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v14=(Reference);
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    #v15=(Float);
    int-to-float v0, v13

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2093
    .end local v9           #over:F
    :cond_5
    #v0=(Conflicted);v7=(Boolean);v9=(Conflicted);v14=(Conflicted);v15=(Integer);v16=(Conflicted);
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    .line 1468
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 1469
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    #v0=(Integer);
    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1470
    .local v12, widthWithMargin:I
    #v12=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1472
    .local v7, oldWidthWithMargin:I
    #v7=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v13

    .line 1473
    .local v13, xpos:I
    #v13=(Integer);
    int-to-float v0, v13

    #v0=(Float);
    int-to-float v2, v7

    #v2=(Float);
    div-float v8, v0, v2

    .line 1474
    .local v8, pageOffset:F
    #v8=(Float);
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1476
    .local v1, newOffsetPixels:I
    #v1=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1477
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    #v0=(Integer);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    #v2=(Integer);
    sub-int v5, v0, v2

    .line 1480
    .local v5, newDuration:I
    #v5=(Integer);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v11

    .line 1481
    .local v11, targetInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v11=(Reference);
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget v3, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #v3=(Integer);
    int-to-float v4, p1

    #v4=(Float);
    mul-float/2addr v3, v4

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1494
    .end local v1           #newOffsetPixels:I
    .end local v5           #newDuration:I
    .end local v7           #oldWidthWithMargin:I
    .end local v8           #pageOffset:F
    .end local v11           #targetInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v12           #widthWithMargin:I
    .end local v13           #xpos:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-void

    .line 1485
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 1486
    .local v6, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v6=(Reference);
    if-eqz v6, :cond_2

    iget v0, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #v2=(Integer);
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1487
    .local v9, scrollOffset:F
    :goto_1
    #v2=(Conflicted);v9=(Float);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v0, v2

    int-to-float v0, v0

    #v0=(Float);
    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1489
    .local v10, scrollPos:I
    #v10=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    #v0=(Integer);
    if-eq v10, v0, :cond_0

    .line 1490
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1491
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v10, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1486
    .end local v9           #scrollOffset:F
    .end local v10           #scrollPos:I
    :cond_2
    #v2=(Uninit);v9=(Uninit);v10=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 454
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_1

    .line 455
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 457
    .local v2, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 458
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 459
    add-int/lit8 v1, v1, -0x1

    .line 454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Integer);
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .parameter "disallowIntercept"

    .prologue
    .line 2050
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2051
    .local v0, parent:Landroid/view/ViewParent;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 2052
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2054
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "velocity"
    .parameter "dispatchSelected"

    .prologue
    const/4 v7, 0x0

    .line 557
    #v7=(Null);
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 558
    .local v0, curInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v0=(Reference);
    const/4 v1, 0x0

    .line 559
    .local v1, destX:I
    #v1=(Null);
    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 561
    .local v2, width:I
    #v2=(Integer);
    int-to-float v3, v2

    #v3=(Float);
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #v4=(Integer);
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #v5=(Integer);
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #v6=(Integer);
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    #v5=(Float);
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    #v4=(Float);
    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 564
    .end local v2           #width:I
    :cond_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-eqz p2, :cond_3

    .line 565
    invoke-virtual {p0, v1, v7, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 566
    if-eqz p4, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v3=(Reference);
    if-eqz v3, :cond_1

    .line 567
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 569
    :cond_1
    #v3=(Conflicted);
    if-eqz p4, :cond_2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v3=(Reference);
    if-eqz v3, :cond_2

    .line 570
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 583
    :cond_2
    :goto_0
    #v3=(Conflicted);
    return-void

    .line 573
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v3=(Reference);
    if-eqz v3, :cond_4

    .line 574
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 576
    :cond_4
    #v3=(Conflicted);
    if-eqz p4, :cond_5

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v3=(Reference);
    if-eqz v3, :cond_5

    .line 577
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 579
    :cond_5
    #v3=(Conflicted);
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 580
    invoke-virtual {p0, v1, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 581
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 388
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #v0=(Integer);
    if-ne v0, p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 392
    :cond_1
    #v0=(Integer);
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 393
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 395
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    #v0=(Boolean);
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    .line 397
    :cond_2
    #v0=(Conflicted);
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 395
    :cond_3
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2409
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    #v0=(Boolean);
    if-eq v0, p1, :cond_0

    .line 2410
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2421
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1106
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #v3=(Integer);
    if-eqz v3, :cond_2

    .line 1107
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #v3=(Reference);
    if-nez v3, :cond_0

    .line 1108
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #v3=(Reference);
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1112
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1113
    .local v1, childCount:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    #v0=(Conflicted);v2=(Integer);
    if-ge v2, v1, :cond_1

    .line 1114
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1115
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1110
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #i:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1117
    .restart local v1       #childCount:I
    .restart local v2       #i:I
    :cond_1
    #v0=(Conflicted);v1=(Integer);v2=(Integer);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #v4=(Reference);
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1119
    .end local v1           #childCount:I
    .end local v2           #i:I
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2628
    #v1=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2630
    #v2=(Integer);
    const/high16 v0, 0x6

    #v0=(Integer);
    if-eq v2, v0, :cond_1

    .line 2631
    const/4 v0, 0x0

    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    #v3=(Integer);
    if-ge v0, v3, :cond_1

    .line 2632
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2633
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    #v4=(Integer);
    if-nez v4, :cond_0

    .line 2634
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2635
    #v4=(Reference);
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v4=(Integer);
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v5=(Integer);
    if-ne v4, v5, :cond_0

    .line 2636
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2631
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2646
    :cond_1
    #v3=(Conflicted);
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2652
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_4

    .line 2663
    :cond_3
    :goto_1
    #v0=(Integer);
    return-void

    .line 2655
    :cond_4
    #v0=(Boolean);
    and-int/lit8 v0, p3, 0x1

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2659
    :cond_5
    #v0=(Integer);
    if-eqz p1, :cond_3

    .line 2660
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 830
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 831
    .local v0, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v0=(Reference);
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 832
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v1=(Reference);
    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 833
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    #v1=(Float);
    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 834
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    if-lt p2, v1, :cond_1

    .line 835
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :goto_0
    return-object v0

    .line 837
    :cond_1
    #v1=(Integer);
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2673
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_1

    .line 2674
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2675
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2676
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2677
    .local v2, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v2=(Reference);
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v4=(Integer);
    if-ne v3, v4, :cond_0

    .line 2678
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2673
    .end local v2           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    #v2=(Conflicted);v4=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2682
    .end local v0           #child:Landroid/view/View;
    :cond_1
    #v0=(Conflicted);
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1292
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1293
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1295
    #v0=(Reference);
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1296
    .local v0, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/support/v4/view/ViewPager$Decor;

    #v2=(Boolean);
    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1297
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1298
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1299
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef);
    const-string v2, "Cannot add pager decor view during layout"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 1301
    :cond_1
    #v1=(Boolean);v2=(Boolean);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1302
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1314
    :goto_0
    #v1=(Boolean);
    return-void

    .line 1304
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/16 v8, 0x42

    #v8=(PosByte);
    const/16 v7, 0x11

    #v7=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 2514
    #v3=(Null);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2515
    #v2=(Reference);
    if-ne v2, p0, :cond_1

    move-object v0, v1

    .line 2542
    :goto_0
    #v0=(Reference);v5=(Conflicted);v6=(Conflicted);
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2544
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 2545
    if-ne p1, v7, :cond_5

    .line 2548
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2549
    #v2=(Integer);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #v3=(Reference);
    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2550
    #v3=(Integer);
    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    .line 2551
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    .line 2573
    :goto_1
    #v0=(Boolean);v2=(Conflicted);
    if-eqz v0, :cond_0

    .line 2574
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2576
    :cond_0
    #v1=(Conflicted);
    return v0

    .line 2517
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Reference);v3=(Null);v5=(Uninit);v6=(Uninit);
    if-eqz v2, :cond_c

    .line 2519
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    #v0=(Reference);v5=(Conflicted);
    instance-of v5, v0, Landroid/view/ViewGroup;

    #v5=(Boolean);
    if-eqz v5, :cond_d

    .line 2521
    if-ne v0, p0, :cond_2

    move v0, v4

    .line 2526
    :goto_3
    #v0=(Boolean);
    if-nez v0, :cond_c

    .line 2528
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2529
    #v5=(Reference);
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    #v6=(Conflicted);
    instance-of v2, v0, Landroid/view/ViewGroup;

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 2532
    const-string v2, " => "

    #v2=(Reference);
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2520
    :cond_2
    #v5=(Boolean);v6=(Uninit);
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2534
    :cond_3
    #v2=(Boolean);v5=(Reference);v6=(Conflicted);
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    #v6=(Reference);
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2536
    #v0=(Null);
    goto/16 :goto_0

    .line 2553
    :cond_4
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(Integer);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_1

    .line 2555
    :cond_5
    #v0=(Reference);v2=(Reference);v3=(Null);
    if-ne p1, v8, :cond_b

    .line 2558
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2559
    #v2=(Integer);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #v3=(Reference);
    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2560
    #v3=(Integer);
    if-eqz v0, :cond_6

    if-gt v2, v3, :cond_6

    .line 2561
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    #v0=(Boolean);
    goto/16 :goto_1

    .line 2563
    :cond_6
    #v0=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    #v0=(Boolean);
    goto/16 :goto_1

    .line 2566
    :cond_7
    #v0=(Reference);v2=(Reference);v3=(Null);
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    .line 2568
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    #v0=(Boolean);
    goto/16 :goto_1

    .line 2569
    :cond_9
    #v0=(Reference);
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    #v0=(PosByte);
    if-ne p1, v0, :cond_b

    .line 2571
    :cond_a
    #v0=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    #v0=(Boolean);
    goto/16 :goto_1

    :cond_b
    #v0=(Conflicted);
    move v0, v3

    #v0=(Null);
    goto/16 :goto_1

    :cond_c
    #v0=(Conflicted);v1=(Null);v6=(Uninit);
    move-object v0, v2

    #v0=(Reference);
    goto/16 :goto_0

    :cond_d
    #v5=(Boolean);
    move v0, v3

    #v0=(Null);
    goto/16 :goto_3
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2451
    instance-of v0, p1, Landroid/view/ViewGroup;

    #v0=(Boolean);
    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2452
    #v7=(Reference);
    check-cast v7, Landroid/view/ViewGroup;

    .line 2453
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2454
    .local v9, scrollX:I
    #v9=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2455
    .local v10, scrollY:I
    #v10=(Integer);
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2457
    .local v6, count:I
    #v6=(Integer);
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Integer);
    if-ltz v8, :cond_1

    .line 2460
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2461
    .local v1, child:Landroid/view/View;
    #v1=(Reference);
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    #v2=(Integer);
    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    #v2=(One);
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    #v3=(Integer);
    sub-int v4, v0, v3

    #v4=(Integer);
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    #v5=(Integer);
    move-object v0, p0

    #v0=(Reference);
    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 2465
    const/4 v0, 0x1

    .line 2470
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return v0

    .line 2457
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    #v0=(Integer);v1=(Reference);v2=(Integer);v6=(Integer);v7=(Reference);v8=(Integer);v9=(Integer);v10=(Integer);
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2470
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_1

    :cond_2
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 2424
    #v3=(Null);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v4=(Reference);
    if-nez v4, :cond_1

    .line 2435
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v3

    .line 2428
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v4=(Reference);v5=(Uninit);
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 2429
    .local v1, width:I
    #v1=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 2430
    .local v0, scrollX:I
    #v0=(Integer);
    if-gez p1, :cond_3

    .line 2431
    int-to-float v4, v1

    #v4=(Float);
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #v5=(Integer);
    mul-float/2addr v4, v5

    float-to-int v4, v4

    #v4=(Integer);
    if-le v0, v4, :cond_2

    :goto_1
    #v2=(Boolean);
    move v3, v2

    #v3=(Boolean);
    goto :goto_0

    :cond_2
    #v2=(One);v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_1

    .line 2432
    :cond_3
    #v2=(One);v4=(Reference);v5=(Uninit);
    if-lez p1, :cond_0

    .line 2433
    int-to-float v4, v1

    #v4=(Float);
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #v5=(Integer);
    mul-float/2addr v4, v5

    float-to-int v4, v4

    #v4=(Integer);
    if-ge v0, v4, :cond_4

    :goto_2
    #v2=(Boolean);
    move v3, v2

    #v3=(Boolean);
    goto :goto_0

    :cond_4
    #v2=(One);v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2752
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

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

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1607
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 1608
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1609
    .local v0, oldX:I
    #v0=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1610
    .local v1, oldY:I
    #v1=(Integer);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1611
    .local v2, x:I
    #v2=(Integer);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1613
    .local v3, y:I
    #v3=(Integer);
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1614
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1615
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1616
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1617
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1622
    :cond_1
    #v4=(Conflicted);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1628
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 1627
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);
    const/4 v4, 0x1

    #v4=(One);
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v11, 0x0

    .line 845
    #v11=(Null);
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 846
    .local v0, adapterCount:I
    #v0=(Integer);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 847
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    iget v13, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #v13=(Integer);
    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    if-ge v12, v0, :cond_1

    move v7, v10

    .line 849
    .local v7, needPopulate:Z
    :goto_0
    #v7=(Boolean);
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 851
    .local v8, newCurrItem:I
    #v8=(Integer);
    const/4 v5, 0x0

    .line 852
    .local v5, isUpdating:Z
    #v5=(Null);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #v3=(Integer);v4=(Conflicted);v5=(Boolean);v9=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    #v12=(Integer);
    if-ge v3, v12, :cond_6

    .line 853
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 854
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v13, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #v13=(Reference);
    invoke-virtual {v12, v13}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 856
    .local v9, newPos:I
    #v9=(Integer);
    const/4 v12, -0x1

    #v12=(Byte);
    if-ne v9, v12, :cond_2

    .line 852
    :cond_0
    :goto_2
    #v12=(Integer);v13=(Conflicted);
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3           #i:I
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #isUpdating:Z
    .end local v7           #needPopulate:Z
    .end local v8           #newCurrItem:I
    .end local v9           #newPos:I
    :cond_1
    #v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v13=(Integer);v14=(Uninit);
    move v7, v11

    .line 847
    #v7=(Null);
    goto :goto_0

    .line 860
    .restart local v3       #i:I
    .restart local v4       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v5       #isUpdating:Z
    .restart local v7       #needPopulate:Z
    .restart local v8       #newCurrItem:I
    .restart local v9       #newPos:I
    :cond_2
    #v3=(Integer);v4=(Reference);v5=(Boolean);v7=(Boolean);v8=(Integer);v9=(Integer);v12=(Byte);v13=(Reference);v14=(Conflicted);
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 861
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 862
    add-int/lit8 v3, v3, -0x1

    .line 864
    if-nez v5, :cond_3

    .line 865
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 866
    const/4 v5, 0x1

    .line 869
    :cond_3
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v13=(Integer);
    iget-object v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #v14=(Reference);
    invoke-virtual {v12, p0, v13, v14}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 870
    const/4 v7, 0x1

    .line 872
    #v7=(One);
    iget v12, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v12=(Integer);
    iget v13, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 874
    iget v12, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 875
    const/4 v7, 0x1

    goto :goto_2

    .line 880
    :cond_4
    #v7=(Boolean);v12=(Byte);v13=(Reference);v14=(Conflicted);
    iget v12, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v12=(Integer);
    if-eq v12, v9, :cond_0

    .line 881
    iget v12, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v13=(Integer);
    if-ne v12, v13, :cond_5

    .line 883
    move v8, v9

    .line 886
    :cond_5
    iput v9, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 887
    const/4 v7, 0x1

    #v7=(One);
    goto :goto_2

    .line 891
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v9           #newPos:I
    :cond_6
    #v4=(Conflicted);v7=(Boolean);v9=(Conflicted);v13=(Conflicted);
    if-eqz v5, :cond_7

    .line 892
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v12=(Reference);
    invoke-virtual {v12, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 895
    :cond_7
    #v12=(Conflicted);
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v12=(Reference);
    sget-object v13, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #v13=(Reference);
    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 897
    if-eqz v7, :cond_a

    .line 899
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 900
    .local v2, childCount:I
    #v2=(Integer);
    const/4 v3, 0x0

    :goto_3
    #v1=(Conflicted);v6=(Conflicted);v12=(Conflicted);
    if-ge v3, v2, :cond_9

    .line 901
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 902
    .local v1, child:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 903
    .local v6, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v12, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v12=(Boolean);
    if-nez v12, :cond_8

    .line 904
    const/4 v12, 0x0

    #v12=(Null);
    iput v12, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 900
    :cond_8
    #v12=(Boolean);
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 908
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_9
    #v1=(Conflicted);v6=(Conflicted);v12=(Conflicted);
    invoke-virtual {p0, v8, v11, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 909
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 911
    .end local v2           #childCount:I
    :cond_a
    #v2=(Conflicted);
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2476
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2720
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    #v4=(Integer);
    const/16 v5, 0x1000

    #v5=(PosShort);
    if-ne v4, v5, :cond_0

    .line 2721
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2737
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Integer);
    return v4

    .line 2725
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(PosShort);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2726
    .local v1, childCount:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);v5=(Integer);
    if-ge v2, v1, :cond_2

    .line 2727
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2728
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2729
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2730
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v3=(Reference);
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 2732
    const/4 v4, 0x1

    #v4=(One);
    goto :goto_0

    .line 2726
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    #v3=(Conflicted);v4=(Integer);
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2737
    .end local v0           #child:Landroid/view/View;
    :cond_2
    #v0=(Conflicted);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 766
    const/high16 v0, 0x3f00

    #v0=(Integer);
    sub-float/2addr p1, v0

    .line 767
    float-to-double v0, p1

    #v0=(DoubleLo);v1=(DoubleHi);
    const-wide v2, 0x3fde28c7460698c7L

    #v2=(LongLo);v3=(LongHi);
    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 768
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    #v0=(Float);
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2171
    #v2=(One);
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2172
    const/4 v0, 0x0

    .line 2174
    #v0=(Null);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 2175
    #v1=(Integer);
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v1=(Reference);
    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    #v1=(Integer);
    if-le v1, v2, :cond_4

    .line 2178
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 2179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2180
    #v1=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    #v3=(Integer);
    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2181
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 2183
    const/high16 v4, 0x4387

    #v4=(Integer);
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2184
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    #v5=(Integer);
    add-int/2addr v4, v5

    int-to-float v4, v4

    #v4=(Float);
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    #v6=(Float);
    mul-float/2addr v5, v6

    #v5=(Float);
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2185
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v4=(Reference);
    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2186
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    #v2=(Boolean);
    or-int/2addr v0, v2

    .line 2187
    #v0=(Boolean);
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2189
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 2190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2191
    #v1=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2192
    #v2=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    #v4=(Integer);
    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2194
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2195
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    #v4=(Float);
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #v5=(Integer);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    add-float/2addr v5, v6

    #v5=(Float);
    neg-float v5, v5

    int-to-float v6, v2

    #v6=(Float);
    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2196
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v4=(Reference);
    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2197
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    #v2=(Boolean);
    or-int/2addr v0, v2

    .line 2198
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2205
    :cond_2
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-eqz v0, :cond_3

    .line 2207
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2209
    :cond_3
    return-void

    .line 2201
    :cond_4
    #v0=(Null);v2=(One);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2202
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 754
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 755
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 756
    .local v0, d:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 759
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2488
    #v3=(One);
    const/4 v0, 0x0

    .line 2489
    .local v0, handled:Z
    #v0=(Null);
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 2490
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2510
    :cond_0
    :goto_0
    #v0=(Boolean);v2=(Conflicted);
    return v0

    .line 2492
    :sswitch_0
    #v0=(Null);v2=(Uninit);
    const/16 v1, 0x11

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2493
    #v0=(Boolean);
    goto :goto_0

    .line 2495
    :sswitch_1
    #v0=(Null);v1=(Integer);
    const/16 v1, 0x42

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2496
    #v0=(Boolean);
    goto :goto_0

    .line 2498
    :sswitch_2
    #v0=(Null);v1=(Integer);
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    #v2=(PosByte);
    if-lt v1, v2, :cond_0

    .line 2501
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 2502
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 2503
    :cond_1
    #v0=(Null);v1=(Boolean);
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2504
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 2490
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2742
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2757
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2747
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 642
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #v2=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 643
    .local v0, index:I
    :goto_0
    #v0=(Integer);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v1, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 644
    .local v1, result:I
    #v1=(Integer);
    return v1

    .end local v0           #index:I
    .end local v1           #result:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);
    move v0, p2

    .line 642
    #v0=(Integer);
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 1337
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    #v0=(Reference);
    if-eq v0, p0, :cond_2

    .line 1338
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 1339
    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    .line 1343
    :goto_1
    #v1=(Reference);
    return-object v1

    :cond_1
    #v1=(Boolean);
    move-object p1, v0

    .line 1341
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1343
    :cond_2
    #v1=(Conflicted);
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    #v1=(Reference);
    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 1326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    #v2=(Integer);
    if-ge v0, v2, :cond_1

    .line 1327
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1328
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #v3=(Reference);
    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1332
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    #v2=(Integer);v3=(Conflicted);
    return-object v1

    .line 1326
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    #v2=(Boolean);v3=(Reference);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    #v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    #v2=(Integer);
    if-ge v0, v2, :cond_1

    .line 1348
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1349
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v2=(Integer);
    if-ne v2, p1, :cond_0

    .line 1353
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1347
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 354
    #v5=(One);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 355
    const/high16 v3, 0x4

    #v3=(Integer);
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 356
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 357
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    .local v1, context:Landroid/content/Context;
    #v1=(Reference);
    new-instance v3, Landroid/widget/Scroller;

    #v3=(UninitRef);
    sget-object v4, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #v4=(Reference);
    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #v3=(Reference);
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 359
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 360
    .local v0, configuration:Landroid/view/ViewConfiguration;
    #v0=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 362
    .local v2, density:F
    #v2=(Integer);
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 363
    const/high16 v3, 0x43c8

    mul-float/2addr v3, v2

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 364
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 365
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    #v3=(UninitRef);
    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 366
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    #v3=(UninitRef);
    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 368
    const/high16 v3, 0x41c8

    #v3=(Integer);
    mul-float/2addr v3, v2

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    .line 369
    const/high16 v3, 0x4000

    mul-float/2addr v3, v2

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    .line 370
    const/high16 v3, 0x4180

    mul-float/2addr v3, v2

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 372
    new-instance v3, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    #v3=(Reference);
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 374
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    #v3=(Integer);
    if-nez v3, :cond_0

    .line 376
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 379
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1358
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1359
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1360
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 385
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 2213
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2216
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v13=(Integer);
    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #v13=(Reference);
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    #v13=(Integer);
    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v13=(Reference);
    if-eqz v13, :cond_2

    .line 2217
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v10

    .line 2218
    .local v10, scrollX:I
    #v10=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v11

    .line 2220
    .local v11, width:I
    #v11=(Integer);
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v13=(Integer);
    int-to-float v13, v13

    #v13=(Float);
    int-to-float v14, v11

    #v14=(Float);
    div-float v7, v13, v14

    .line 2221
    .local v7, marginOffset:F
    #v7=(Float);
    const/4 v5, 0x0

    .line 2222
    .local v5, itemIndex:I
    #v5=(Null);
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v13=(Reference);
    const/4 v14, 0x0

    #v14=(Null);
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2223
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v8, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2224
    .local v8, offset:F
    #v8=(Integer);
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2225
    .local v4, itemCount:I
    #v4=(Integer);
    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2226
    .local v2, firstPos:I
    #v2=(Integer);
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    #v14=(Integer);
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v6, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2227
    .local v6, lastPos:I
    #v6=(Integer);
    move v9, v2

    .local v9, pos:I
    :goto_0
    #v1=(Conflicted);v5=(Integer);v9=(Integer);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    if-ge v9, v6, :cond_2

    .line 2228
    :goto_1
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v13=(Integer);
    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2229
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v13=(Reference);
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_1

    .line 2233
    :cond_0
    #v13=(Integer);
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2234
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    #v13=(Float);
    int-to-float v14, v11

    #v14=(Float);
    mul-float v1, v13, v14

    .line 2235
    .local v1, drawAt:F
    #v1=(Float);
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #v13=(Integer);
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v14=(Integer);
    add-float/2addr v13, v14

    #v13=(Float);
    add-float v8, v13, v7

    .line 2242
    :goto_2
    #v8=(Float);
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v13=(Integer);
    int-to-float v13, v13

    #v13=(Float);
    add-float/2addr v13, v1

    int-to-float v14, v10

    #v14=(Float);
    cmpl-float v13, v13, v14

    #v13=(Byte);
    if-lez v13, :cond_1

    .line 2243
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #v13=(Reference);
    float-to-int v14, v1

    #v14=(Integer);
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    #v15=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v0=(Integer);
    move/from16 v16, v0

    #v16=(Integer);
    move/from16 v0, v16

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    add-float v16, v16, v1

    const/high16 v17, 0x3f00

    #v17=(Integer);
    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v16, v0

    #v16=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    #v0=(Integer);
    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2245
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2248
    :cond_1
    #v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    add-int v13, v10, v11

    #v13=(Integer);
    int-to-float v13, v13

    #v13=(Float);
    cmpl-float v13, v1, v13

    #v13=(Byte);
    if-lez v13, :cond_4

    .line 2253
    .end local v1           #drawAt:F
    .end local v2           #firstPos:I
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v4           #itemCount:I
    .end local v5           #itemIndex:I
    .end local v6           #lastPos:I
    .end local v7           #marginOffset:F
    .end local v8           #offset:F
    .end local v9           #pos:I
    .end local v10           #scrollX:I
    .end local v11           #width:I
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    return-void

    .line 2237
    .restart local v2       #firstPos:I
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4       #itemCount:I
    .restart local v5       #itemIndex:I
    .restart local v6       #lastPos:I
    .restart local v7       #marginOffset:F
    .restart local v8       #offset:F
    .restart local v9       #pos:I
    .restart local v10       #scrollX:I
    .restart local v11       #width:I
    :cond_3
    #v2=(Integer);v3=(Reference);v4=(Integer);v5=(Integer);v6=(Integer);v7=(Float);v8=(Integer);v9=(Integer);v10=(Integer);v11=(Integer);v13=(Integer);v14=(Integer);
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v13=(Reference);
    invoke-virtual {v13, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2238
    .local v12, widthFactor:F
    #v12=(Float);
    add-float v13, v8, v12

    #v13=(Float);
    int-to-float v14, v11

    #v14=(Float);
    mul-float v1, v13, v14

    .line 2239
    .restart local v1       #drawAt:F
    #v1=(Float);
    add-float v13, v12, v7

    add-float/2addr v8, v13

    #v8=(Float);
    goto :goto_2

    .line 2227
    .end local v12           #widthFactor:F
    :cond_4
    #v12=(Conflicted);v13=(Byte);v14=(Integer);
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v6, v0, 0xff

    .line 1790
    .local v6, action:I
    #v6=(Integer);
    const/4 v0, 0x3

    #v0=(PosByte);
    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    if-ne v6, v0, :cond_2

    .line 1793
    :cond_0
    #v0=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1795
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1796
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1798
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1800
    :cond_1
    #v0=(Reference);
    const/4 v0, 0x0

    .line 1920
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return v0

    .line 1805
    :cond_2
    #v0=(One);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    if-eqz v6, :cond_4

    .line 1806
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 1808
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 1810
    :cond_3
    #v0=(Boolean);
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1812
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 1816
    :cond_4
    #v0=(Boolean);
    sparse-switch v6, :sswitch_data_0

    .line 1911
    :cond_5
    :goto_1
    #v0=(Byte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #v0=(Reference);
    if-nez v0, :cond_6

    .line 1912
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1914
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1920
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    goto :goto_0

    .line 1827
    :sswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1828
    .local v7, activePointerId:I
    #v7=(Integer);
    const/4 v0, -0x1

    #v0=(Byte);
    if-eq v7, v0, :cond_5

    .line 1833
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1834
    .local v9, pointerIndex:I
    #v9=(Integer);
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1835
    .local v10, x:F
    #v10=(Float);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #v0=(Integer);
    sub-float v8, v10, v0

    .line 1836
    .local v8, dx:F
    #v8=(Float);
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1837
    .local v11, xDiff:F
    #v11=(Float);
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1838
    .local v12, y:F
    #v12=(Float);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    #v0=(Float);
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1841
    .local v13, yDiff:F
    #v13=(Float);
    const/4 v0, 0x0

    #v0=(Null);
    cmpl-float v0, v8, v0

    #v0=(Byte);
    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #v0=(Integer);
    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_7

    const/4 v2, 0x0

    #v2=(Null);
    float-to-int v3, v8

    #v3=(Integer);
    float-to-int v4, v10

    #v4=(Integer);
    float-to-int v5, v12

    #v5=(Integer);
    move-object v0, p0

    #v0=(Reference);
    move-object v1, p0

    #v1=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_7

    .line 1844
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1845
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1846
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1847
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 1849
    :cond_7
    #v0=(Byte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    cmpl-float v0, v11, v0

    #v0=(Byte);
    if-lez v0, :cond_a

    const/high16 v0, 0x3f00

    #v0=(Integer);
    mul-float/2addr v0, v11

    #v0=(Float);
    cmpl-float v0, v0, v13

    #v0=(Byte);
    if-lez v0, :cond_a

    .line 1851
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1852
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1853
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1854
    const/4 v0, 0x0

    #v0=(Null);
    cmpl-float v0, v8, v0

    #v0=(Byte);
    if-lez v0, :cond_9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #v0=(Integer);
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    add-float/2addr v0, v1

    :goto_2
    #v0=(Float);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1856
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1857
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1866
    :cond_8
    :goto_3
    #v0=(Byte);v1=(Conflicted);
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    if-eqz v0, :cond_5

    .line 1868
    invoke-direct {p0, v10}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1869
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1854
    :cond_9
    #v0=(Byte);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #v0=(Integer);
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    sub-float/2addr v0, v1

    #v0=(Float);
    goto :goto_2

    .line 1858
    :cond_a
    #v0=(Byte);v1=(Conflicted);
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    cmpl-float v0, v13, v0

    #v0=(Byte);
    if-lez v0, :cond_8

    .line 1864
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1880
    .end local v7           #activePointerId:I
    .end local v8           #dx:F
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:F
    .end local v12           #y:F
    .end local v13           #yDiff:F
    :sswitch_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    #v0=(Float);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1882
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1883
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1885
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1886
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-ne v0, v1, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 1889
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1890
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1891
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1892
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1893
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1894
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1896
    :cond_b
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1897
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1907
    :sswitch_2
    #v0=(Boolean);v1=(Uninit);
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1816
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1498
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1499
    .local v9, count:I
    #v9=(Integer);
    sub-int v24, p4, p2

    .line 1500
    .local v24, width:I
    #v24=(Integer);
    sub-int v11, p5, p3

    .line 1501
    .local v11, height:I
    #v11=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v19

    .line 1502
    .local v19, paddingLeft:I
    #v19=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v21

    .line 1503
    .local v21, paddingTop:I
    #v21=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v20

    .line 1504
    .local v20, paddingRight:I
    #v20=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v18

    .line 1505
    .local v18, paddingBottom:I
    #v18=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v22

    .line 1507
    .local v22, scrollX:I
    #v22=(Integer);
    const/4 v10, 0x0

    .line 1511
    .local v10, decorCount:I
    #v10=(Null);
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Integer);v13=(Conflicted);v14=(Integer);v17=(Conflicted);v23=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    if-ge v14, v9, :cond_1

    .line 1512
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1513
    .local v5, child:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    #v26=(Integer);
    const/16 v27, 0x8

    #v27=(PosByte);
    move/from16 v0, v26

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 1514
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1515
    .local v17, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1516
    .local v6, childLeft:I
    #v6=(Null);
    const/4 v7, 0x0

    .line 1517
    .local v7, childTop:I
    #v7=(Null);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v0=(Boolean);
    move/from16 v26, v0

    #v26=(Boolean);
    if-eqz v26, :cond_0

    .line 1518
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    and-int/lit8 v13, v26, 0x7

    .line 1519
    .local v13, hgrav:I
    #v13=(Integer);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #v0=(Integer);
    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1520
    .local v23, vgrav:I
    #v23=(Integer);
    packed-switch v13, :pswitch_data_0

    .line 1522
    :pswitch_0
    move/from16 v6, v19

    .line 1537
    :goto_1
    #v1=(Integer);v6=(Integer);v27=(Integer);
    sparse-switch v23, :sswitch_data_0

    .line 1539
    move/from16 v7, v21

    .line 1554
    :goto_2
    #v7=(Integer);
    add-int v6, v6, v22

    .line 1555
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1558
    add-int/lit8 v10, v10, 0x1

    .line 1511
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v13           #hgrav:I
    .end local v17           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v23           #vgrav:I
    :cond_0
    #v6=(Conflicted);v7=(Conflicted);v13=(Conflicted);v17=(Conflicted);v23=(Conflicted);
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1525
    .restart local v6       #childLeft:I
    .restart local v7       #childTop:I
    .restart local v13       #hgrav:I
    .restart local v17       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v23       #vgrav:I
    :pswitch_1
    #v1=(PosByte);v6=(Null);v7=(Null);v13=(Integer);v17=(Reference);v23=(Integer);v27=(PosByte);
    move/from16 v6, v19

    .line 1526
    #v6=(Integer);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1527
    goto :goto_1

    .line 1529
    :pswitch_2
    #v6=(Null);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1531
    #v6=(Integer);
    goto :goto_1

    .line 1533
    :pswitch_3
    #v1=(PosByte);v6=(Null);
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    #v27=(Integer);
    sub-int v6, v26, v27

    .line 1534
    #v6=(Integer);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1542
    :sswitch_0
    #v1=(Integer);
    move/from16 v7, v21

    .line 1543
    #v7=(Integer);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1544
    goto :goto_2

    .line 1546
    :sswitch_1
    #v7=(Null);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1548
    #v7=(Integer);
    goto :goto_2

    .line 1550
    :sswitch_2
    #v7=(Null);
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1551
    #v7=(Integer);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1563
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v13           #hgrav:I
    .end local v17           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v23           #vgrav:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v13=(Conflicted);v17=(Conflicted);v23=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    sub-int v26, v24, v19

    #v26=(Integer);
    sub-int v8, v26, v20

    .line 1565
    .local v8, childWidth:I
    #v8=(Integer);
    const/4 v14, 0x0

    :goto_3
    #v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v25=(Conflicted);
    if-ge v14, v9, :cond_4

    .line 1566
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1567
    .restart local v5       #child:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    #v27=(PosByte);
    move/from16 v0, v26

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(PosByte);
    if-eq v0, v1, :cond_3

    .line 1568
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1570
    .restart local v17       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v0=(Boolean);
    move/from16 v26, v0

    #v26=(Boolean);
    if-nez v26, :cond_3

    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v15

    .local v15, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v15=(Reference);
    if-eqz v15, :cond_3

    .line 1571
    int-to-float v0, v8

    #v0=(Float);
    move/from16 v26, v0

    #v26=(Float);
    iget v0, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    mul-float v26, v26, v27

    move/from16 v0, v26

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v16, v0

    .line 1572
    .local v16, loff:I
    #v16=(Integer);
    add-int v6, v19, v16

    .line 1573
    .restart local v6       #childLeft:I
    #v6=(Integer);
    move/from16 v7, v21

    .line 1574
    .restart local v7       #childTop:I
    #v7=(Integer);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #v0=(Boolean);
    move/from16 v26, v0

    #v26=(Boolean);
    if-eqz v26, :cond_2

    .line 1577
    const/16 v26, 0x0

    #v26=(Null);
    move/from16 v0, v26

    #v0=(Null);
    move-object/from16 v1, v17

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1578
    int-to-float v0, v8

    #v0=(Float);
    move/from16 v26, v0

    #v26=(Float);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1581
    .local v25, widthSpec:I
    #v25=(Integer);
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1584
    .local v12, heightSpec:I
    #v12=(Integer);
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1589
    .end local v12           #heightSpec:I
    .end local v25           #widthSpec:I
    :cond_2
    #v1=(Conflicted);v12=(Conflicted);v25=(Conflicted);
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    #v1=(Integer);
    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1565
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v15           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v16           #loff:I
    .end local v17           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_3
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1595
    .end local v5           #child:Landroid/view/View;
    :cond_4
    #v1=(Conflicted);v5=(Conflicted);v27=(Conflicted);
    move/from16 v0, v21

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1596
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1597
    move-object/from16 v0, p0

    #v0=(Reference);
    iput v10, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1599
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #v0=(Boolean);
    move/from16 v26, v0

    #v26=(Boolean);
    if-eqz v26, :cond_5

    .line 1600
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v26, v0

    #v26=(Integer);
    const/16 v27, 0x0

    #v27=(Null);
    const/16 v28, 0x0

    #v28=(Null);
    const/16 v29, 0x0

    #v29=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v26

    #v1=(Integer);
    move/from16 v2, v27

    #v2=(Null);
    move/from16 v3, v28

    #v3=(Null);
    move/from16 v4, v29

    #v4=(Null);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 1602
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    const/16 v26, 0x0

    #v26=(Null);
    move/from16 v0, v26

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1603
    return-void

    .line 1520
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);v22=(Unknown);v23=(Unknown);v24=(Unknown);v25=(Unknown);v26=(Unknown);v27=(Unknown);v28=(Unknown);v29=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1537
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1369
    const/16 v21, 0x0

    #v21=(Null);
    move/from16 v0, v21

    #v0=(Null);
    move/from16 v1, p1

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v21

    #v21=(Integer);
    const/16 v22, 0x0

    #v22=(Null);
    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v22

    #v22=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v21

    move/from16 v2, v22

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1372
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1373
    .local v15, measuredWidth:I
    #v15=(Integer);
    div-int/lit8 v14, v15, 0xa

    .line 1374
    .local v14, maxGutterSize:I
    #v14=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    #v0=(Integer);
    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1378
    .local v5, childWidthSize:I
    #v5=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1385
    .local v4, childHeightSize:I
    #v4=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v16

    .line 1386
    .local v16, size:I
    #v16=(Integer);
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Integer);v13=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1387
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1388
    .local v3, child:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    #v22=(PosByte);
    move/from16 v0, v21

    #v0=(Integer);
    move/from16 v1, v22

    #v1=(PosByte);
    if-eq v0, v1, :cond_5

    .line 1389
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1390
    .local v13, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v0=(Boolean);
    move/from16 v21, v0

    #v21=(Boolean);
    if-eqz v21, :cond_5

    .line 1391
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    and-int/lit8 v11, v21, 0x7

    .line 1392
    .local v11, hgrav:I
    #v11=(Integer);
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1393
    .local v17, vgrav:I
    #v17=(Integer);
    const/high16 v18, -0x8000

    .line 1394
    .local v18, widthMode:I
    #v18=(Integer);
    const/high16 v8, -0x8000

    .line 1395
    .local v8, heightMode:I
    #v8=(Integer);
    const/16 v21, 0x30

    #v21=(PosByte);
    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1396
    .local v7, consumeVertical:Z
    :goto_1
    #v7=(Boolean);
    const/16 v21, 0x3

    move/from16 v0, v21

    #v0=(PosByte);
    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1398
    .local v6, consumeHorizontal:Z
    :goto_2
    #v6=(Boolean);
    if-eqz v7, :cond_8

    .line 1399
    const/high16 v18, 0x4000

    .line 1404
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1405
    .local v19, widthSize:I
    #v19=(Integer);
    move v9, v4

    .line 1406
    .local v9, heightSize:I
    #v9=(Integer);
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    const/16 v22, -0x2

    #v22=(Byte);
    move/from16 v0, v21

    move/from16 v1, v22

    #v1=(Byte);
    if-eq v0, v1, :cond_3

    .line 1407
    const/high16 v18, 0x4000

    .line 1408
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1409
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1412
    :cond_3
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1413
    const/high16 v8, 0x4000

    .line 1414
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1415
    iget v9, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1418
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1419
    .local v20, widthSpec:I
    #v20=(Integer);
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1420
    .local v10, heightSpec:I
    #v10=(Integer);
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1422
    if-eqz v7, :cond_9

    .line 1423
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1386
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_5
    :goto_4
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1395
    .restart local v8       #heightMode:I
    .restart local v11       #hgrav:I
    .restart local v13       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v17       #vgrav:I
    .restart local v18       #widthMode:I
    :cond_6
    #v1=(PosByte);v8=(Integer);v11=(Integer);v13=(Reference);v17=(Integer);v18=(Integer);v21=(PosByte);v22=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1

    .line 1396
    .restart local v7       #consumeVertical:Z
    :cond_7
    #v0=(PosByte);v7=(Boolean);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_2

    .line 1400
    .restart local v6       #consumeHorizontal:Z
    :cond_8
    #v6=(Boolean);
    if-eqz v6, :cond_2

    .line 1401
    const/high16 v8, 0x4000

    goto :goto_3

    .line 1424
    .restart local v9       #heightSize:I
    .restart local v10       #heightSpec:I
    .restart local v19       #widthSize:I
    .restart local v20       #widthSpec:I
    :cond_9
    #v0=(Integer);v1=(Integer);v9=(Integer);v10=(Integer);v19=(Integer);v20=(Integer);v21=(Integer);v22=(Byte);
    if-eqz v6, :cond_5

    .line 1425
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1431
    .end local v3           #child:Landroid/view/View;
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_a
    #v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v22=(Integer);
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1432
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1435
    const/16 v21, 0x1

    #v21=(One);
    move/from16 v0, v21

    #v0=(One);
    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1436
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1437
    const/16 v21, 0x0

    #v21=(Null);
    move/from16 v0, v21

    #v0=(Null);
    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v16

    .line 1441
    const/4 v12, 0x0

    :goto_5
    #v0=(Integer);v1=(Conflicted);v21=(Integer);
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1442
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1443
    .restart local v3       #child:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    #v22=(PosByte);
    move/from16 v0, v21

    #v0=(Integer);
    move/from16 v1, v22

    #v1=(PosByte);
    if-eq v0, v1, :cond_c

    .line 1447
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1448
    .restart local v13       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v0=(Boolean);
    move/from16 v21, v0

    #v21=(Boolean);
    if-nez v21, :cond_c

    .line 1449
    :cond_b
    #v0=(Integer);v21=(Integer);
    int-to-float v0, v5

    #v0=(Float);
    move/from16 v21, v0

    #v21=(Float);
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #v0=(Integer);
    move/from16 v22, v0

    #v22=(Integer);
    mul-float v21, v21, v22

    move/from16 v0, v21

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1451
    .restart local v20       #widthSpec:I
    #v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    #v0=(Integer);
    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    #v1=(Integer);
    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1441
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_c
    #v13=(Conflicted);v20=(Conflicted);
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1455
    .end local v3           #child:Landroid/view/View;
    :cond_d
    #v1=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 1672
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    #v15=(Integer);
    if-lez v15, :cond_2

    .line 1673
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1674
    .local v12, scrollX:I
    #v12=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1675
    .local v10, paddingLeft:I
    #v10=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1676
    .local v11, paddingRight:I
    #v11=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v14

    .line 1677
    .local v14, width:I
    #v14=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1678
    .local v4, childCount:I
    #v4=(Integer);
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    #v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Integer);v9=(Conflicted);v16=(Conflicted);
    if-ge v8, v4, :cond_2

    .line 1679
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1680
    .local v3, child:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1681
    .local v9, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v15, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v15=(Boolean);
    if-nez v15, :cond_1

    .line 1678
    :cond_0
    :goto_1
    #v15=(Integer);
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1683
    :cond_1
    #v15=(Boolean);
    iget v15, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #v15=(Integer);
    and-int/lit8 v7, v15, 0x7

    .line 1684
    .local v7, hgrav:I
    #v7=(Integer);
    const/4 v5, 0x0

    .line 1685
    .local v5, childLeft:I
    #v5=(Null);
    packed-switch v7, :pswitch_data_0

    .line 1687
    :pswitch_0
    move v5, v10

    .line 1702
    :goto_2
    #v5=(Integer);
    add-int/2addr v5, v12

    .line 1704
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1705
    .local v6, childOffset:I
    #v6=(Integer);
    if-eqz v6, :cond_0

    .line 1706
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1690
    .end local v6           #childOffset:I
    :pswitch_1
    #v5=(Null);v6=(Conflicted);
    move v5, v10

    .line 1691
    #v5=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1692
    goto :goto_2

    .line 1694
    :pswitch_2
    #v5=(Null);
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1696
    #v5=(Integer);
    goto :goto_2

    .line 1698
    :pswitch_3
    #v5=(Null);
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    #v16=(Integer);
    sub-int v5, v15, v16

    .line 1699
    #v5=(Integer);
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_2

    .line 1711
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v5           #childLeft:I
    .end local v7           #hgrav:I
    .end local v8           #i:I
    .end local v9           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #scrollX:I
    .end local v14           #width:I
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v16=(Conflicted);
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v15=(Reference);
    if-eqz v15, :cond_3

    .line 1712
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    #v0=(Integer);
    move/from16 v1, p2

    #v1=(Float);
    move/from16 v2, p3

    #v2=(Integer);
    invoke-interface {v15, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1714
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1715
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    #v0=(Integer);
    move/from16 v1, p2

    #v1=(Float);
    move/from16 v2, p3

    #v2=(Integer);
    invoke-interface {v15, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1718
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1720
    .restart local v12       #scrollX:I
    #v12=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1721
    .restart local v4       #childCount:I
    #v4=(Integer);
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    #v8=(Integer);v13=(Conflicted);v15=(Conflicted);
    if-ge v8, v4, :cond_6

    .line 1722
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1723
    .restart local v3       #child:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1725
    .restart local v9       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v15, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v15=(Boolean);
    if-eqz v15, :cond_5

    .line 1721
    :goto_4
    #v15=(Conflicted);
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1727
    :cond_5
    #v15=(Boolean);
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    #v15=(Integer);
    sub-int/2addr v15, v12

    int-to-float v15, v15

    #v15=(Float);
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v16

    #v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v16, v0

    #v16=(Float);
    div-float v13, v15, v16

    .line 1728
    .local v13, transformPos:F
    #v13=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #v15=(Reference);
    invoke-interface {v15, v3, v13}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1732
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v8           #i:I
    .end local v9           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v12           #scrollX:I
    .end local v13           #transformPos:F
    :cond_6
    #v3=(Conflicted);v4=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    const/4 v15, 0x1

    #v15=(One);
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1733
    return-void

    .line 1685
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2693
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2694
    .local v1, count:I
    #v1=(Integer);
    and-int/lit8 v7, p1, 0x2

    #v7=(Integer);
    if-eqz v7, :cond_0

    .line 2695
    const/4 v6, 0x0

    .line 2696
    .local v6, index:I
    #v6=(Null);
    const/4 v5, 0x1

    .line 2697
    .local v5, increment:I
    #v5=(One);
    move v2, v1

    .line 2703
    .local v2, end:I
    :goto_0
    #v2=(Integer);v5=(Byte);v6=(Integer);
    move v3, v6

    .local v3, i:I
    :goto_1
    #v0=(Conflicted);v3=(Integer);v4=(Conflicted);v8=(Conflicted);
    if-eq v3, v2, :cond_2

    .line 2704
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2705
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2706
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2707
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v4=(Reference);
    if-eqz v4, :cond_1

    iget v7, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v8=(Integer);
    if-ne v7, v8, :cond_1

    .line 2708
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 2709
    const/4 v7, 0x1

    .line 2714
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    #v0=(Conflicted);v4=(Conflicted);v8=(Conflicted);
    return v7

    .line 2699
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(Uninit);
    add-int/lit8 v6, v1, -0x1

    .line 2700
    .restart local v6       #index:I
    #v6=(Integer);
    const/4 v5, -0x1

    .line 2701
    .restart local v5       #increment:I
    #v5=(Byte);
    const/4 v2, -0x1

    .restart local v2       #end:I
    #v2=(Byte);
    goto :goto_0

    .line 2703
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    #v0=(Reference);v2=(Integer);v3=(Integer);v4=(Conflicted);v8=(Conflicted);
    add-int/2addr v3, v5

    goto :goto_1

    .line 2714
    .end local v0           #child:Landroid/view/View;
    :cond_2
    #v0=(Conflicted);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1272
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$SavedState;

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1273
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1288
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    move-object v0, p1

    .line 1277
    #v0=(Reference);
    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1278
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1280
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #v2=(Reference);
    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1282
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1284
    :cond_1
    #v1=(Reference);v2=(Uninit);v3=(Uninit);
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #v1=(Integer);
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1285
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #v1=(Reference);
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1286
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1261
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1262
    .local v1, superState:Landroid/os/Parcelable;
    #v1=(Reference);
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1263
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    #v0=(Reference);
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v2=(Integer);
    iput v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1264
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 1265
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1267
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1459
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1462
    if-eq p1, p3, :cond_0

    .line 1463
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v0=(Integer);
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v1=(Integer);
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1465
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 1925
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #v0=(Boolean);
    move/from16 v24, v0

    #v24=(Boolean);
    if-eqz v24, :cond_0

    .line 1929
    const/16 v24, 0x1

    .line 2046
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    return v24

    .line 1932
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    #v24=(Integer);
    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1935
    const/16 v24, 0x0

    #v24=(Null);
    goto :goto_0

    .line 1938
    :cond_1
    #v24=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    #v24=(Reference);
    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v24

    #v24=(Integer);
    if-nez v24, :cond_3

    .line 1940
    :cond_2
    #v24=(Conflicted);
    const/16 v24, 0x0

    #v24=(Null);
    goto :goto_0

    .line 1943
    :cond_3
    #v24=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    #v24=(Reference);
    if-nez v24, :cond_4

    .line 1944
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    #v1=(Reference);
    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1946
    :cond_4
    #v1=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1948
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1949
    .local v5, action:I
    #v5=(Integer);
    const/4 v11, 0x0

    .line 1951
    .local v11, needsInvalidate:Z
    #v11=(Null);
    and-int/lit16 v0, v5, 0xff

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    packed-switch v24, :pswitch_data_0

    .line 2043
    :cond_5
    :goto_1
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Boolean);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    if-eqz v11, :cond_6

    .line 2044
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2046
    :cond_6
    const/16 v24, 0x1

    #v24=(One);
    goto :goto_0

    .line 1953
    :pswitch_1
    #v0=(Integer);v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Null);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Integer);v25=(Uninit);v26=(Uninit);v27=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    #v24=(Reference);
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1954
    const/16 v24, 0x0

    #v24=(Null);
    move/from16 v0, v24

    #v0=(Null);
    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1955
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1958
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    #v24=(Float);
    move/from16 v0, v24

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1959
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1960
    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Null);
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    #v24=(Integer);
    move/from16 v0, v24

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1964
    :pswitch_2
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    move/from16 v24, v0

    #v24=(Boolean);
    if-nez v24, :cond_7

    .line 1965
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1966
    .local v15, pointerIndex:I
    #v15=(Integer);
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1967
    .local v20, x:F
    #v20=(Float);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #v0=(Integer);
    move/from16 v24, v0

    sub-float v24, v20, v24

    #v24=(Float);
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1968
    .local v21, xDiff:F
    #v21=(Float);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1969
    .local v22, y:F
    #v22=(Float);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    sub-float v24, v22, v24

    #v24=(Float);
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1971
    .local v23, yDiff:F
    #v23=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move/from16 v0, v24

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v24, v0

    #v24=(Float);
    cmpl-float v24, v21, v24

    #v24=(Byte);
    if-lez v24, :cond_7

    cmpl-float v24, v21, v23

    if-lez v24, :cond_7

    .line 1973
    const/16 v24, 0x1

    #v24=(One);
    move/from16 v0, v24

    #v0=(One);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1974
    const/16 v24, 0x1

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1975
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    sub-float v24, v20, v24

    #v24=(Float);
    const/16 v25, 0x0

    #v25=(Null);
    cmpl-float v24, v24, v25

    #v24=(Byte);
    if-lez v24, :cond_8

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v0=(Integer);
    move/from16 v25, v0

    #v25=(Integer);
    move/from16 v0, v25

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v25, v0

    #v25=(Float);
    add-float v24, v24, v25

    :goto_2
    #v24=(Float);
    move/from16 v0, v24

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1977
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1978
    const/16 v24, 0x1

    #v24=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1979
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1982
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1983
    .local v14, parent:Landroid/view/ViewParent;
    #v14=(Reference);
    if-eqz v14, :cond_7

    .line 1984
    const/16 v24, 0x1

    move/from16 v0, v24

    #v0=(One);
    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1989
    .end local v14           #parent:Landroid/view/ViewParent;
    .end local v15           #pointerIndex:I
    .end local v20           #x:F
    .end local v21           #xDiff:F
    .end local v22           #y:F
    .end local v23           #yDiff:F
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v14=(Conflicted);v15=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Byte);v25=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    move/from16 v24, v0

    #v24=(Boolean);
    if-eqz v24, :cond_5

    .line 1991
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1993
    .local v6, activePointerIndex:I
    #v6=(Integer);
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1994
    .restart local v20       #x:F
    #v20=(Float);
    move-object/from16 v0, p0

    move/from16 v1, v20

    #v1=(Float);
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v24

    #v24=(Boolean);
    or-int v11, v11, v24

    .line 1995
    #v11=(Boolean);
    goto/16 :goto_1

    .line 1975
    .end local v6           #activePointerIndex:I
    .restart local v15       #pointerIndex:I
    .restart local v21       #xDiff:F
    .restart local v22       #y:F
    .restart local v23       #yDiff:F
    :cond_8
    #v0=(Integer);v1=(One);v6=(Uninit);v11=(Null);v14=(Uninit);v15=(Integer);v21=(Float);v22=(Float);v23=(Float);v24=(Byte);v25=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #v0=(Integer);
    move/from16 v25, v0

    #v25=(Integer);
    move/from16 v0, v25

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v25, v0

    #v25=(Float);
    sub-float v24, v24, v25

    #v24=(Float);
    goto :goto_2

    .line 1998
    .end local v15           #pointerIndex:I
    .end local v20           #x:F
    .end local v21           #xDiff:F
    .end local v22           #y:F
    .end local v23           #yDiff:F
    :pswitch_3
    #v0=(Integer);v1=(Reference);v15=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Integer);v25=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    move/from16 v24, v0

    #v24=(Boolean);
    if-eqz v24, :cond_5

    .line 1999
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2000
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    #v18=(Reference);
    const/16 v24, 0x3e8

    #v24=(PosShort);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #v0=(Integer);
    move/from16 v25, v0

    #v25=(Integer);
    move/from16 v0, v25

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v25, v0

    #v25=(Float);
    move-object/from16 v0, v18

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(PosShort);
    move/from16 v2, v25

    #v2=(Float);
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2001
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, v18

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    #v24=(Float);
    move/from16 v0, v24

    #v0=(Float);
    float-to-int v10, v0

    .line 2003
    .local v10, initialVelocity:I
    #v10=(Integer);
    const/16 v24, 0x1

    #v24=(One);
    move/from16 v0, v24

    #v0=(One);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2004
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v19

    .line 2005
    .local v19, width:I
    #v19=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v16

    .line 2006
    .local v16, scrollX:I
    #v16=(Integer);
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v8

    .line 2007
    .local v8, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v8=(Reference);
    iget v7, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2008
    .local v7, currentPage:I
    #v7=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v24, v0

    #v24=(Float);
    move/from16 v0, v19

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #v0=(Integer);
    move/from16 v25, v0

    #v25=(Integer);
    sub-float v24, v24, v25

    iget v0, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2009
    .local v13, pageOffset:F
    #v13=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2011
    .restart local v6       #activePointerIndex:I
    #v6=(Integer);
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2012
    .restart local v20       #x:F
    #v20=(Float);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #v0=(Integer);
    move/from16 v24, v0

    sub-float v24, v20, v24

    #v24=(Float);
    move/from16 v0, v24

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v17, v0

    .line 2013
    .local v17, totalDelta:I
    #v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v12

    .line 2015
    .local v12, nextPage:I
    #v12=(Integer);
    const/16 v24, 0x1

    #v24=(One);
    const/16 v25, 0x1

    #v25=(One);
    move-object/from16 v0, p0

    move/from16 v1, v24

    #v1=(One);
    move/from16 v2, v25

    #v2=(One);
    invoke-virtual {v0, v12, v1, v2, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2017
    const/16 v24, -0x1

    #v24=(Byte);
    move/from16 v0, v24

    #v0=(Byte);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2018
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2019
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    #v24=(Reference);
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    #v24=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    #v25=(Reference);
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    #v25=(Boolean);
    or-int v11, v24, v25

    .line 2020
    #v11=(Boolean);
    goto/16 :goto_1

    .line 2023
    .end local v6           #activePointerIndex:I
    .end local v7           #currentPage:I
    .end local v8           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10           #initialVelocity:I
    .end local v12           #nextPage:I
    .end local v13           #pageOffset:F
    .end local v16           #scrollX:I
    .end local v17           #totalDelta:I
    .end local v18           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v19           #width:I
    .end local v20           #x:F
    :pswitch_4
    #v0=(Integer);v2=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Null);v12=(Uninit);v13=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v24=(Integer);v25=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #v0=(Boolean);
    move/from16 v24, v0

    #v24=(Boolean);
    if-eqz v24, :cond_5

    .line 2024
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v24, v0

    #v24=(Integer);
    const/16 v25, 0x1

    #v25=(One);
    const/16 v26, 0x0

    #v26=(Null);
    const/16 v27, 0x0

    #v27=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    move/from16 v2, v25

    #v2=(One);
    move/from16 v3, v26

    #v3=(Null);
    move/from16 v4, v27

    #v4=(Null);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2025
    const/16 v24, -0x1

    #v24=(Byte);
    move/from16 v0, v24

    #v0=(Byte);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2026
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2027
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    #v24=(Reference);
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    #v24=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    #v25=(Reference);
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    #v25=(Boolean);
    or-int v11, v24, v25

    #v11=(Boolean);
    goto/16 :goto_1

    .line 2031
    :pswitch_5
    #v0=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v11=(Null);v24=(Integer);v25=(Uninit);v26=(Uninit);v27=(Uninit);
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    .line 2032
    .local v9, index:I
    #v9=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2033
    .restart local v20       #x:F
    #v20=(Float);
    move/from16 v0, v20

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2034
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    #v0=(Integer);
    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2038
    .end local v9           #index:I
    .end local v20           #x:F
    :pswitch_6
    #v9=(Uninit);v20=(Uninit);
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2039
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #v0=(Integer);
    move/from16 v24, v0

    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v24

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    #v24=(Float);
    move/from16 v0, v24

    #v0=(Float);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2606
    #v0=(One);
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 2607
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2610
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2614
    #v0=(One);
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v1=(Integer);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2615
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2618
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 915
    return-void
.end method

.method populate(I)V
    .locals 30
    .parameter "newCurrentItem"

    .prologue
    .line 918
    const/16 v21, 0x0

    .line 919
    .local v21, oldCurInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v21=(Null);
    const/4 v15, 0x2

    .line 920
    .local v15, focusDirection:I
    #v15=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move/from16 v0, v27

    move/from16 v1, p1

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 921
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 922
    :goto_0
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v27, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v21

    .line 923
    #v21=(Reference);
    move/from16 v0, p1

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 926
    :cond_0
    #v1=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    #v27=(Reference);
    if-nez v27, :cond_3

    .line 927
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1103
    :cond_1
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v22=(Conflicted);v23=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    return-void

    .line 921
    :cond_2
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Null);v22=(Uninit);v23=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Integer);v28=(Uninit);v29=(Uninit);
    const/16 v15, 0x11

    goto :goto_0

    .line 935
    :cond_3
    #v0=(Reference);v1=(Conflicted);v21=(Reference);v27=(Reference);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #v0=(Boolean);
    move/from16 v27, v0

    #v27=(Boolean);
    if-eqz v27, :cond_4

    .line 937
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    .line 944
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    #v27=(Reference);
    if-eqz v27, :cond_1

    .line 948
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #v0=(Integer);
    move/from16 v22, v0

    .line 951
    .local v22, pageLimit:I
    #v22=(Integer);
    const/16 v27, 0x0

    #v27=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v28, v0

    #v28=(Integer);
    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 952
    .local v26, startPos:I
    #v26=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    #v27=(Reference);
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 953
    .local v4, N:I
    #v4=(Integer);
    add-int/lit8 v27, v4, -0x1

    #v27=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 955
    .local v12, endPos:I
    #v12=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #v0=(Integer);
    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 958
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    #v27=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 962
    .local v24, resName:Ljava/lang/String;
    :goto_2
    #v11=(Conflicted);v24=(Reference);v27=(Conflicted);
    new-instance v27, Ljava/lang/IllegalStateException;

    #v27=(UninitRef);
    new-instance v28, Ljava/lang/StringBuilder;

    #v28=(UninitRef);
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #v28=(Reference);
    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    #v29=(Reference);
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #v0=(Integer);
    move/from16 v29, v0

    #v29=(Integer);
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    #v29=(Reference);
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    #v0=(Reference);
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v27=(Reference);
    throw v27

    .line 959
    .end local v24           #resName:Ljava/lang/String;
    :catch_0
    #v0=(Integer);v11=(Uninit);v24=(Uninit);v27=(Conflicted);v28=(Integer);v29=(Uninit);
    move-exception v11

    .line 960
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    #v11=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v27

    #v27=(Integer);
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #resName:Ljava/lang/String;
    #v24=(Reference);
    goto :goto_2

    .line 971
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v24           #resName:Ljava/lang/String;
    :cond_5
    #v11=(Uninit);v24=(Uninit);
    const/4 v8, -0x1

    .line 972
    .local v8, curIndex:I
    #v8=(Byte);
    const/4 v9, 0x0

    .line 973
    .local v9, curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v9=(Null);
    const/4 v8, 0x0

    :goto_3
    #v1=(Conflicted);v8=(Integer);v17=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    #v27=(Integer);
    move/from16 v0, v27

    #v0=(Integer);
    if-ge v8, v0, :cond_6

    .line 974
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 975
    .local v17, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    #v1=(Integer);
    if-lt v0, v1, :cond_c

    .line 976
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 981
    .end local v17           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_6
    #v1=(Conflicted);v9=(Reference);v17=(Conflicted);
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 982
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v27, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v27

    #v1=(Integer);
    invoke-virtual {v0, v1, v8}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 988
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);
    if-eqz v9, :cond_a

    .line 989
    const/4 v13, 0x0

    .line 990
    .local v13, extraWidthLeft:F
    #v13=(Null);
    add-int/lit8 v18, v8, -0x1

    .line 991
    .local v18, itemIndex:I
    #v18=(Integer);
    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 992
    .restart local v17       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_4
    #v0=(Conflicted);v1=(Conflicted);v17=(Reference);v27=(Conflicted);
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    .line 993
    .local v7, clientWidth:I
    #v7=(Integer);
    if-gtz v7, :cond_e

    const/16 v19, 0x0

    .line 995
    .local v19, leftWidthNeeded:F
    :goto_5
    #v19=(Float);v29=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    add-int/lit8 v23, v27, -0x1

    .local v23, pos:I
    :goto_6
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v13=(Float);v23=(Integer);v27=(Conflicted);v28=(Conflicted);
    if-ltz v23, :cond_8

    .line 996
    cmpl-float v27, v13, v19

    #v27=(Byte);
    if-ltz v27, :cond_12

    move/from16 v0, v23

    #v0=(Integer);
    move/from16 v1, v26

    #v1=(Integer);
    if-ge v0, v1, :cond_12

    .line 997
    if-nez v17, :cond_f

    .line 1023
    :cond_8
    #v0=(Conflicted);v1=(Conflicted);v27=(Conflicted);
    iget v14, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1024
    .local v14, extraWidthRight:F
    #v14=(Integer);
    add-int/lit8 v18, v8, 0x1

    .line 1025
    const/high16 v27, 0x4000

    #v27=(Integer);
    cmpg-float v27, v14, v27

    #v27=(Byte);
    if-gez v27, :cond_9

    .line 1026
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    #v27=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(Integer);
    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1027
    :goto_7
    #v0=(Conflicted);v27=(Conflicted);
    if-gtz v7, :cond_17

    const/16 v25, 0x0

    .line 1029
    .local v25, rightWidthNeeded:F
    :goto_8
    #v25=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    add-int/lit8 v23, v27, 0x1

    :goto_9
    #v0=(Conflicted);v27=(Conflicted);
    move/from16 v0, v23

    #v0=(Integer);
    if-ge v0, v4, :cond_9

    .line 1030
    cmpl-float v27, v14, v25

    #v27=(Byte);
    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v12, :cond_1b

    .line 1031
    if-nez v17, :cond_18

    .line 1056
    .end local v25           #rightWidthNeeded:F
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v25=(Conflicted);v27=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v21

    #v1=(Reference);
    invoke-direct {v0, v9, v8, v1}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    .line 1066
    .end local v7           #clientWidth:I
    .end local v13           #extraWidthLeft:F
    .end local v14           #extraWidthRight:F
    .end local v17           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v18           #itemIndex:I
    .end local v19           #leftWidthNeeded:F
    .end local v23           #pos:I
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);v7=(Conflicted);v13=(Conflicted);v14=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    #v28=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v29, v0

    #v29=(Integer);
    if-eqz v9, :cond_1f

    iget-object v0, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v27, v0

    :goto_a
    #v0=(Conflicted);v27=(Reference);
    move-object/from16 v0, v28

    #v0=(Reference);
    move-object/from16 v1, p0

    #v1=(Reference);
    move/from16 v2, v29

    #v2=(Integer);
    move-object/from16 v3, v27

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1073
    .local v6, childCount:I
    #v6=(Integer);
    const/16 v16, 0x0

    .local v16, i:I
    :goto_b
    #v0=(Conflicted);v5=(Conflicted);v16=(Integer);v20=(Conflicted);v27=(Conflicted);
    move/from16 v0, v16

    #v0=(Integer);
    if-ge v0, v6, :cond_20

    .line 1074
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v16

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1075
    .local v5, child:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    #v20=(Reference);
    check-cast v20, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1076
    .local v20, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    move/from16 v0, v16

    #v0=(Integer);
    move-object/from16 v1, v20

    #v1=(Reference);
    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 1077
    move-object/from16 v0, v20

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #v0=(Boolean);
    move/from16 v27, v0

    #v27=(Boolean);
    if-nez v27, :cond_b

    move-object/from16 v0, v20

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    const/16 v28, 0x0

    #v28=(Null);
    cmpl-float v27, v27, v28

    #v27=(Byte);
    if-nez v27, :cond_b

    .line 1079
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1080
    .restart local v17       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    #v17=(Reference);
    if-eqz v17, :cond_b

    .line 1081
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1082
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    .line 1073
    .end local v17           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_b
    #v0=(Conflicted);v17=(Conflicted);v28=(Reference);
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 973
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v16           #i:I
    .end local v20           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v17       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_c
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Null);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Reference);v18=(Uninit);v19=(Uninit);v20=(Uninit);v23=(Uninit);v25=(Uninit);v28=(Integer);v29=(Uninit);
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 991
    .end local v17           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v13       #extraWidthLeft:F
    .restart local v18       #itemIndex:I
    :cond_d
    #v0=(Conflicted);v1=(Conflicted);v9=(Reference);v13=(Null);v17=(Conflicted);v18=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    goto/16 :goto_4

    .line 993
    .restart local v7       #clientWidth:I
    .restart local v17       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_e
    #v7=(Integer);v17=(Reference);v27=(Conflicted);
    const/high16 v27, 0x4000

    #v27=(Integer);
    iget v0, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v0=(Integer);
    move/from16 v28, v0

    sub-float v27, v27, v28

    #v27=(Float);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v28, v0

    #v28=(Float);
    int-to-float v0, v7

    move/from16 v29, v0

    #v29=(Float);
    div-float v28, v28, v29

    add-float v19, v27, v28

    #v19=(Float);
    goto/16 :goto_5

    .line 1000
    .restart local v19       #leftWidthNeeded:F
    .restart local v23       #pos:I
    :cond_f
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v13=(Float);v23=(Integer);v27=(Byte);v28=(Conflicted);v29=(Conflicted);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #v0=(Boolean);
    move/from16 v27, v0

    #v27=(Boolean);
    if-nez v27, :cond_10

    .line 1001
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    #v28=(Reference);
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    #v1=(Reference);
    move/from16 v2, v23

    #v2=(Integer);
    move-object/from16 v3, v28

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1007
    add-int/lit8 v18, v18, -0x1

    .line 1008
    add-int/lit8 v8, v8, -0x1

    .line 1009
    if-ltz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 995
    :cond_10
    :goto_c
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v27=(Conflicted);v28=(Conflicted);
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    .line 1009
    :cond_11
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(Reference);v27=(Reference);v28=(Reference);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_c

    .line 1011
    :cond_12
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v17=(Reference);v27=(Byte);v28=(Conflicted);
    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move/from16 v0, v23

    move/from16 v1, v27

    #v1=(Integer);
    if-ne v0, v1, :cond_14

    .line 1012
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1013
    add-int/lit8 v18, v18, -0x1

    .line 1014
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_d
    #v0=(Conflicted);v27=(Conflicted);
    goto :goto_c

    :cond_13
    #v0=(Integer);v27=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_d

    .line 1016
    :cond_14
    #v0=(Conflicted);v1=(Conflicted);v17=(Reference);
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v23

    #v1=(Integer);
    move/from16 v2, v27

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1017
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1018
    add-int/lit8 v8, v8, 0x1

    .line 1019
    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    #v0=(Conflicted);v27=(Conflicted);
    goto :goto_c

    :cond_15
    #v0=(Integer);v27=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_e

    .line 1026
    .restart local v14       #extraWidthRight:F
    :cond_16
    #v2=(Conflicted);v14=(Integer);v17=(Reference);
    const/16 v17, 0x0

    #v17=(Null);
    goto/16 :goto_7

    .line 1027
    :cond_17
    #v0=(Conflicted);v17=(Reference);v27=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v27

    #v27=(Integer);
    move/from16 v0, v27

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v27, v0

    #v27=(Float);
    int-to-float v0, v7

    move/from16 v28, v0

    #v28=(Float);
    div-float v27, v27, v28

    const/high16 v28, 0x4000

    #v28=(Integer);
    add-float v25, v27, v28

    #v25=(Float);
    goto/16 :goto_8

    .line 1034
    .restart local v25       #rightWidthNeeded:F
    :cond_18
    #v0=(Integer);v27=(Byte);v28=(Conflicted);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v17

    #v0=(Reference);
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #v0=(Boolean);
    move/from16 v27, v0

    #v27=(Boolean);
    if-nez v27, :cond_19

    .line 1035
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    #v28=(Reference);
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    #v1=(Reference);
    move/from16 v2, v23

    #v2=(Integer);
    move-object/from16 v3, v28

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    #v27=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(Integer);
    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1029
    :cond_19
    :goto_f
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v27=(Conflicted);v28=(Conflicted);
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1041
    :cond_1a
    #v0=(Integer);v2=(Integer);v3=(Reference);v27=(Integer);v28=(Reference);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_f

    .line 1043
    :cond_1b
    #v2=(Conflicted);v3=(Conflicted);v17=(Reference);v27=(Byte);v28=(Conflicted);
    if-eqz v17, :cond_1d

    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 1044
    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1045
    #v14=(Float);
    add-int/lit8 v18, v18, 0x1

    .line 1046
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    #v27=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_10
    #v0=(Conflicted);v27=(Conflicted);
    goto :goto_f

    :cond_1c
    #v0=(Integer);v27=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_10

    .line 1048
    :cond_1d
    #v14=(Integer);v17=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v23

    move/from16 v2, v18

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1049
    add-int/lit8 v18, v18, 0x1

    .line 1050
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #v0=(Integer);
    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1051
    #v14=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    #v27=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    #v0=(Conflicted);v27=(Conflicted);
    goto :goto_f

    :cond_1e
    #v0=(Integer);v27=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_11

    .line 1066
    .end local v7           #clientWidth:I
    .end local v13           #extraWidthLeft:F
    .end local v14           #extraWidthRight:F
    .end local v17           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v18           #itemIndex:I
    .end local v19           #leftWidthNeeded:F
    .end local v23           #pos:I
    .end local v25           #rightWidthNeeded:F
    :cond_1f
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v13=(Conflicted);v14=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v23=(Conflicted);v25=(Conflicted);v27=(Conflicted);v28=(Reference);v29=(Integer);
    const/16 v27, 0x0

    #v27=(Null);
    goto/16 :goto_a

    .line 1086
    .restart local v6       #childCount:I
    .restart local v16       #i:I
    :cond_20
    #v1=(Reference);v2=(Integer);v3=(Reference);v5=(Conflicted);v6=(Integer);v16=(Integer);v20=(Conflicted);v27=(Conflicted);
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v27

    #v27=(Boolean);
    if-eqz v27, :cond_1

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1090
    .local v10, currentFocused:Landroid/view/View;
    #v10=(Reference);
    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1091
    .restart local v17       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_12
    #v0=(Conflicted);v17=(Reference);
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    #v27=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v28, v0

    #v28=(Integer);
    move/from16 v0, v27

    move/from16 v1, v28

    #v1=(Integer);
    if-eq v0, v1, :cond_1

    .line 1092
    :cond_21
    #v0=(Conflicted);v1=(Conflicted);v28=(Conflicted);
    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v27

    #v1=(Integer);
    if-ge v0, v1, :cond_1

    .line 1093
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1094
    .restart local v5       #child:Landroid/view/View;
    #v5=(Reference);
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v17

    .line 1095
    if-eqz v17, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v0=(Integer);
    move/from16 v27, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v0=(Integer);
    move/from16 v28, v0

    #v28=(Integer);
    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 1096
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    #v27=(Boolean);
    if-nez v27, :cond_1

    .line 1092
    :cond_22
    #v0=(Conflicted);v27=(Integer);v28=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    .line 1090
    .end local v5           #child:Landroid/view/View;
    .end local v17           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_23
    #v0=(Integer);v1=(Reference);v5=(Conflicted);v17=(Conflicted);v27=(Boolean);v28=(Reference);
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1318
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1323
    :goto_0
    return-void

    .line 1321
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x0

    .line 408
    #v7=(Null);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v4=(Reference);
    if-eqz v4, :cond_1

    .line 409
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 410
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    #v4=(Integer);
    if-ge v0, v4, :cond_0

    .line 412
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 413
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #v5=(Integer);
    iget-object v6, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #v6=(Reference);
    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    #v1=(Conflicted);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v4=(Reference);
    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 416
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 417
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 418
    iput v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 419
    invoke-virtual {p0, v7, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 422
    .end local v0           #i:I
    :cond_1
    #v0=(Conflicted);
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 423
    .local v2, oldAdapter:Landroid/support/v4/view/PagerAdapter;
    #v2=(Reference);
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 424
    iput v7, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 426
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_3

    .line 427
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 428
    new-instance v4, Landroid/support/v4/view/ViewPager$PagerObserver;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v8}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    #v4=(Reference);
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 430
    :cond_2
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 431
    iput-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 432
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 433
    .local v3, wasFirstLayout:Z
    #v3=(Boolean);
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 434
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    #v4=(Integer);
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 435
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 436
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v4=(Reference);
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #v6=(Reference);
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 437
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #v4=(Integer);
    invoke-virtual {p0, v4, v7, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 438
    const/4 v4, -0x1

    #v4=(Byte);
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 439
    iput-object v8, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 440
    iput-object v8, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 448
    .end local v3           #wasFirstLayout:Z
    :cond_3
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #v4=(Reference);
    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 449
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 451
    :cond_4
    return-void

    .line 441
    .restart local v3       #wasFirstLayout:Z
    :cond_5
    #v3=(Boolean);v4=(Integer);v5=(Reference);
    if-nez v3, :cond_6

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1

    .line 444
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 5
    .parameter

    .prologue
    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #v0=(Integer);
    const/4 v1, 0x7

    #v1=(PosByte);
    if-lt v0, v1, :cond_1

    .line 624
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 626
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Class;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    :goto_0
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 628
    :catch_0
    #v0=(Reference);
    move-exception v0

    .line 629
    const-string v1, "ViewPager"

    #v1=(Reference);
    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 634
    :catch_1
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    .line 635
    const-string v1, "ViewPager"

    #v1=(Reference);
    const-string v2, "Error changing children drawing order"

    #v2=(Reference);
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 489
    #v1=(Null);
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 490
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 491
    return-void

    :cond_0
    move v0, v1

    .line 490
    #v0=(Null);
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 500
    #v0=(Null);
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 501
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 502
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 509
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 510
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v4, 0x0

    .line 513
    #v4=(Null);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v3=(Reference);
    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    #v3=(Integer);
    if-gtz v3, :cond_1

    .line 514
    :cond_0
    #v3=(Conflicted);
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 553
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 517
    :cond_1
    #v0=(One);v1=(Uninit);v2=(Uninit);v3=(Integer);
    if-nez p3, :cond_2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_2

    .line 518
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 522
    :cond_2
    if-gez p1, :cond_5

    .line 523
    const/4 p1, 0x0

    .line 527
    :cond_3
    :goto_1
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 528
    .local v2, pageLimit:I
    #v2=(Integer);
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 532
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    #v1=(Integer);v3=(Conflicted);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_6

    .line 533
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v0, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 524
    .end local v1           #i:I
    .end local v2           #pageLimit:I
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Integer);
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    #v3=(Integer);
    if-lt p1, v3, :cond_3

    .line 525
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    #v3=(Integer);
    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 536
    .restart local v2       #pageLimit:I
    :cond_6
    #v1=(Conflicted);v2=(Integer);
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_9

    .line 538
    .local v0, dispatchSelected:Z
    :goto_3
    #v0=(Boolean);
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #v3=(Boolean);
    if-eqz v3, :cond_a

    .line 541
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 542
    if-eqz v0, :cond_7

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v3=(Reference);
    if-eqz v3, :cond_7

    .line 543
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 545
    :cond_7
    #v3=(Conflicted);
    if-eqz v0, :cond_8

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #v3=(Reference);
    if-eqz v3, :cond_8

    .line 546
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 548
    :cond_8
    #v3=(Conflicted);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0

    .end local v0           #dispatchSelected:Z
    :cond_9
    #v0=(One);v3=(Integer);
    move v0, v4

    .line 536
    #v0=(Null);
    goto :goto_3

    .line 550
    .restart local v0       #dispatchSelected:Z
    :cond_a
    #v0=(Boolean);v3=(Boolean);
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 551
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 655
    .local v0, oldListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    #v0=(Reference);
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 656
    return-object v0
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 474
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 475
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 593
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 708
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 709
    .local v0, oldMargin:I
    #v0=(Integer);
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 711
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 712
    .local v1, width:I
    #v1=(Integer);
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 714
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 715
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 732
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 733
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 734
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 735
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 736
    return-void

    .line 734
    :cond_1
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 6
    .parameter "reverseDrawingOrder"
    .parameter "transformer"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 608
    #v3=(Null);
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #v4=(Integer);
    const/16 v5, 0xb

    #v5=(PosByte);
    if-lt v4, v5, :cond_1

    .line 609
    if-eqz p2, :cond_2

    move v0, v2

    .line 610
    .local v0, hasTransformer:Z
    :goto_0
    #v0=(Boolean);
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #v4=(Reference);
    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    #v4=(Boolean);
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 611
    .local v1, needsPopulate:Z
    :goto_2
    #v1=(Boolean);
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 612
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 613
    if-eqz v0, :cond_5

    .line 614
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    #v2=(PosByte);
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 618
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 620
    .end local v0           #hasTransformer:Z
    .end local v1           #needsPopulate:Z
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Integer);
    return-void

    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(One);
    move v0, v3

    .line 609
    #v0=(Null);
    goto :goto_0

    .restart local v0       #hasTransformer:Z
    :cond_3
    #v0=(Boolean);v4=(Reference);
    move v4, v3

    .line 610
    #v4=(Null);
    goto :goto_1

    :cond_4
    #v4=(Boolean);
    move v1, v3

    #v1=(Null);
    goto :goto_2

    .line 616
    .restart local v1       #needsPopulate:Z
    :cond_5
    #v1=(Boolean);
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(III)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 791
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 827
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    return-void

    .line 794
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 795
    .local v2, sx:I
    #v2=(Integer);
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 796
    .local v3, sy:I
    #v3=(Integer);
    sub-int v4, p1, v2

    .line 797
    .local v4, dx:I
    #v4=(Integer);
    sub-int v5, p2, v3

    .line 798
    .local v5, dy:I
    #v5=(Integer);
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 799
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 800
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 801
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 805
    :cond_1
    #v1=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 806
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 808
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    .line 809
    .local v12, width:I
    #v12=(Integer);
    div-int/lit8 v9, v12, 0x2

    .line 810
    .local v9, halfWidth:I
    #v9=(Integer);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    const/high16 v13, 0x3f80

    #v13=(Integer);
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    #v14=(Integer);
    int-to-float v14, v14

    #v14=(Float);
    mul-float/2addr v13, v14

    #v13=(Float);
    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 811
    .local v8, distanceRatio:F
    #v8=(Float);
    int-to-float v1, v9

    #v1=(Float);
    int-to-float v13, v9

    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 814
    .local v7, distance:F
    #v7=(Float);
    const/4 v6, 0x0

    .line 815
    .local v6, duration:I
    #v6=(Null);
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 816
    if-lez p3, :cond_2

    .line 817
    const/high16 v1, 0x447a

    #v1=(Integer);
    move/from16 v0, p3

    #v0=(Integer);
    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    #v1=(Float);
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    #v1=(Integer);
    mul-int/lit8 v6, v1, 0x4

    .line 823
    :goto_1
    #v0=(Conflicted);v6=(Integer);v10=(Conflicted);v11=(Conflicted);v13=(Integer);v14=(Integer);
    const/16 v1, 0x258

    #v1=(PosShort);
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 825
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #v1=(Reference);
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 826
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 819
    :cond_2
    #v0=(Uninit);v1=(Float);v6=(Null);v10=(Uninit);v11=(Uninit);v13=(Float);v14=(Float);
    int-to-float v1, v12

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #v13=(Reference);
    iget v14, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #v14=(Integer);
    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    #v13=(Float);
    mul-float v11, v1, v13

    .line 820
    .local v11, pageWidth:F
    #v11=(Float);
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    iget v13, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #v13=(Integer);
    int-to-float v13, v13

    #v13=(Float);
    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 821
    .local v10, pageDelta:F
    #v10=(Float);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    add-float/2addr v1, v10

    #v1=(Float);
    const/high16 v13, 0x42c8

    #v13=(Integer);
    mul-float/2addr v1, v13

    float-to-int v6, v1

    #v6=(Integer);
    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #v0=(Reference);
    if-ne p1, v0, :cond_1

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
