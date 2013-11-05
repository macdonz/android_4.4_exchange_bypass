.class public Lcom/android/mail/ui/ActionableToastBar;
.super Landroid/widget/LinearLayout;
.source "ActionableToastBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;
    }
.end annotation


# instance fields
.field private mActionButton:Landroid/view/View;

.field private mActionDescriptionIcon:Landroid/widget/ImageView;

.field private mActionDescriptionView:Landroid/widget/TextView;

.field private mActionIcon:Landroid/view/View;

.field private mActionText:Landroid/widget/TextView;

.field private final mFadeOutHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mHideAnimation:Landroid/animation/Animator;

.field private mOperation:Lcom/android/mail/ui/ToastBarOperation;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mShowAnimation:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHidden:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/mail/ui/ActionableToastBar$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/ActionableToastBar$1;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/ActionableToastBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHidden:Z

    #v0=(Boolean);
    return v0
.end method

.method private getHideAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    .line 206
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/mail/ui/ActionableToastBar$4;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ActionableToastBar$4;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 223
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private getShowAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050002

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    .line 182
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/mail/ui/ActionableToastBar$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ActionableToastBar$3;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 199
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    return-object v0
.end method


# virtual methods
.method public getOperation()Lcom/android/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mOperation:Lcom/android/mail/ui/ToastBarOperation;

    #v0=(Reference);
    return-object v0
.end method

.method public hide(ZZ)V
    .locals 2
    .parameter "animate"
    .parameter "actionClicked"

    .prologue
    .line 159
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mHidden:Z

    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getVisibility()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    #v0=(Reference);
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionButton:Landroid/view/View;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    if-eqz p1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/mail/ui/ActionableToastBar;->getHideAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 172
    :goto_0
    #v0=(Conflicted);
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mOperation:Lcom/android/mail/ui/ToastBarOperation;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mOperation:Lcom/android/mail/ui/ToastBarOperation;

    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ToastBarOperation;->onToastBarTimeout(Landroid/content/Context;)V

    .line 176
    :cond_0
    #v0=(Conflicted);
    return-void

    .line 168
    :cond_1
    #v0=(Reference);v1=(Null);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->setAlpha(F)V

    .line 169
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isEventInToastBar(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v4, 0x0

    .line 227
    #v4=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->isShown()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 234
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Boolean);v5=(Byte);v6=(Conflicted);
    return v4

    .line 230
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(One);v4=(Null);v5=(Boolean);v6=(Uninit);
    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v1, v5, [I

    .line 231
    .local v1, xy:[I
    #v1=(Reference);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 232
    .local v0, x:F
    #v0=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 233
    .local v2, y:F
    #v2=(Float);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ActionableToastBar;->getLocationOnScreen([I)V

    .line 234
    aget v5, v1, v4

    #v5=(Integer);
    int-to-float v5, v5

    #v5=(Float);
    cmpl-float v5, v0, v5

    #v5=(Byte);
    if-lez v5, :cond_1

    aget v5, v1, v4

    #v5=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getWidth()I

    move-result v6

    #v6=(Integer);
    add-int/2addr v5, v6

    int-to-float v5, v5

    #v5=(Float);
    cmpg-float v5, v0, v5

    #v5=(Byte);
    if-gez v5, :cond_1

    aget v5, v1, v3

    #v5=(Integer);
    int-to-float v5, v5

    #v5=(Float);
    cmpl-float v5, v2, v5

    #v5=(Byte);
    if-lez v5, :cond_1

    aget v5, v1, v3

    #v5=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    #v5=(Float);
    cmpg-float v5, v2, v5

    #v5=(Byte);
    if-gez v5, :cond_1

    :goto_1
    #v3=(Boolean);v6=(Conflicted);
    move v4, v3

    #v4=(Boolean);
    goto :goto_0

    :cond_1
    #v3=(One);v4=(Null);
    move v3, v4

    #v3=(Null);
    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 245
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f08005d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f08005e

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f08005f

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionButton:Landroid/view/View;

    .line 86
    const v0, 0x7f080061

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionIcon:Landroid/view/View;

    .line 87
    const v0, 0x7f080062

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method public show(Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/android/mail/ui/ToastBarOperation;)V
    .locals 4
    .parameter "listener"
    .parameter "descriptionIconResourceId"
    .parameter "descriptionText"
    .parameter "showActionIcon"
    .parameter "actionTextResource"
    .parameter "replaceVisibleToast"
    .parameter "op"

    .prologue
    const/16 v0, 0x8

    #v0=(PosByte);
    const/4 v1, 0x0

    .line 112
    #v1=(Null);
    iget-boolean v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mHidden:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    if-nez p6, :cond_0

    .line 149
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 116
    :cond_0
    #v0=(PosByte);v1=(Null);v2=(Boolean);v3=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iput-object p7, p0, Lcom/android/mail/ui/ActionableToastBar;->mOperation:Lcom/android/mail/ui/ToastBarOperation;

    .line 120
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionButton:Landroid/view/View;

    new-instance v3, Lcom/android/mail/ui/ActionableToastBar$2;

    #v3=(UninitRef);
    invoke-direct {v3, p0, p7, p1}, Lcom/android/mail/ui/ActionableToastBar$2;-><init>(Lcom/android/mail/ui/ActionableToastBar;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;)V

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    if-nez p2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionIcon:Landroid/view/View;

    if-eqz p4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iput-boolean v1, p0, Lcom/android/mail/ui/ActionableToastBar;->mHidden:Z

    .line 145
    invoke-direct {p0}, Lcom/android/mail/ui/ActionableToastBar;->getShowAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 148
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    const-wide/16 v2, 0x3a98

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :cond_2
    #v0=(PosByte);v1=(Null);v2=(Reference);v3=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
