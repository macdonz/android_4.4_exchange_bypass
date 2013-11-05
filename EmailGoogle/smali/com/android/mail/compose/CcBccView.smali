.class public Lcom/android/mail/compose/CcBccView;
.super Landroid/widget/RelativeLayout;
.source "CcBccView.java"


# instance fields
.field private final mBcc:Landroid/view/View;

.field private final mCc:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/CcBccView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/compose/CcBccView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    #p0=(Reference);
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f040018

    #v1=(Integer);
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f08006f

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/compose/CcBccView;->mCc:Landroid/view/View;

    .line 46
    const v0, 0x7f080072

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    .line 47
    return-void
.end method

.method private animate(Z)V
    .locals 9
    .parameter "ccWasAlreadyShown"

    .prologue
    const/4 v8, 0x2

    .line 67
    #v8=(PosByte);
    invoke-virtual {p0}, Lcom/android/mail/compose/CcBccView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 69
    .local v4, res:Landroid/content/res/Resources;
    #v4=(Reference);
    const v5, 0x7f0e0002

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 70
    .local v3, fadeDuration:I
    #v3=(Integer);
    iget-object v5, p0, Lcom/android/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    #v5=(Reference);
    const-string v6, "alpha"

    #v6=(Reference);
    new-array v7, v8, [F

    #v7=(Reference);
    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    .local v0, bccAnimator:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    int-to-long v5, v3

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v5, p0, Lcom/android/mail/compose/CcBccView;->mCc:Landroid/view/View;

    #v5=(Reference);
    const-string v6, "alpha"

    #v6=(Reference);
    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 76
    .local v1, ccAnimator:Landroid/animation/ObjectAnimator;
    #v1=(Reference);
    int-to-long v5, v3

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    new-instance v2, Landroid/animation/AnimatorSet;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .local v2, fadeAnimation:Landroid/animation/Animator;
    #v2=(Reference);
    move-object v5, v2

    .line 78
    #v5=(Reference);
    check-cast v5, Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v1, v6, v7

    const/4 v7, 0x1

    #v7=(One);
    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 82
    .end local v1           #ccAnimator:Landroid/animation/ObjectAnimator;
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 83
    return-void

    .line 80
    .end local v2           #fadeAnimation:Landroid/animation/Animator;
    :cond_0
    #v1=(Uninit);v2=(Uninit);v5=(LongLo);v6=(LongHi);v7=(Reference);
    move-object v2, v0

    .restart local v2       #fadeAnimation:Landroid/animation/Animator;
    #v2=(Reference);
    goto :goto_0

    .line 70
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 75
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public isBccVisible()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

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

.method public isCcVisible()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mail/compose/CcBccView;->mCc:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

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

.method public show(ZZZ)V
    .locals 6
    .parameter "animate"
    .parameter "showCc"
    .parameter "showBcc"

    .prologue
    const/16 v3, 0x8

    #v3=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    const/high16 v5, 0x3f80

    .line 50
    #v5=(Integer);
    iget-object v1, p0, Lcom/android/mail/compose/CcBccView;->mCc:Landroid/view/View;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 51
    .local v0, ccWasAlreadyShown:Z
    #v0=(Boolean);
    iget-object v4, p0, Lcom/android/mail/compose/CcBccView;->mCc:Landroid/view/View;

    #v4=(Reference);
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    #v1=(PosByte);
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/android/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    #v1=(Reference);
    if-eqz p3, :cond_1

    :goto_1
    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    if-eqz p1, :cond_2

    .line 54
    invoke-direct {p0, v0}, Lcom/android/mail/compose/CcBccView;->animate(Z)V

    .line 64
    :goto_2
    return-void

    :cond_0
    #v2=(Null);
    move v1, v3

    .line 51
    #v1=(PosByte);
    goto :goto_0

    :cond_1
    #v1=(Reference);
    move v2, v3

    .line 52
    #v2=(PosByte);
    goto :goto_1

    .line 56
    :cond_2
    if-eqz p2, :cond_3

    .line 57
    iget-object v1, p0, Lcom/android/mail/compose/CcBccView;->mCc:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 59
    :cond_3
    if-eqz p3, :cond_4

    .line 60
    iget-object v1, p0, Lcom/android/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 62
    :cond_4
    invoke-virtual {p0}, Lcom/android/mail/compose/CcBccView;->requestLayout()V

    goto :goto_2
.end method
