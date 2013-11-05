.class Lcom/android/mail/bitmap/AttachmentDrawable$Progress;
.super Lcom/android/mail/bitmap/TileDrawable;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/bitmap/AttachmentDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Progress"
.end annotation


# instance fields
.field private final mRotateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates;II)V
    .locals 6
    .parameter "progress"
    .parameter "res"
    .parameter "coordinates"
    .parameter "fadeOutDurationMs"
    .parameter "tileColor"

    .prologue
    .line 519
    iget v2, p3, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarWidth:I

    #v2=(Integer);
    iget v3, p3, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

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

    .line 522
    #v0=(Reference);p0=(Reference);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v1, 0x7f0e0031

    #v1=(Integer);
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    .line 524
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 526
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$1;-><init>(Lcom/android/mail/bitmap/AttachmentDrawable$Progress;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 532
    iget-object v0, p0, Lcom/android/mail/bitmap/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$2;-><init>(Lcom/android/mail/bitmap/AttachmentDrawable$Progress;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 540
    return-void

    .line 522
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$300(Lcom/android/mail/bitmap/AttachmentDrawable$Progress;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public setVisible(Z)Z
    .locals 2
    .parameter "visible"

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/android/mail/bitmap/TileDrawable;->setVisible(Z)Z

    move-result v0

    .line 545
    .local v0, changed:Z
    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->isVisible()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 558
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return v0

    .line 553
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->getCurrentAlpha()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
