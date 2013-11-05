.class public Lcom/android/mail/ui/ConversationListView;
.super Landroid/widget/FrameLayout;
.source "ConversationListView.java"

# interfaces
.implements Lcom/android/mail/ui/SwipeableListView$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ConversationListView$HintText;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

.field private mActivity:Lcom/android/mail/ui/ControllableActivity;

.field private mConvListContext:Lcom/android/mail/ConversationListContext;

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDensity:F

.field private mDistanceToTriggerSyncDp:F

.field private mHasHintTextViewBeenAdded:Z

.field private final mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

.field private mIgnoreTouchEvents:Z

.field private mIsSyncing:Z

.field private mListView:Lcom/android/mail/ui/SwipeableListView;

.field private final mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

.field private final mSyncDismissListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSyncProgressBar:Landroid/view/View;

.field private mSyncTriggerBar:Landroid/view/View;

.field private mTrackingScrollMaxY:F

.field private mTrackingScrollMovement:Z

.field private mTrackingScrollStartY:F

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ConversationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v2, 0x3fc0

    #v2=(Integer);
    const/4 v1, 0x0

    .line 107
    #v1=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    #p0=(Reference);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationListView;->mIsSyncing:Z

    .line 77
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationListView;->mHasHintTextViewBeenAdded:Z

    .line 89
    const/high16 v0, 0x4316

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    .line 109
    const-string v0, "window"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mWindowManager:Landroid/view/WindowManager;

    .line 110
    new-instance v0, Lcom/android/mail/ui/ConversationListView$HintText;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/mail/ui/ConversationListView$HintText;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    .line 112
    new-instance v0, Lcom/android/mail/ui/ConversationListView$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/ConversationListView$1;-><init>(Lcom/android/mail/ui/ConversationListView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncDismissListener:Landroid/animation/AnimatorListenerAdapter;

    .line 120
    invoke-static {p1}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/ConversationListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncProgressBar:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/ui/ConversationListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method

.method private addHintTextViewIfNecessary()V
    .locals 3

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mHasHintTextViewBeenAdded:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mWindowManager:Landroid/view/WindowManager;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    #v1=(Reference);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->getRefreshHintTextLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mHasHintTextViewBeenAdded:Z

    .line 163
    :cond_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private cancelMovementTracking()V
    .locals 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mSyncDismissListener:Landroid/animation/AnimatorListenerAdapter;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 281
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 283
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationListView$HintText;->access$300(Lcom/android/mail/ui/ConversationListView$HintText;)V

    .line 284
    return-void
.end method

.method private ensureProgressBars()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mSyncProgressBar:Landroid/view/View;

    if-nez v1, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 303
    .local v0, inflater:Landroid/view/LayoutInflater;
    #v0=(Reference);
    const v1, 0x7f04002c

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 304
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ConversationListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    .line 305
    const v1, 0x7f0800b0

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ConversationListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mSyncProgressBar:Landroid/view/View;

    .line 307
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private getRefreshHintTextLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 394
    #v10=(Null);
    new-instance v7, Landroid/graphics/Rect;

    #v7=(UninitRef);
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 395
    .local v7, rect:Landroid/graphics/Rect;
    #v7=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 396
    .local v9, window:Landroid/view/Window;
    #v9=(Reference);
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 397
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 399
    .local v8, statusBarHeight:I
    #v8=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [I

    #v3=(Reference);
    const v4, 0x10102eb

    #v4=(Integer);
    aput v4, v3, v10

    invoke-virtual {v1, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 401
    .local v6, actionBarSize:Landroid/content/res/TypedArray;
    #v6=(Reference);
    invoke-virtual {v6, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 402
    .local v2, actionBarHeight:I
    #v2=(Integer);
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #v0=(UninitRef);
    const/4 v1, -0x1

    #v1=(Byte);
    const/16 v3, 0x3e8

    #v3=(PosShort);
    const/16 v4, 0x8

    #v4=(PosByte);
    const/4 v5, -0x3

    #v5=(Byte);
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 410
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    #v0=(Reference);
    const/16 v1, 0x30

    #v1=(PosByte);
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 411
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 412
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 413
    return-object v0
.end method

.method private setTriggerScale(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 287
    const/4 v0, 0x0

    #v0=(Null);
    cmpl-float v0, p1, v0

    #v0=(Byte);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 298
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 291
    :cond_0
    #v0=(Conflicted);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 294
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_1
    #v1=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->ensureProgressBars()V

    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0
.end method

.method private showToastIfSyncIsOff()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    #v6=(PosByte);
    const/4 v5, 0x0

    .line 341
    #v5=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListView;->mConvListContext:Lcom/android/mail/ConversationListContext;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/ConversationListContext;->account:Lcom/android/mail/providers/Account;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationListView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->calculateReasonSyncOff(Lcom/android/mail/preferences/MailPrefs;Lcom/android/mail/providers/Account;Lcom/android/mail/preferences/AccountPreferences;)I

    move-result v1

    .line 343
    .local v1, reasonSyncOff:I
    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 363
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);
    return-void

    .line 346
    :pswitch_0
    #v0=(Uninit);v3=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    invoke-virtual {v2}, Lcom/android/mail/preferences/MailPrefs;->getNumOfDismissesForAutoSyncOff()I

    move-result v0

    .line 347
    .local v0, num:I
    #v0=(Integer);
    if-lez v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0132

    #v3=(Integer);
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 350
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mMailPrefs:Lcom/android/mail/preferences/MailPrefs;

    invoke-virtual {v2}, Lcom/android/mail/preferences/MailPrefs;->incNumOfDismissesForAutoSyncOff()V

    goto :goto_0

    .line 355
    .end local v0           #num:I
    :pswitch_1
    #v0=(Uninit);v3=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    invoke-virtual {v2}, Lcom/android/mail/preferences/AccountPreferences;->getNumOfDismissesForAccountSyncOff()I

    move-result v0

    .line 356
    .restart local v0       #num:I
    #v0=(Integer);
    if-lez v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0134

    #v3=(Integer);
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 359
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    invoke-virtual {v2}, Lcom/android/mail/preferences/AccountPreferences;->incNumOfDismissesForAccountSyncOff()V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startMovementTracking(F)V
    .locals 3
    .parameter "y"

    .prologue
    .line 264
    sget-object v0, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Start swipe to refresh tracking"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 266
    iput p1, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollStartY:F

    .line 267
    iget v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollStartY:F

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    .line 268
    return-void
.end method

.method private triggerSync()V
    .locals 6

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->ensureProgressBars()V

    .line 311
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "menu_item"

    #v1=(Reference);
    const-string v2, "swipe_refresh"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 317
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getFolderController()Lcom/android/mail/ui/FolderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/FolderController;->requestFolderRefresh()V

    .line 320
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 322
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationListView$HintText;->access$400(Lcom/android/mail/ui/ConversationListView$HintText;)V

    .line 323
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 169
    #v7=(Null);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->addHintTextViewIfNecessary()V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 260
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Reference);
    return v5

    .line 178
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Uninit);v7=(Null);
    iput-boolean v7, p0, Lcom/android/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    goto :goto_0

    .line 185
    :cond_0
    #v5=(Boolean);
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 186
    .local v4, y:F
    #v4=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    #v5=(Integer);
    packed-switch v5, :pswitch_data_1

    .line 260
    :cond_1
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    #v5=(Boolean);
    goto :goto_1

    .line 188
    :pswitch_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Integer);v6=(Uninit);v7=(Null);
    iget-boolean v5, p0, Lcom/android/mail/ui/ConversationListView;->mIsSyncing:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mConvListContext:Lcom/android/mail/ConversationListContext;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 196
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationSelectionSet;->size()I

    move-result v5

    #v5=(Integer);
    if-gtz v5, :cond_1

    .line 202
    :cond_2
    #v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/SwipeableListView;->getChildCount()I

    move-result v5

    #v5=(Integer);
    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v5=(Reference);
    invoke-virtual {v5, v7}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    #v5=(Integer);
    if-nez v5, :cond_1

    .line 203
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/mail/ui/ConversationListView;->startMovementTracking(F)V

    goto :goto_2

    .line 207
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getFolderController()Lcom/android/mail/ui/FolderController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mail/ui/FolderController;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->isDraft()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    .line 210
    sget-object v5, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "ignoring swipe to refresh on DRAFT folder"

    #v6=(Reference);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 213
    :cond_4
    #v5=(Boolean);v6=(Uninit);v7=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getFolderController()Lcom/android/mail/ui/FolderController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mail/ui/FolderController;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v5

    const/16 v6, 0x1000

    #v6=(PosShort);
    invoke-virtual {v5, v6}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    .line 216
    sget-object v5, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "ignoring swipe to refresh on virtual folder"

    #v6=(Reference);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 220
    :cond_5
    #v5=(Boolean);v6=(PosShort);v7=(Null);
    iget v5, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollStartY:F

    #v5=(Integer);
    sub-float v3, v4, v5

    .line 221
    .local v3, verticalDistancePx:F
    #v3=(Float);
    iget v5, p0, Lcom/android/mail/ui/ConversationListView;->mDensity:F

    div-float v0, v3, v5

    .line 222
    .local v0, verticalDistanceDp:F
    #v0=(Float);
    iget v5, p0, Lcom/android/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    cmpl-float v5, v0, v5

    #v5=(Byte);
    if-lez v5, :cond_6

    .line 223
    sget-object v5, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "Sync triggered from distance"

    #v6=(Reference);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->triggerSync()V

    goto/16 :goto_2

    .line 229
    :cond_6
    #v5=(Byte);v6=(PosShort);v7=(Null);
    iget v5, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    #v5=(Integer);
    sub-float v2, v5, v4

    .line 230
    .local v2, verticalDistanceFromMaxPx:F
    #v2=(Float);
    iget v5, p0, Lcom/android/mail/ui/ConversationListView;->mDensity:F

    div-float v1, v2, v5

    .line 231
    .local v1, verticalDistanceFromMaxDp:F
    #v1=(Float);
    const/high16 v5, 0x4120

    cmpl-float v5, v1, v5

    #v5=(Byte);
    if-lez v5, :cond_7

    .line 232
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->cancelMovementTracking()V

    goto/16 :goto_2

    .line 238
    :cond_7
    const/high16 v5, 0x4170

    #v5=(Integer);
    cmpg-float v5, v0, v5

    #v5=(Byte);
    if-gez v5, :cond_8

    .line 240
    const/4 v0, 0x0

    .line 244
    :goto_3
    #v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    #v5=(Reference);
    iget v6, p0, Lcom/android/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    #v6=(Integer);
    div-float v6, v0, v6

    #v6=(Float);
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    #v5=(Float);
    invoke-direct {p0, v5}, Lcom/android/mail/ui/ConversationListView;->setTriggerScale(F)V

    .line 247
    iget v5, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    #v5=(Integer);
    cmpl-float v5, v4, v5

    #v5=(Byte);
    if-lez v5, :cond_1

    .line 248
    iput v4, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    goto/16 :goto_2

    .line 242
    :cond_8
    #v6=(PosShort);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/ConversationListView$HintText;->access$200(Lcom/android/mail/ui/ConversationListView$HintText;)V

    goto :goto_3

    .line 254
    .end local v0           #verticalDistanceDp:F
    .end local v1           #verticalDistanceFromMaxDp:F
    .end local v2           #verticalDistanceFromMaxPx:F
    .end local v3           #verticalDistancePx:F
    :pswitch_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Integer);v6=(Uninit);
    iget-boolean v5, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->cancelMovementTracking()V

    goto/16 :goto_2

    .line 174
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onBeginSwipe()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->cancelMovementTracking()V

    .line 156
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mHasHintTextViewBeenAdded:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mWindowManager:Landroid/view/WindowManager;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 386
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 126
    const v2, 0x102000a

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ConversationListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/ui/SwipeableListView;

    iput-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mListView:Lcom/android/mail/ui/SwipeableListView;

    .line 127
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListView;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v2, p0}, Lcom/android/mail/ui/SwipeableListView;->setSwipeListener(Lcom/android/mail/ui/SwipeableListView$SwipeListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    #v0=(Reference);
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/ui/ConversationListView;->mDensity:F

    .line 134
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    #v2=(Float);
    iget v3, p0, Lcom/android/mail/ui/ConversationListView;->mDensity:F

    #v3=(Integer);
    div-float/2addr v2, v3

    const/high16 v3, 0x4020

    div-float v1, v2, v3

    .line 135
    .local v1, threshold:F
    #v1=(Float);
    const/high16 v2, 0x4396

    #v2=(Integer);
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    #v2=(Float);
    const/high16 v3, 0x4316

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    .line 138
    return-void
.end method

.method protected onSyncFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    #v3=(Null);
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mIsSyncing:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "ConversationListView hide sync status bar"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncProgressBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListView;->mSyncDismissListener:Landroid/animation/AnimatorListenerAdapter;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 374
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mHintText:Lcom/android/mail/ui/ConversationListView$HintText;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationListView$HintText;->access$300(Lcom/android/mail/ui/ConversationListView$HintText;)V

    .line 377
    iput-boolean v3, p0, Lcom/android/mail/ui/ConversationListView;->mIsSyncing:Z

    .line 379
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method protected setActivity(Lcom/android/mail/ui/ControllableActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 142
    return-void
.end method

.method protected setConversationContext(Lcom/android/mail/ConversationListContext;)V
    .locals 2
    .parameter "convListContext"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListView;->mConvListContext:Lcom/android/mail/ConversationListContext;

    .line 146
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/mail/ConversationListContext;->account:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/preferences/AccountPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/preferences/AccountPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mAccountPreferences:Lcom/android/mail/preferences/AccountPreferences;

    .line 148
    return-void
.end method

.method protected showSyncStatusBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    #v3=(Null);
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mIsSyncing:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListView;->mIsSyncing:Z

    .line 329
    sget-object v0, Lcom/android/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "ConversationListView show sync status bar"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->ensureProgressBars()V

    .line 331
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncTriggerBar:Landroid/view/View;

    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncProgressBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView;->mSyncProgressBar:Landroid/view/View;

    const/high16 v1, 0x3f80

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 335
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListView;->showToastIfSyncIsOff()V

    .line 337
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
