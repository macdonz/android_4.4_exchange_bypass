.class public Lcom/android/mail/browse/ConversationPagerController;
.super Ljava/lang/Object;
.source "ConversationPagerController.java"


# instance fields
.field private mActivityController:Lcom/android/mail/ui/ActivityController;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mInitialConversationLoading:Z

.field private final mLoadedObservable:Landroid/database/DataSetObservable;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

.field private mShown:Z


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/RestrictedActivity;Lcom/android/mail/ui/ActivityController;)V
    .locals 1
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    #p0=(Reference);
    new-instance v0, Landroid/database/DataSetObservable;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    .line 89
    invoke-interface {p1}, Lcom/android/mail/ui/RestrictedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 90
    const v0, 0x7f0800ed

    #v0=(Integer);
    invoke-interface {p1, v0}, Lcom/android/mail/ui/RestrictedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    .line 91
    iput-object p2, p0, Lcom/android/mail/browse/ConversationPagerController;->mActivityController:Lcom/android/mail/ui/ActivityController;

    .line 92
    invoke-interface {p1}, Lcom/android/mail/ui/RestrictedActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationPagerController;->setupPageMargin(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    #v1=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->setActivityController(Lcom/android/mail/ui/ActivityController;)V

    .line 173
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->setPager(Landroid/support/v4/view/ViewPager;)V

    .line 174
    iput-object v1, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    .line 176
    :cond_0
    return-void
.end method

.method private setupPageMargin(Landroid/content/Context;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 216
    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [I

    #v4=(Reference);
    const v5, 0x1010214

    #v5=(Integer);
    aput v5, v4, v3

    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 217
    .local v7, a:Landroid/content/res/TypedArray;
    #v7=(Reference);
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 218
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 221
    .local v2, padding:I
    #v2=(Integer);
    new-instance v0, Lcom/android/mail/graphics/PageMarginDrawable;

    #v0=(UninitRef);
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    #v6=(Integer);
    move v4, v2

    #v4=(Integer);
    move v5, v3

    #v5=(Null);
    invoke-direct/range {v0 .. v6}, Lcom/android/mail/graphics/PageMarginDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIII)V

    .line 223
    .local v0, gutterDrawable:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    #v3=(Reference);
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    #v5=(Integer);
    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 224
    iget-object v3, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 3
    .parameter "changeVisibility"

    .prologue
    const/4 v2, 0x0

    .line 146
    #v2=(Null);
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mShown:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 147
    const-string v0, "ConvPager"

    #v0=(Reference);
    const-string v1, "IN CPC.hide, but already hidden"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Null);
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerController;->mShown:Z

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 155
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    const-string v0, "ConvPager"

    #v0=(Reference);
    const-string v1, "IN CPC.hide, clearing adapter and unregistering list observer"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerController;->cleanup()V

    goto :goto_0
.end method

.method public isInitialConversationLoading()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    #v0=(Boolean);
    return v0
.end method

.method public onConversationSeen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    #v3=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 185
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->isSingletonMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 186
    const-string v0, "ConvPager"

    #v0=(Reference);
    const-string v1, "IN pager adapter, finished loading primary conversation, switching to cursor mode to load other conversations"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/ConversationPagerAdapter;->setSingletonMode(Z)V

    .line 191
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 192
    iput-boolean v3, p0, Lcom/android/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    .line 193
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerController;->cleanup()V

    .line 167
    return-void
.end method

.method public registerConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public show(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;Z)V
    .locals 10
    .parameter "account"
    .parameter "folder"
    .parameter "initialConversation"
    .parameter "changeVisibility"

    .prologue
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    .line 97
    #v8=(Null);
    iput-boolean v9, p0, Lcom/android/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    .line 99
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mShown:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 100
    const-string v0, "ConvPager"

    #v0=(Reference);
    const-string v1, "IN CPC.show, but already shown"

    #v1=(Reference);
    new-array v2, v8, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/browse/ConversationPagerAdapter;->matches(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->isDetached()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    invoke-virtual {v0, p3}, Lcom/android/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/android/mail/providers/Conversation;)I

    move-result v7

    .line 107
    .local v7, pos:I
    #v7=(Integer);
    if-ltz v7, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 143
    .end local v7           #pos:I
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 113
    :cond_0
    #v0=(Conflicted);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerController;->cleanup()V

    .line 116
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    if-eqz p4, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    #v0=(Reference);
    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 120
    :cond_2
    #v0=(Conflicted);
    new-instance v0, Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerController;->mFragmentManager:Landroid/app/FragmentManager;

    #v2=(Reference);
    move-object v3, p1

    #v3=(Reference);
    move-object v4, p2

    #v4=(Reference);
    move-object v5, p3

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ConversationPagerAdapter;-><init>(Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    .line 122
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v8}, Lcom/android/mail/browse/ConversationPagerAdapter;->setSingletonMode(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerController;->mActivityController:Lcom/android/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->setActivityController(Lcom/android/mail/ui/ActivityController;)V

    .line 124
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->setPager(Landroid/support/v4/view/ViewPager;)V

    .line 125
    const-string v0, "ConvPager"

    const-string v1, "IN CPC.show, adapter=%s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    sget-object v0, Lcom/android/mail/utils/Utils;->sConvLoadTimer:Lcom/android/mail/perf/SimpleTimer;

    const-string v1, "pager init"

    invoke-virtual {v0, v1}, Lcom/android/mail/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 128
    const-string v0, "ConvPager"

    const-string v1, "init pager adapter, count=%d initialConv=%s adapter=%s"

    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCount()I

    move-result v3

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v8

    aput-object p3, v2, v9

    const/4 v3, 0x2

    #v3=(PosByte);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 134
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/android/mail/providers/Conversation;)I

    move-result v6

    .line 135
    .local v6, initialPos:I
    #v6=(Integer);
    if-ltz v6, :cond_3

    .line 136
    const-string v0, "ConvPager"

    const-string v1, "*** pager fragment init pos=%d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 140
    :cond_3
    #v3=(Conflicted);
    sget-object v0, Lcom/android/mail/utils/Utils;->sConvLoadTimer:Lcom/android/mail/perf/SimpleTimer;

    const-string v1, "pager setAdapter"

    invoke-virtual {v0, v1}, Lcom/android/mail/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 142
    iput-boolean v9, p0, Lcom/android/mail/browse/ConversationPagerController;->mShown:Z

    goto/16 :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->stopListening()V

    .line 213
    :cond_0
    return-void
.end method

.method public unregisterConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 203
    return-void
.end method
