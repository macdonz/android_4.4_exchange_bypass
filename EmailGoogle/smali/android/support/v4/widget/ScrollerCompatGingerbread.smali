.class Landroid/support/v4/widget/ScrollerCompatGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 67
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 68
    return-void
.end method

.method public static computeScrollOffset(Ljava/lang/Object;)Z
    .locals 1
    .parameter "scroller"

    .prologue
    .line 43
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 26
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    new-instance v0, Landroid/widget/OverScroller;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public static getCurrX(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 35
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static getCurrY(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 39
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static getFinalX(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 84
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static getFinalY(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 88
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1
    .parameter "scroller"

    .prologue
    .line 31
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static startScroll(Ljava/lang/Object;IIIII)V
    .locals 6
    .parameter "scroller"
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 52
    move-object v0, p0

    #v0=(Reference);
    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    #v1=(Integer);
    move v2, p2

    #v2=(Integer);
    move v3, p3

    #v3=(Integer);
    move v4, p4

    #v4=(Integer);
    move v5, p5

    #v5=(Integer);
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 53
    return-void
.end method
