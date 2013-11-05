.class public Lcom/android/mail/ui/ConversationSyncDisabledTipView;
.super Landroid/widget/FrameLayout;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Lcom/android/mail/ui/ConversationSpecialItemView;
.implements Lcom/android/mail/ui/SwipeableItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ConversationSyncDisabledTipView$ReasonSyncOff;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sScrollSlop:I

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

.field private final mAccountSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private final mAutoSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

.field private mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private final mListCollapsible:Z

.field private final mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

.field private mReasonSyncOff:I

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;

.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;

.field private mTextArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v7, 0x0

    .line 104
    #v7=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    #p0=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/android/mail/providers/Account;

    .line 61
    iput-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 75
    const/4 v4, -0x1

    #v4=(Byte);
    iput v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    .line 77
    iput v7, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    .local v2, resources:Landroid/content/res/Resources;
    #v2=(Reference);
    sget v4, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    #v4=(Integer);
    if-nez v4, :cond_0

    .line 109
    const v4, 0x7f0e0019

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    .line 110
    const v4, 0x7f0e0006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->sShrinkAnimationDuration:I

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    .line 116
    new-instance v4, Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;-><init>(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAutoSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v4, Lcom/android/mail/ui/ConversationSyncDisabledTipView$2;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView$2;-><init>(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccountSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    .line 134
    const v4, 0x7f0a0136

    #v4=(Integer);
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, subString:Ljava/lang/String;
    #v3=(Reference);
    const v4, 0x7f0a0135

    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    aput-object v3, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, entireString:Ljava/lang/String;
    #v0=(Reference);
    new-instance v4, Landroid/text/SpannableString;

    #v4=(UninitRef);
    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, index:I
    #v1=(Integer);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    #v5=(UninitRef);
    const v6, 0x7f0b0064

    #v6=(Integer);
    invoke-direct {v5, p1, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    #v5=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    invoke-static {v2}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v4

    #v4=(Boolean);
    iput-boolean v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTabletDevice:Z

    .line 146
    const v4, 0x7f0d0001

    #v4=(Integer);
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    #v4=(Boolean);
    iput-boolean v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mListCollapsible:Z

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mActivity:Landroid/app/Activity;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Lcom/android/mail/ui/AnimatedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method public static calculateReasonSyncOff(Lcom/android/mail/preferences/MailPrefs;Lcom/android/mail/providers/Account;Lcom/android/mail/preferences/AccountPreferences;)I
    .locals 4
    .parameter "mailPrefs"
    .parameter "account"
    .parameter "accountPreferences"

    .prologue
    const/4 v1, 0x0

    .line 212
    #v1=(Null);
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 214
    invoke-virtual {p2}, Lcom/android/mail/preferences/AccountPreferences;->resetNumOfDismissesForAccountSyncOff()V

    .line 216
    sget-object v2, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "getMasterSyncAutomatically() return false"

    #v3=(Reference);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    const/4 v1, 0x1

    .line 233
    :goto_0
    #v0=(Conflicted);v1=(PosByte);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 221
    :cond_0
    #v0=(Uninit);v1=(Null);v2=(Boolean);v3=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/preferences/MailPrefs;->resetNumOfDismissesForAutoSyncOff()V

    .line 224
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 225
    .local v0, acct:Landroid/accounts/Account;
    #v0=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 228
    const/4 v1, 0x2

    #v1=(PosByte);
    goto :goto_0

    .line 232
    :cond_1
    #v1=(Null);
    invoke-virtual {p2}, Lcom/android/mail/preferences/AccountPreferences;->resetNumOfDismissesForAccountSyncOff()V

    goto :goto_0
.end method

.method private setReasonSyncOff(I)V
    .locals 4
    .parameter "reason"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 239
    #v2=(Null);
    iget v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    #v0=(Integer);
    if-eq v0, p1, :cond_0

    .line 240
    iput p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    .line 241
    iget v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 243
    :pswitch_0
    #v0=(Integer);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText1:Landroid/widget/TextView;

    #v0=(Reference);
    const v1, 0x7f0a0132

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAutoSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 250
    :pswitch_1
    #v0=(Integer);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText1:Landroid/widget/TextView;

    #v0=(Reference);
    const v1, 0x7f0a0134

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccountSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 241
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 346
    #v6=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->getHeight()I

    move-result v2

    .line 347
    .local v2, start:I
    #v2=(Integer);
    const/4 v0, 0x0

    .line 348
    .local v0, end:I
    #v0=(Null);
    iput v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    .line 349
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

    .line 351
    .local v1, heightAnimator:Landroid/animation/ObjectAnimator;
    #v1=(Reference);
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #v3=(UninitRef);
    const/high16 v4, 0x4000

    #v4=(Integer);
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    sget v3, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->sShrinkAnimationDuration:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    new-instance v3, Lcom/android/mail/ui/ConversationSyncDisabledTipView$4;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView$4;-><init>(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)V

    #v3=(Reference);
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public bindAccount(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ControllableActivity;)V
    .locals 2
    .parameter "account"
    .parameter "activity"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/android/mail/providers/Account;

    .line 151
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/preferences/AccountPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/preferences/AccountPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    .line 152
    check-cast p2, Landroid/app/Activity;

    .end local p2
    iput-object p2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mActivity:Landroid/app/Activity;

    .line 153
    return-void
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .parameter "loaderManager"
    .parameter "savedInstanceState"

    .prologue
    .line 275
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public dismiss()V
    .locals 6

    .prologue
    .line 313
    iget v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 323
    const/4 v3, 0x0

    .line 326
    .local v3, reason:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v3=(Reference);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "list_swipe"

    #v1=(Reference);
    const-string v2, "sync_disabled_tip"

    #v2=(Reference);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 327
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->startDestroyAnimation()V

    .line 328
    return-void

    .line 315
    .end local v3           #reason:Ljava/lang/String;
    :pswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/MailPrefs;->incNumOfDismissesForAutoSyncOff()V

    .line 316
    const-string v3, "auto_sync_off"

    .line 317
    .restart local v3       #reason:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_0

    .line 319
    .end local v3           #reason:Ljava/lang/String;
    :pswitch_1
    #v0=(Integer);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/preferences/AccountPreferences;->incNumOfDismissesForAccountSyncOff()V

    .line 320
    const-string v3, "account_sync_off"

    .line 321
    .restart local v3       #reason:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_0

    .line 313
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 342
    sget v0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 185
    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1

    .line 190
    :cond_1
    #v0=(One);v1=(Null);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/android/mail/providers/Folder;

    iget v2, v2, Lcom/android/mail/providers/Folder;->syncWindow:I

    #v2=(Integer);
    if-lez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->calculateReasonSyncOff(Lcom/android/mail/preferences/MailPrefs;Lcom/android/mail/providers/Account;Lcom/android/mail/preferences/AccountPreferences;)I

    move-result v2

    #v2=(Integer);
    invoke-direct {p0, v2}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->setReasonSyncOff(I)V

    .line 196
    iget v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    if-eqz v2, :cond_2

    .line 197
    sget-object v2, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Sync is off with reason %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    :cond_2
    #v2=(Conflicted);v5=(Conflicted);
    iget v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/preferences/MailPrefs;->getNumOfDismissesForAutoSyncOff()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_3

    :goto_1
    #v0=(Boolean);
    move v1, v0

    #v1=(Boolean);
    goto :goto_0

    :cond_3
    #v0=(One);v1=(Null);
    move v0, v1

    #v0=(Null);
    goto :goto_1

    .line 204
    :pswitch_1
    #v0=(One);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/preferences/AccountPreferences;->getNumOfDismissesForAccountSyncOff()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_4

    :goto_2
    #v0=(Boolean);
    move v1, v0

    #v1=(Boolean);
    goto :goto_0

    :cond_4
    #v0=(One);v1=(Null);
    move v0, v1

    #v0=(Null);
    goto :goto_2

    .line 200
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSwipeableView()Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mSwipeableContent:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 298
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 162
    const v0, 0x7f0800b3

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mSwipeableContent:Landroid/view/View;

    .line 164
    const v0, 0x7f0800f1

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText1:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0800f2

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0800f0

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    .line 168
    const v0, 0x7f0800b6

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/ui/ConversationSyncDisabledTipView$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView$3;-><init>(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v0, 0x7f080140

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTeaserRightEdge:Landroid/view/View;

    .line 176
    return-void
.end method

.method public onGetView()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTabletDevice:Z

    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mListCollapsible:Z

    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :goto_0
    #v1=(PosByte);
    iget v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 399
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 403
    :goto_1
    #v1=(Integer);
    return-void

    .line 395
    :cond_0
    #v0=(Boolean);v1=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 401
    :cond_1
    #v0=(Integer);v1=(Byte);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 0
    .parameter "folder"
    .parameter "cursor"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 181
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 303
    return-void
.end method

.method public setAdapter(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 271
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 385
    iput p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    .line 386
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->requestLayout()V

    .line 387
    return-void
.end method
