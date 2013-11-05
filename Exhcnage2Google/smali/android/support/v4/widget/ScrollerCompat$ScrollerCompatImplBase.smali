.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 112
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 113
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 1
    .parameter "scroller"

    .prologue
    .line 84
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 58
    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/Scroller;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    new-instance v0, Landroid/widget/Scroller;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    goto :goto_0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 69
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 74
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 134
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 1
    .parameter "scroller"

    .prologue
    .line 139
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .parameter "scroller"

    .prologue
    .line 64
    check-cast p1, Landroid/widget/Scroller;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 6
    .parameter "scroller"
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 95
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    #v1=(Integer);
    move v2, p3

    #v2=(Integer);
    move v3, p4

    #v3=(Integer);
    move v4, p5

    #v4=(Integer);
    move v5, p6

    #v5=(Integer);
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 96
    return-void
.end method
