.class public Lcom/android/mail/ui/ConversationsInOutboxTipView;
.super Landroid/widget/FrameLayout;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Lcom/android/mail/ui/ConversationSpecialItemView;
.implements Lcom/android/mail/ui/SwipeableItemView;


# static fields
.field private static sScrollSlop:I

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

.field private mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private final mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFolderSelector:Lcom/android/mail/ui/FolderSelector;

.field private final mListCollapsible:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mOutbox:Lcom/android/mail/providers/Folder;

.field private mOutboxCount:I

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;

.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    .line 88
    #v2=(Byte);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    #p0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/android/mail/providers/Account;

    .line 62
    iput v2, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    .line 67
    iput v2, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    .line 152
    new-instance v1, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView$3;-><init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, resources:Landroid/content/res/Resources;
    #v0=(Reference);
    sget v1, Lcom/android/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 93
    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    .line 94
    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/ConversationsInOutboxTipView;->sShrinkAnimationDuration:I

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mTabletDevice:Z

    .line 99
    const v1, 0x7f0d0001

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mListCollapsible:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->goToOutbox()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mail/ui/ConversationsInOutboxTipView;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/android/mail/providers/Folder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mail/ui/ConversationsInOutboxTipView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->onOutboxTotalCount(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mail/ui/ConversationsInOutboxTipView;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mail/ui/ConversationsInOutboxTipView;)Lcom/android/mail/ui/AnimatedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method private goToOutbox()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mFolderSelector:Lcom/android/mail/ui/FolderSelector;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/FolderSelector;->onFolderSelected(Lcom/android/mail/providers/Folder;)V

    .line 140
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method private onOutboxTotalCount(I)V
    .locals 2
    .parameter "outboxCount"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    #v0=(Integer);
    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    .line 188
    if-lez p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mText:Landroid/widget/TextView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->updateText()V

    .line 194
    :cond_0
    #v0=(Conflicted);
    if-nez p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/mail/preferences/AccountPreferences;->setLastSeenOutboxCount(I)V

    .line 199
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    #v6=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->getHeight()I

    move-result v2

    .line 302
    .local v2, start:I
    #v2=(Integer);
    const/4 v0, 0x0

    .line 303
    .local v0, end:I
    #v0=(Null);
    iput v2, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    .line 304
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

    .line 306
    .local v1, heightAnimator:Landroid/animation/ObjectAnimator;
    #v1=(Reference);
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #v3=(UninitRef);
    const/high16 v4, 0x4000

    #v4=(Integer);
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    sget v3, Lcom/android/mail/ui/ConversationsInOutboxTipView;->sShrinkAnimationDuration:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    new-instance v3, Lcom/android/mail/ui/ConversationsInOutboxTipView$4;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView$4;-><init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 331
    return-void
.end method

.method private updateText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 203
    #v8=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    .local v2, resources:Landroid/content/res/Resources;
    #v2=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/android/mail/providers/Folder;

    iget-object v3, v5, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 205
    .local v3, subString:Ljava/lang/String;
    #v3=(Reference);
    const v5, 0x7f0a0137

    #v5=(Integer);
    const/4 v6, 0x2

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    iget v7, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v8

    const/4 v7, 0x1

    #v7=(One);
    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, entireString:Ljava/lang/String;
    #v0=(Reference);
    new-instance v4, Landroid/text/SpannableString;

    #v4=(UninitRef);
    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    .local v4, text:Landroid/text/SpannableString;
    #v4=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, index:I
    #v1=(Integer);
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    #v5=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0064

    #v7=(Integer);
    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    #v5=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    iget-object v5, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public bind(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/FolderSelector;)V
    .locals 2
    .parameter "account"
    .parameter "folderSelector"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/android/mail/providers/Account;

    .line 104
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/preferences/AccountPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/preferences/AccountPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    .line 105
    iput-object p2, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mFolderSelector:Lcom/android/mail/ui/FolderSelector;

    .line 106
    return-void
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .parameter "loaderManager"
    .parameter "savedInstanceState"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 237
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/mail/preferences/AccountPreferences;->setLastSeenOutboxCount(I)V

    .line 282
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->startDestroyAnimation()V

    .line 283
    return-void
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    #v0=(Integer);
    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    iget-object v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/preferences/AccountPreferences;->getLastSeenOutboxCount()I

    move-result v1

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 259
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f0800ec

    .line 115
    #v1=(Integer);
    const v0, 0x7f0800b3

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mSwipeableContent:Landroid/view/View;

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mText:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/ConversationsInOutboxTipView$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView$1;-><init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0800b6

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/ConversationsInOutboxTipView$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView$2;-><init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f080140

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mTeaserRightEdge:Landroid/view/View;

    .line 134
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
    .line 346
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mTabletDevice:Z

    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mListCollapsible:Z

    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :goto_0
    #v1=(PosByte);
    iget v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 354
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 358
    :goto_1
    #v1=(Integer);
    return-void

    .line 350
    :cond_0
    #v0=(Boolean);v1=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_1
    #v0=(Integer);v1=(Byte);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 4
    .parameter "folder"
    .parameter "cursor"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mLoaderManager:Landroid/app/LoaderManager;

    #v0=(Reference);
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    iget v0, p1, Lcom/android/mail/providers/Folder;->type:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mLoaderManager:Landroid/app/LoaderManager;

    #v0=(Reference);
    const/16 v1, 0x44c

    #v1=(PosShort);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 150
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 264
    return-void
.end method

.method public setAdapter(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 232
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 340
    iput p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    .line 341
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->requestLayout()V

    .line 342
    return-void
.end method
