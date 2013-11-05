.class public Lcom/android/mail/ui/LeaveBehindItem;
.super Landroid/widget/FrameLayout;
.source "LeaveBehindItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/SwipeableItemView;


# static fields
.field private static sFadeInAnimationDuration:I

.field private static sScrollSlop:F

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private mAnimating:Z

.field private mData:Lcom/android/mail/providers/Conversation;

.field private mFadeIn:Landroid/animation/ObjectAnimator;

.field private mFadingInText:Z

.field private mHeight:I

.field private mInert:Z

.field private mSwipeableContent:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mUndoOp:Lcom/android/mail/ui/ToastBarOperation;

.field private mWidth:I

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 62
    #v0=(Byte);
    sput v0, Lcom/android/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    .line 63
    sput v0, Lcom/android/mail/ui/LeaveBehindItem;->sFadeInAnimationDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/LeaveBehindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/LeaveBehindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    .line 59
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mInert:Z

    .line 78
    invoke-static {p1}, Lcom/android/mail/ui/LeaveBehindItem;->loadStatics(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private static loadStatics(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    sget v1, Lcom/android/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    .line 85
    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/LeaveBehindItem;->sFadeInAnimationDuration:I

    .line 86
    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    #v1=(Float);
    sput v1, Lcom/android/mail/ui/LeaveBehindItem;->sScrollSlop:F

    .line 88
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    #v0=(Conflicted);v1=(Integer);
    return-void
.end method

.method public static startFadeInTextAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 5
    .parameter "view"
    .parameter "delay"

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/ui/LeaveBehindItem;->loadStatics(Landroid/content/Context;)V

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, start:F
    #v2=(Null);
    const/high16 v0, 0x3f80

    .line 216
    .local v0, end:F
    #v0=(Integer);
    const-string v3, "alpha"

    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [F

    #v4=(Reference);
    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 217
    .local v1, fadeIn:Landroid/animation/ObjectAnimator;
    #v1=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    int-to-long v3, p1

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 221
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #v3=(UninitRef);
    const/high16 v4, 0x3f80

    #v4=(Integer);
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    sget v3, Lcom/android/mail/ui/LeaveBehindItem;->sFadeInAnimationDuration:I

    #v3=(Integer);
    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    return-object v1

    .line 216
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public bind(ILcom/android/mail/providers/Account;Lcom/android/mail/ui/AnimatedAdapter;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Folder;I)V
    .locals 3
    .parameter "pos"
    .parameter "account"
    .parameter "adapter"
    .parameter "undoOp"
    .parameter "target"
    .parameter "folder"
    .parameter "height"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mail/ui/LeaveBehindItem;->position:I

    .line 115
    iput-object p4, p0, Lcom/android/mail/ui/LeaveBehindItem;->mUndoOp:Lcom/android/mail/ui/ToastBarOperation;

    .line 116
    iput-object p2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAccount:Lcom/android/mail/providers/Account;

    .line 117
    iput-object p3, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 118
    iput p7, p0, Lcom/android/mail/ui/LeaveBehindItem;->mHeight:I

    .line 119
    invoke-virtual {p0, p5}, Lcom/android/mail/ui/LeaveBehindItem;->setData(Lcom/android/mail/providers/Conversation;)V

    .line 120
    const v0, 0x7f0800b3

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/LeaveBehindItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    const v0, 0x7f08013b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/LeaveBehindItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mText:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mUndoOp:Lcom/android/mail/ui/ToastBarOperation;

    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2, p6}, Lcom/android/mail/ui/ToastBarOperation;->getSingularDescription(Landroid/content/Context;Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mInert:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public cancelFadeInTextAnimation()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadingInText:Z

    .line 252
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 254
    :cond_0
    return-void
.end method

.method public cancelFadeInTextAnimationIfNotStarted()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->cancelFadeInTextAnimation()V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public cancelFadeOutText()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 311
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 133
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getData()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    .line 136
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "list_swipe"

    #v1=(Reference);
    const-string v2, "leave_behind"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 142
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mData:Lcom/android/mail/providers/Conversation;

    iget-wide v1, v1, Lcom/android/mail/providers/Conversation;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/AnimatedAdapter;->fadeOutSpecificLeaveBehindItem(J)V

    .line 143
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getData()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/mail/providers/Conversation;->id:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getData()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mData:Lcom/android/mail/providers/Conversation;

    #v0=(Reference);
    return-object v0
.end method

.method public getLeaveBehindData()Lcom/android/mail/ui/LeaveBehindData;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lcom/android/mail/ui/LeaveBehindData;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getData()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mUndoOp:Lcom/android/mail/ui/ToastBarOperation;

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/ui/LeaveBehindItem;->mHeight:I

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/mail/ui/LeaveBehindData;-><init>(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ToastBarOperation;I)V

    #v0=(Reference);
    return-object v0
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 298
    sget v0, Lcom/android/mail/ui/LeaveBehindItem;->sScrollSlop:F

    #v0=(Integer);
    return v0
.end method

.method public getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public increaseFadeInDelay(I)V
    .locals 5
    .parameter "newDelay"

    .prologue
    .line 234
    iget-boolean v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadingInText:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    #v2=(Float);
    const/high16 v3, 0x3f80

    #v3=(Integer);
    cmpl-float v2, v2, v3

    #v2=(Byte);
    if-eqz v2, :cond_0

    .line 235
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadingInText:Z

    .line 236
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    .line 237
    .local v0, delay:J
    #v0=(LongLo);v1=(LongHi);
    int-to-long v2, p1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, v0

    #v2=(Byte);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 244
    .end local v0           #delay:J
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 240
    .restart local v0       #delay:J
    :cond_1
    #v0=(LongLo);v1=(LongHi);v2=(Boolean);v3=(LongHi);v4=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 241
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    int-to-long v3, p1

    #v3=(LongLo);v4=(LongHi);
    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 242
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadingInText:Z

    #v0=(Boolean);
    return v0
.end method

.method public makeInert()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mInert:Z

    .line 307
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 93
    .local v1, id:I
    #v1=(Integer);
    const v2, 0x7f0800b3

    #v2=(Integer);
    if-ne v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mInert:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Lcom/android/mail/ui/AnimatedAdapter;->setSwipeUndo(Z)V

    .line 100
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getConversationId()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v2, v3, v4}, Lcom/android/mail/ui/AnimatedAdapter;->clearLeaveBehind(J)V

    .line 101
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/android/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 102
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/ConversationCursor;->undo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    .end local v0           #cursor:Lcom/android/mail/browse/ConversationCursor;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 106
    :cond_1
    #v0=(Uninit);v2=(Integer);v3=(Uninit);v4=(Uninit);
    const v2, 0x7f08013b

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 280
    iget v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 281
    iget v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mWidth:I

    iget v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->setMeasuredDimension(II)V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    #v1=(Byte);
    iget v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mHeight:I

    const/high16 v1, 0x4000

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 292
    iput p1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    .line 293
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->requestLayout()V

    .line 294
    return-void
.end method

.method public setData(Lcom/android/mail/providers/Conversation;)V
    .locals 0
    .parameter "conversation"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mData:Lcom/android/mail/providers/Conversation;

    .line 272
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    #v0=(Float);
    const/4 v1, 0x0

    #v1=(Null);
    cmpl-float v0, v0, v1

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 192
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public startFadeInTextAnimation(I)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadingInText:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    #v0=(Float);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    cmpl-float v0, v0, v1

    #v0=(Byte);
    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadingInText:Z

    .line 202
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/ui/LeaveBehindItem;->startFadeInTextAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    .line 204
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public startShrinkAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 173
    #v4=(Null);
    iget-boolean v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAnimating:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 174
    iput-boolean v5, p0, Lcom/android/mail/ui/LeaveBehindItem;->mAnimating:Z

    .line 175
    const-string v1, "animatedHeight"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [I

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/ui/LeaveBehindItem;->mHeight:I

    #v3=(Integer);
    aput v3, v2, v4

    aput v4, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 176
    .local v0, height:Landroid/animation/ObjectAnimator;
    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->setMinimumHeight(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->mWidth:I

    .line 178
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    #v1=(UninitRef);
    const/high16 v2, 0x3fe0

    #v2=(Integer);
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    sget v1, Lcom/android/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 180
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 183
    .end local v0           #height:Landroid/animation/ObjectAnimator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
