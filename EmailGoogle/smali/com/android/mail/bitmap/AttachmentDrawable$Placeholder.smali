.class Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;
.super Lcom/android/mail/bitmap/TileDrawable;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/bitmap/AttachmentDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Placeholder"
.end annotation


# instance fields
.field private mPulseAlphaFraction:F

.field private final mPulseAnimator:Landroid/animation/ValueAnimator;

.field private mPulseEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates;II)V
    .locals 7
    .parameter "placeholder"
    .parameter "res"
    .parameter "coordinates"
    .parameter "fadeOutDurationMs"
    .parameter "tileColor"

    .prologue
    const/4 v6, 0x2

    .line 449
    #v6=(PosByte);
    iget v2, p3, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderWidth:I

    #v2=(Integer);
    iget v3, p3, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    #v3=(Integer);
    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p1

    #v1=(Reference);
    move v4, p5

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/bitmap/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 443
    #v0=(Reference);p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    .line 444
    const/high16 v0, 0x3f80

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    .line 451
    new-array v0, v6, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v1, 0x7f0e0033

    #v1=(Integer);
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    .line 453
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 454
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 455
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;-><init>(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$2;-><init>(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    return-void

    .line 451
    :array_0
    .array-data 0x4
        0x37t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$102(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    iput p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V

    return-void
.end method

.method private stopPulsing()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 485
    const/high16 v0, 0x3f80

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    .line 486
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->getCurrentAlpha()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setInnerAlpha(I)V

    .line 488
    :cond_0
    #v0=(Conflicted);
    return-void
.end method


# virtual methods
.method public setInnerAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 472
    int-to-float v0, p1

    #v0=(Float);
    iget v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    #v1=(Integer);
    mul-float/2addr v0, v1

    float-to-int v0, v0

    #v0=(Integer);
    invoke-super {p0, v0}, Lcom/android/mail/bitmap/TileDrawable;->setInnerAlpha(I)V

    .line 473
    return-void
.end method

.method public setPulseEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    .line 477
    iget-boolean v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V

    .line 480
    :cond_0
    return-void
.end method

.method public setVisible(Z)Z
    .locals 2
    .parameter "visible"

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/android/mail/bitmap/TileDrawable;->setVisible(Z)Z

    move-result v0

    .line 493
    .local v0, changed:Z
    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->isVisible()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 507
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return v0

    .line 502
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->getCurrentAlpha()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V

    goto :goto_0
.end method
