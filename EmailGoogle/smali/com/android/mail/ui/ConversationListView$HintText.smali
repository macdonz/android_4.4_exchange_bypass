.class public Lcom/android/mail/ui/ConversationListView$HintText;
.super Landroid/widget/FrameLayout;
.source "ConversationListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HintText"
.end annotation


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDisplay:I

.field private final mHideHintTextRunnable:Ljava/lang/Runnable;

.field private final mSetVisibilityGoneRunnable:Ljava/lang/Runnable;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 448
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationListView$HintText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 449
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 452
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ConversationListView$HintText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 453
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v3, 0x3fc0

    .line 456
    #v3=(Integer);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 431
    #p0=(Reference);
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 432
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 434
    new-instance v2, Lcom/android/mail/ui/ConversationListView$HintText$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/ui/ConversationListView$HintText$1;-><init>(Lcom/android/mail/ui/ConversationListView$HintText;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mHideHintTextRunnable:Ljava/lang/Runnable;

    .line 440
    new-instance v2, Lcom/android/mail/ui/ConversationListView$HintText$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/ui/ConversationListView$HintText$2;-><init>(Lcom/android/mail/ui/ConversationListView$HintText;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mSetVisibilityGoneRunnable:Ljava/lang/Runnable;

    .line 458
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 459
    .local v1, factory:Landroid/view/LayoutInflater;
    #v1=(Reference);
    const v2, 0x7f040069

    #v2=(Integer);
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 461
    const v2, 0x7f08013f

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ConversationListView$HintText;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    .line 463
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDisplay:I

    .line 464
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ConversationListView$HintText;->setVisibility(I)V

    .line 467
    invoke-static {p1}, Lcom/android/mail/utils/Utils;->getActionBarBackgroundResource(Landroid/content/Context;)I

    move-result v0

    .line 468
    .local v0, actionBarRes:I
    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListView$HintText;->setBackgroundResource(I)V

    .line 469
    return-void
.end method

.method static synthetic access$200(Lcom/android/mail/ui/ConversationListView$HintText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView$HintText;->displaySwipeToRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mail/ui/ConversationListView$HintText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView$HintText;->hide()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mail/ui/ConversationListView$HintText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView$HintText;->displayCheckingForMailAndHideAfterDelay()V

    return-void
.end method

.method private displayCheckingForMailAndHideAfterDelay()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView$HintText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0a0121

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListView$HintText;->setVisibility(I)V

    .line 489
    const/4 v0, 0x2

    #v0=(PosByte);
    iput v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDisplay:I

    .line 490
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mHideHintTextRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    const-wide/16 v1, 0x3e8

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/ui/ConversationListView$HintText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    return-void
.end method

.method private displaySwipeToRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 472
    #v3=(One);
    iget v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDisplay:I

    #v0=(Integer);
    if-eq v0, v3, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView$HintText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0a0120

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListView$HintText;->setVisibility(I)V

    .line 476
    const/high16 v0, 0x3f80

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListView$HintText;->setAlpha(F)V

    .line 478
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    #v1=(Integer);
    neg-int v1, v1

    int-to-float v1, v1

    #v1=(Float);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 479
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 482
    iput v3, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDisplay:I

    .line 484
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private hide()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 494
    #v2=(LongLo);v3=(LongHi);
    iget v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDisplay:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mTextView:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    #v1=(Integer);
    neg-int v1, v1

    int-to-float v1, v1

    #v1=(Float);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 500
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView$HintText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 502
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mSetVisibilityGoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/mail/ui/ConversationListView$HintText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/ui/ConversationListView$HintText;->mDisplay:I

    .line 505
    :cond_0
    #v0=(Integer);v1=(Conflicted);
    return-void
.end method
