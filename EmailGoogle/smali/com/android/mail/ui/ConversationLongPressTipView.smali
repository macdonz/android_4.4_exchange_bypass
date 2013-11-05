.class public Lcom/android/mail/ui/ConversationLongPressTipView;
.super Landroid/widget/FrameLayout;
.source "ConversationLongPressTipView.java"

# interfaces
.implements Lcom/android/mail/ui/ConversationSpecialItemView;
.implements Lcom/android/mail/ui/SwipeableItemView;


# static fields
.field private static sScrollSlop:I

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private final mListCollapsible:Z

.field private final mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

.field private mShow:Z

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationLongPressTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ConversationLongPressTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    #p0=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, resources:Landroid/content/res/Resources;
    #v0=(Reference);
    sget v1, Lcom/android/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 76
    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    .line 77
    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/ConversationLongPressTipView;->sShrinkAnimationDuration:I

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    .line 83
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mTabletDevice:Z

    .line 84
    const v1, 0x7f0d0001

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mListCollapsible:Z

    .line 85
    return-void
.end method

.method private checkWhetherToShow()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->shouldShowSenderImage()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->isLongPressToSelectTipAlreadyShown()Z

    move-result v0

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

.method private setDismissed()V
    .locals 6

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mShow:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->setLongPressToSelectTipAlreadyShown()V

    .line 186
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mShow:Z

    .line 187
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "list_swipe"

    #v1=(Reference);
    const-string v2, "long_press_tip"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 189
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    #v6=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->getHeight()I

    move-result v2

    .line 212
    .local v2, start:I
    #v2=(Integer);
    const/4 v0, 0x0

    .line 213
    .local v0, end:I
    #v0=(Null);
    iput v2, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    .line 214
    const-string v3, "animatedHeight"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [I

    #v4=(Reference);
    aput v2, v4, v6

    const/4 v5, 0x1

    #v5=(One);
    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 216
    .local v1, heightAnimator:Landroid/animation/ObjectAnimator;
    #v1=(Reference);
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #v3=(UninitRef);
    const/high16 v4, 0x4000

    #v4=(Integer);
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    sget v3, Lcom/android/mail/ui/ConversationLongPressTipView;->sShrinkAnimationDuration:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .parameter "loaderManager"
    .parameter "savedInstanceState"

    .prologue
    .line 138
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->setDismissed()V

    .line 180
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->startDestroyAnimation()V

    .line 181
    return-void
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 207
    sget v0, Lcom/android/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->checkWhetherToShow()Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mShow:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mShow:Z

    return v0
.end method

.method public getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mShow:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->dismiss()V

    .line 154
    :cond_0
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 164
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 89
    const v0, 0x7f0800b3

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationLongPressTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mSwipeableContent:Landroid/view/View;

    .line 91
    const v0, 0x7f0800b6

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationLongPressTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/ConversationLongPressTipView$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ConversationLongPressTipView$1;-><init>(Lcom/android/mail/ui/ConversationLongPressTipView;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f080140

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationLongPressTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mTeaserRightEdge:Landroid/view/View;

    .line 99
    return-void
.end method

.method public onGetView()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mTabletDevice:Z

    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mListCollapsible:Z

    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_0
    #v1=(PosByte);
    iget v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 251
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 255
    :goto_1
    #v1=(Integer);
    return-void

    .line 247
    :cond_0
    #v0=(Boolean);v1=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    #v0=(Integer);v1=(Byte);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/ConversationLongPressTipView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 1
    .parameter "folder"
    .parameter "cursor"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->checkWhetherToShow()Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mShow:Z

    .line 106
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 169
    return-void
.end method

.method public setAdapter(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 134
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 237
    iput p1, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    .line 238
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationLongPressTipView;->requestLayout()V

    .line 239
    return-void
.end method

.method protected shouldShowSenderImage()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
