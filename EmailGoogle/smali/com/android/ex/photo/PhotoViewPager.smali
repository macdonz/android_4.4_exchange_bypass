.class public Lcom/android/ex/photo/PhotoViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;,
        Lcom/android/ex/photo/PhotoViewPager$InterceptType;
    }
.end annotation


# instance fields
.field private mActivatedX:F

.field private mActivatedY:F

.field private mActivePointerId:I

.field private mLastMotionX:F

.field private mListener:Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 68
    #p0=(Reference);
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewPager;->initialize()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    #p0=(Reference);
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewPager;->initialize()V

    .line 74
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    #v0=(One);
    new-instance v1, Lcom/android/ex/photo/PhotoViewPager$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/ex/photo/PhotoViewPager$1;-><init>(Lcom/android/ex/photo/PhotoViewPager;)V

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/PhotoViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 115
    iget-object v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mListener:Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;

    #v9=(Reference);
    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mListener:Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;

    iget v10, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivatedX:F

    #v10=(Integer);
    iget v11, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivatedY:F

    #v11=(Integer);
    invoke-interface {v9, v10, v11}, Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;->onTouchIntercept(FF)Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    move-result-object v4

    .line 118
    .local v4, intercept:Lcom/android/ex/photo/PhotoViewPager$InterceptType;
    :goto_0
    #v4=(Reference);v10=(Conflicted);v11=(Conflicted);
    sget-object v9, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->BOTH:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    if-eq v4, v9, :cond_0

    sget-object v9, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->LEFT:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    if-ne v4, v9, :cond_6

    :cond_0
    const/4 v2, 0x1

    .line 120
    .local v2, ignoreScrollLeft:Z
    :goto_1
    #v2=(Boolean);
    sget-object v9, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->BOTH:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    if-eq v4, v9, :cond_1

    sget-object v9, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->RIGHT:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    if-ne v4, v9, :cond_7

    :cond_1
    const/4 v3, 0x1

    .line 124
    .local v3, ignoreScrollRight:Z
    :goto_2
    #v3=(Boolean);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    #v9=(Integer);
    and-int/lit16 v0, v9, 0xff

    .line 126
    .local v0, action:I
    #v0=(Integer);
    const/4 v9, 0x3

    #v9=(PosByte);
    if-eq v0, v9, :cond_2

    const/4 v9, 0x1

    #v9=(One);
    if-ne v0, v9, :cond_3

    .line 127
    :cond_2
    #v9=(PosByte);
    const/4 v9, -0x1

    #v9=(Byte);
    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivePointerId:I

    .line 130
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 180
    :cond_4
    :goto_3
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Integer);
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_4
    #v9=(Boolean);
    return v9

    .line 115
    .end local v0           #action:I
    .end local v2           #ignoreScrollLeft:Z
    .end local v3           #ignoreScrollRight:Z
    .end local v4           #intercept:Lcom/android/ex/photo/PhotoViewPager$InterceptType;
    :cond_5
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Reference);v10=(Uninit);v11=(Uninit);
    sget-object v4, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->NONE:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    #v4=(Reference);
    goto :goto_0

    .line 118
    .restart local v4       #intercept:Lcom/android/ex/photo/PhotoViewPager$InterceptType;
    :cond_6
    #v10=(Conflicted);v11=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 120
    .restart local v2       #ignoreScrollLeft:Z
    :cond_7
    #v2=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_2

    .line 132
    .restart local v0       #action:I
    .restart local v3       #ignoreScrollRight:Z
    :sswitch_0
    #v0=(Integer);v3=(Boolean);v9=(Byte);
    if-nez v2, :cond_8

    if-eqz v3, :cond_4

    .line 133
    :cond_8
    iget v1, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivePointerId:I

    .line 134
    .local v1, activePointerId:I
    #v1=(Integer);
    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    .line 139
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 141
    .local v7, pointerIndex:I
    #v7=(Integer);
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 143
    .local v8, x:F
    #v8=(Float);
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 144
    iput v8, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    .line 145
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_4

    .line 146
    :cond_9
    #v9=(Byte);
    if-eqz v2, :cond_a

    iget v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    #v9=(Integer);
    cmpl-float v9, v8, v9

    #v9=(Byte);
    if-lez v9, :cond_a

    .line 147
    iput v8, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    .line 148
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_4

    .line 149
    :cond_a
    #v9=(Byte);
    if-eqz v3, :cond_4

    iget v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    #v9=(Integer);
    cmpg-float v9, v8, v9

    #v9=(Byte);
    if-gez v9, :cond_4

    .line 150
    iput v8, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    .line 151
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_4

    .line 158
    .end local v1           #activePointerId:I
    .end local v7           #pointerIndex:I
    .end local v8           #x:F
    :sswitch_1
    #v1=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Byte);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    #v9=(Float);
    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivatedX:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivatedY:F

    .line 163
    const/4 v9, 0x0

    #v9=(Null);
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    #v9=(Integer);
    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivePointerId:I

    goto :goto_3

    .line 168
    :sswitch_2
    #v9=(Byte);
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 169
    .restart local v7       #pointerIndex:I
    #v7=(Integer);
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 170
    .local v6, pointerId:I
    #v6=(Integer);
    iget v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivePointerId:I

    #v9=(Integer);
    if-ne v6, v9, :cond_4

    .line 172
    if-nez v7, :cond_b

    const/4 v5, 0x1

    .line 173
    .local v5, newPointerIndex:I
    :goto_5
    #v5=(Boolean);
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    #v9=(Float);
    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mLastMotionX:F

    .line 174
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    #v9=(Integer);
    iput v9, p0, Lcom/android/ex/photo/PhotoViewPager;->mActivePointerId:I

    goto :goto_3

    .line 172
    .end local v5           #newPointerIndex:I
    :cond_b
    #v5=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_5

    .line 130
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOnInterceptTouchListener(Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/ex/photo/PhotoViewPager;->mListener:Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;

    .line 188
    return-void
.end method
