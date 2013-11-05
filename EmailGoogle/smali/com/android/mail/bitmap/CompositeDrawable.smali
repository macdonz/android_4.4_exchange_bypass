.class public abstract Lcom/android/mail/bitmap/CompositeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CompositeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable$Callback;"
    }
.end annotation


# instance fields
.field protected mCount:I

.field protected final mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "maxDivisions"

    .prologue
    .line 27
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    #p0=(Reference);
    const/4 v1, 0x4

    #v1=(PosByte);
    if-lt p1, v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "CompositeDrawable only supports 4 divisions"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 31
    :cond_0
    #v1=(PosByte);v2=(Uninit);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, p1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    #v2=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    .line 36
    return-void
.end method

.method private applyBounds(IIIII)V
    .locals 2
    .parameter "index"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 103
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 104
    .local v0, d:Landroid/graphics/drawable/Drawable;,"TT;"
    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createDivisionDrawable()Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 112
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    #v1=(Integer);
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    iget v0, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v0=(Integer);
    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    .line 133
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    const/4 v1, -0x1

    .line 134
    .local v1, opacity:I
    #v1=(Byte);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);
    iget v2, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    #v2=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-eq v2, v3, :cond_1

    .line 136
    const/4 v1, -0x3

    .line 140
    :cond_0
    #v3=(Conflicted);
    return v1

    .line 134
    :cond_1
    #v3=(Byte);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOrCreateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    iget v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v1=(Integer);
    if-lt p1, v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "bad index: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 56
    :cond_0
    #v1=(Integer);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 57
    .local v0, result:Landroid/graphics/drawable/Drawable;,"TT;"
    if-nez v0, :cond_1

    .line 58
    const-string v1, "create division drawable"

    invoke-static {v1}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/mail/bitmap/CompositeDrawable;->createDivisionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/mail/bitmap/CompositeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mail/bitmap/CompositeDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 65
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 67
    :cond_1
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "who"

    .prologue
    .line 145
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    invoke-virtual {p0}, Lcom/android/mail/bitmap/CompositeDrawable;->invalidateSelf()V

    .line 146
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .parameter "bounds"

    .prologue
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 72
    #v1=(Null);
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 73
    .local v4, w:I
    #v4=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 74
    .local v5, h:I
    #v5=(Integer);
    div-int/lit8 v10, v4, 0x2

    .line 75
    .local v10, mw:I
    #v10=(Integer);
    div-int/lit8 v13, v5, 0x2

    .line 76
    .local v13, mh:I
    #v13=(Integer);
    iget v0, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 100
    .end local v13           #mh:I
    :goto_0
    #v0=(Conflicted);v1=(PosByte);v2=(Integer);v3=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .restart local v13       #mh:I
    :pswitch_0
    #v0=(Integer);v1=(Null);v2=(One);v3=(PosByte);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    move-object v0, p0

    #v0=(Reference);
    move v2, v1

    #v2=(Null);
    move v3, v1

    .line 79
    #v3=(Null);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    goto :goto_0

    :pswitch_1
    #v0=(Integer);v2=(One);v3=(PosByte);
    move-object v6, p0

    #v6=(Reference);
    move v7, v1

    #v7=(Null);
    move v8, v1

    #v8=(Null);
    move v9, v1

    #v9=(Null);
    move v11, v5

    .line 83
    #v11=(Integer);
    invoke-direct/range {v6 .. v11}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    move-object v8, p0

    #v8=(Reference);
    move v9, v2

    #v9=(One);
    move v11, v1

    #v11=(Null);
    move v12, v4

    #v12=(Integer);
    move v13, v5

    .line 84
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    goto :goto_0

    :pswitch_2
    #v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    move-object v6, p0

    #v6=(Reference);
    move v7, v1

    #v7=(Null);
    move v8, v1

    #v8=(Null);
    move v9, v1

    #v9=(Null);
    move v11, v5

    .line 88
    #v11=(Integer);
    invoke-direct/range {v6 .. v11}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    move-object v8, p0

    #v8=(Reference);
    move v9, v2

    #v9=(One);
    move v11, v1

    #v11=(Null);
    move v12, v4

    .line 89
    #v12=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    move-object v0, p0

    #v0=(Reference);
    move v1, v3

    #v1=(PosByte);
    move v2, v10

    #v2=(Integer);
    move v3, v13

    .line 90
    #v3=(Integer);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    goto :goto_0

    :pswitch_3
    #v0=(Integer);v1=(Null);v2=(One);v3=(PosByte);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    move-object v6, p0

    #v6=(Reference);
    move v7, v1

    #v7=(Null);
    move v8, v1

    #v8=(Null);
    move v9, v1

    #v9=(Null);
    move v11, v13

    .line 94
    #v11=(Integer);
    invoke-direct/range {v6 .. v11}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    move-object v8, p0

    #v8=(Reference);
    move v9, v2

    #v9=(One);
    move v11, v1

    #v11=(Null);
    move v12, v4

    .line 95
    #v12=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    move-object v6, p0

    move v7, v3

    #v7=(PosByte);
    move v8, v1

    #v8=(Null);
    move v9, v13

    #v9=(Integer);
    move v11, v5

    .line 96
    #v11=(Integer);
    invoke-direct/range {v6 .. v11}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    .line 97
    const/4 v1, 0x3

    #v1=(PosByte);
    move-object v0, p0

    #v0=(Reference);
    move v2, v10

    #v2=(Integer);
    move v3, v13

    #v3=(Integer);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/bitmap/CompositeDrawable;->applyBounds(IIIII)V

    goto :goto_0

    .line 76
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 150
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/mail/bitmap/CompositeDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 151
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 119
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    #v1=(Integer);
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter "cf"

    .prologue
    .line 126
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    #v1=(Integer);
    return-void
.end method

.method public setCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    const/4 v0, 0x0

    .line 43
    #v0=(Null);
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/mail/bitmap/CompositeDrawable;->setBounds(IIII)V

    .line 44
    iput p1, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    .line 45
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 155
    .local p0, this:Lcom/android/mail/bitmap/CompositeDrawable;,"Lcom/android/mail/bitmap/CompositeDrawable<TT;>;"
    invoke-virtual {p0, p2}, Lcom/android/mail/bitmap/CompositeDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
