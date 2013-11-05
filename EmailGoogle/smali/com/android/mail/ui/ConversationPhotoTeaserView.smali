.class public Lcom/android/mail/ui/ConversationPhotoTeaserView;
.super Landroid/widget/FrameLayout;
.source "ConversationPhotoTeaserView.java"

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

.field private mNeedLayout:Z

.field private mShown:Z

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;

.field private mTextTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    #v0=(Reference);
    const-class v1, Lcom/android/mail/ui/ConversationPhotoTeaserView;

    #v1=(Reference);
    monitor-enter v1

    .line 62
    :try_start_0
    sget v2, Lcom/android/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    #v2=(Integer);
    if-nez v2, :cond_0

    .line 63
    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    .line 64
    const v2, 0x7f0e0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/ui/ConversationPhotoTeaserView;->sShrinkAnimationDuration:I

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p1}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    .line 71
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z

    .line 73
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTabletDevice:Z

    .line 74
    const v1, 0x7f0d0001

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mListCollapsible:Z

    .line 75
    return-void

    .line 67
    :catchall_0
    #v0=(Reference);v1=(Reference);v2=(Conflicted);
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/mail/ui/ConversationPhotoTeaserView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$002(Lcom/android/mail/ui/ConversationPhotoTeaserView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mail/ui/ConversationPhotoTeaserView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTextTop:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$102(Lcom/android/mail/ui/ConversationPhotoTeaserView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTextTop:I

    return p1
.end method

.method private setDismissed()V
    .locals 6

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->setConversationPhotoTeaserAlreadyShown()V

    .line 199
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    .line 200
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "list_swipe"

    #v1=(Reference);
    const-string v2, "photo_teaser"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 202
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 224
    #v6=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->getHeight()I

    move-result v2

    .line 225
    .local v2, start:I
    #v2=(Integer);
    const/4 v0, 0x0

    .line 226
    .local v0, end:I
    #v0=(Null);
    iput v2, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    .line 227
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

    .line 229
    .local v1, heightAnimator:Landroid/animation/ObjectAnimator;
    #v1=(Reference);
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #v3=(UninitRef);
    const/high16 v4, 0x4000

    #v4=(Integer);
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    sget v3, Lcom/android/mail/ui/ConversationPhotoTeaserView;->sShrinkAnimationDuration:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 241
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .parameter "loaderManager"
    .parameter "savedInstanceState"

    .prologue
    .line 151
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->setDismissed()V

    .line 193
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->startDestroyAnimation()V

    .line 194
    return-void
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->shouldShowSenderImage()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->isConversationPhotoTeaserAlreadyShown()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    .line 136
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->dismiss()V

    .line 167
    :cond_0
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 177
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0800b3

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mSwipeableContent:Landroid/view/View;

    .line 81
    const v0, 0x7f0800b6

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/ConversationPhotoTeaserView$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView$1;-><init>(Lcom/android/mail/ui/ConversationPhotoTeaserView;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f080140

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTeaserRightEdge:Landroid/view/View;

    .line 89
    return-void
.end method

.method public onGetView()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 95
    const v2, 0x7f0800b4

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, arrow:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/mail/ui/ConversationPhotoTeaserView$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v1, v0}, Lcom/android/mail/ui/ConversationPhotoTeaserView$2;-><init>(Lcom/android/mail/ui/ConversationPhotoTeaserView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTabletDevice:Z

    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mListCollapsible:Z

    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :goto_0
    #v1=(PosByte);
    iget v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 268
    :goto_1
    #v1=(Integer);
    return-void

    .line 260
    :cond_0
    #v0=(Boolean);v1=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_1
    #v0=(Integer);v1=(Byte);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 0
    .parameter "folder"
    .parameter "cursor"

    .prologue
    .line 124
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 182
    return-void
.end method

.method public setAdapter(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 147
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 250
    iput p1, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    .line 251
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationPhotoTeaserView;->requestLayout()V

    .line 252
    return-void
.end method

.method protected shouldShowSenderImage()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
