.class abstract Lcom/android/mail/browse/ConversationItemView$CabAnimator;
.super Ljava/lang/Object;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CabAnimator"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mDuration:J

.field private final mEndValue:F

.field private final mPropertyName:Ljava/lang/String;

.field private mReversing:Z

.field private final mStartValue:F

.field private mValue:F

.field final synthetic this$0:Lcom/android/mail/browse/ConversationItemView;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V
    .locals 1
    .parameter
    .parameter "propertyName"
    .parameter "startValue"
    .parameter "endValue"
    .parameter "duration"

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->this$0:Lcom/android/mail/browse/ConversationItemView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2176
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 2187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    .line 2214
    new-instance v0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;-><init>(Lcom/android/mail/browse/ConversationItemView$CabAnimator;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2191
    iput-object p2, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mPropertyName:Ljava/lang/String;

    .line 2193
    iput p3, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mStartValue:F

    .line 2194
    iput p4, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mEndValue:F

    .line 2196
    iput-wide p5, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mDuration:J

    .line 2197
    return-void
.end method

.method static synthetic access$400(Lcom/android/mail/browse/ConversationItemView$CabAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2175
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$402(Lcom/android/mail/browse/ConversationItemView$CabAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2175
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    return p1
.end method

.method private createAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    .line 2200
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mPropertyName:Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [F

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget v5, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mStartValue:F

    #v5=(Integer);
    aput v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget v5, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mEndValue:F

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2202
    .local v0, animator:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mDuration:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2203
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2204
    new-instance v1, Lcom/android/mail/browse/ConversationItemView$CabAnimator$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator$1;-><init>(Lcom/android/mail/browse/ConversationItemView$CabAnimator;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2210
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2211
    return-object v0
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 2252
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mValue:F

    #v0=(Integer);
    return v0
.end method

.method public abstract invalidateArea()V
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

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

.method public setValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 2244
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mValue:F

    #v0=(Integer);
    cmpl-float v0, v0, p1

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 2249
    :goto_0
    return-void

    .line 2247
    :cond_0
    iput p1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mValue:F

    .line 2248
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->invalidateArea()V

    goto :goto_0
.end method

.method public startAnimation(Z)V
    .locals 1
    .parameter "reverse"

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2263
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->createAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 2264
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    .line 2266
    if-eqz p1, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 2271
    :goto_0
    return-void

    .line 2269
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2276
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 2279
    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    .line 2281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->setValue(F)V

    .line 2282
    return-void
.end method
