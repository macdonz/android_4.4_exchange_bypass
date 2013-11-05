.class public Lcom/android/mail/bitmap/TileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TileDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field protected final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mInner:Landroid/graphics/drawable/Drawable;

.field private final mInnerHeight:I

.field private final mInnerWidth:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3
    .parameter "inner"
    .parameter "innerWidth"
    .parameter "innerHeight"
    .parameter "backgroundColor"
    .parameter "fadeOutDurationMs"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    #p0=(Reference);
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    .line 28
    iput p2, p0, Lcom/android/mail/bitmap/TileDrawable;->mInnerWidth:I

    .line 29
    iput p3, p0, Lcom/android/mail/bitmap/TileDrawable;->mInnerHeight:I

    .line 30
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 33
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p5

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 35
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/bitmap/TileDrawable$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/bitmap/TileDrawable$1;-><init>(Lcom/android/mail/bitmap/TileDrawable;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->reset()V

    .line 43
    return-void

    .line 33
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->isVisible()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 70
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 68
    :cond_0
    #v0=(Integer);v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected getCurrentAlpha()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "who"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->invalidateSelf()V

    .line 136
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 52
    #v3=(Null);
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Integer);v4=(Conflicted);
    return-void

    .line 57
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Null);v4=(Uninit);
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #v2=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    #v3=(Integer);
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/mail/bitmap/TileDrawable;->mInnerWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 58
    .local v0, l:I
    #v0=(Integer);
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/mail/bitmap/TileDrawable;->mInnerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 59
    .local v1, t:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/bitmap/TileDrawable;->mInnerWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/mail/bitmap/TileDrawable;->mInnerHeight:I

    #v4=(Integer);
    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/bitmap/TileDrawable;->setAlpha(I)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/mail/bitmap/TileDrawable;->setVisible(Z)Z

    .line 48
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 140
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/mail/bitmap/TileDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 141
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 75
    .local v0, old:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/mail/bitmap/TileDrawable;->setInnerAlpha(I)V

    .line 77
    if-eq p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->invalidateSelf()V

    .line 80
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 85
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 86
    return-void
.end method

.method public setInnerAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 131
    return-void
.end method

.method public setVisible(Z)Z
    .locals 1
    .parameter "visible"

    .prologue
    .line 98
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0}, Lcom/android/mail/bitmap/TileDrawable;->setVisible(ZZ)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 3
    .parameter "visible"
    .parameter "restart"

    .prologue
    const/16 v2, 0xff

    .line 103
    #v2=(PosShort);
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 104
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 105
    .local v0, changed:Z
    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->isVisible()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/mail/bitmap/TileDrawable;->setAlpha(I)V

    .line 118
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return v0

    .line 113
    :cond_1
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mPaint:Landroid/graphics/Paint;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    #v1=(Integer);
    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/bitmap/TileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/mail/bitmap/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 145
    invoke-virtual {p0, p2}, Lcom/android/mail/bitmap/TileDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
