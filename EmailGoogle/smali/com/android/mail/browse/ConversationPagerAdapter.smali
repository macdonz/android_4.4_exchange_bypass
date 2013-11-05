.class public Lcom/android/mail/browse/ConversationPagerAdapter;
.super Lcom/android/mail/utils/FragmentStatePagerAdapter2;
.source "ConversationPagerAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;
    }
.end annotation


# static fields
.field private static final BUNDLE_DETACHED_MODE:Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/android/mail/providers/Account;

.field private final mCommonFragmentArgs:Landroid/os/Bundle;

.field private mController:Lcom/android/mail/ui/ActivityController;

.field private mDetachedMode:Z

.field private final mFolder:Lcom/android/mail/providers/Folder;

.field private final mFolderObserver:Lcom/android/mail/providers/FolderObserver;

.field private mInDataSetChange:Z

.field private final mInitialConversation:Lcom/android/mail/providers/Conversation;

.field private mLastKnownCount:I

.field private final mListObserver:Landroid/database/DataSetObserver;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mResources:Landroid/content/res/Resources;

.field private mSanitizedHtml:Z

.field private mSingletonMode:Z

.field private mStopListeningMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-class v1, Lcom/android/mail/browse/ConversationPagerAdapter;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-detachedmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/ConversationPagerAdapter;->BUNDLE_DETACHED_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;)V
    .locals 3
    .parameter "res"
    .parameter "fm"
    .parameter "account"
    .parameter "folder"
    .parameter "initialConversation"

    .prologue
    const/4 v2, 0x0

    .line 109
    #v2=(Null);
    invoke-direct {p0, p2, v2}, Lcom/android/mail/utils/FragmentStatePagerAdapter2;-><init>(Landroid/app/FragmentManager;Z)V

    .line 45
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;-><init>(Lcom/android/mail/browse/ConversationPagerAdapter;Lcom/android/mail/browse/ConversationPagerAdapter$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    .line 46
    new-instance v0, Lcom/android/mail/browse/ConversationPagerAdapter$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/ConversationPagerAdapter$1;-><init>(Lcom/android/mail/browse/ConversationPagerAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 61
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    .line 110
    iput-object p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mResources:Landroid/content/res/Resources;

    .line 111
    invoke-static {p3}, Lcom/android/mail/ui/AbstractConversationViewFragment;->makeBasicArgs(Lcom/android/mail/providers/Account;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mCommonFragmentArgs:Landroid/os/Bundle;

    .line 112
    iput-object p5, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/android/mail/providers/Conversation;

    .line 113
    iput-object p3, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/android/mail/providers/Account;

    .line 114
    iput-object p4, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolder:Lcom/android/mail/providers/Folder;

    .line 115
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/android/mail/providers/Account;

    const/16 v1, 0x80

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSanitizedHtml:Z

    .line 117
    return-void
.end method

.method private getConversationViewFragment(Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/AbstractConversationViewFragment;
    .locals 1
    .parameter "c"

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSanitizedHtml:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mCommonFragmentArgs:Landroid/os/Bundle;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/ui/ConversationViewFragment;->newInstance(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/ConversationViewFragment;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mCommonFragmentArgs:Landroid/os/Bundle;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/ui/SecureConversationViewFragment;->newInstance(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/SecureConversationViewFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private getCursor()Lcom/android/mail/browse/ConversationCursor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    #v0=(Null);
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 164
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 155
    :cond_0
    #v0=(Null);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    if-nez v1, :cond_1

    .line 159
    const-string v1, "ConvPager"

    const-string v2, "Pager adapter has a null controller. If the conversation view is going away, this is fine.  Otherwise, the state is inconsistent"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 164
    :cond_1
    #v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultConversation()Lcom/android/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/android/mail/ui/ActivityController;->getCurrentConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 370
    .local v0, c:Lcom/android/mail/providers/Conversation;
    :goto_0
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mInitialConversation:Lcom/android/mail/providers/Conversation;

    .line 373
    :cond_0
    return-object v0

    .line 369
    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    :cond_1
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private setDetachedMode(Z)V
    .locals 1
    .parameter "detached"

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    #v0=(Boolean);
    if-ne v0, p1, :cond_0

    .line 275
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 270
    :cond_0
    #v0=(Boolean);
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    .line 271
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->setDetachedMode()V

    .line 274
    :cond_1
    #v0=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public getConversationPosition(Lcom/android/mail/providers/Conversation;)I
    .locals 11
    .parameter "conv"

    .prologue
    const/4 v3, -0x2

    #v3=(Byte);
    const/4 v10, 0x2

    #v10=(PosByte);
    const/4 v9, 0x1

    #v9=(One);
    const/4 v4, 0x0

    .line 377
    #v4=(Null);
    if-nez p1, :cond_0

    .line 407
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v3

    .line 381
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Byte);v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 382
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->isPagingDisabled(Landroid/database/Cursor;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 383
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getDefaultConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 384
    .local v1, def:Lcom/android/mail/providers/Conversation;
    #v1=(Reference);
    invoke-virtual {p1, v1}, Lcom/android/mail/providers/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 385
    const-string v5, "ConvPager"

    #v5=(Reference);
    const-string v6, "unable to find conversation in singleton mode. c=%s def=%s"

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    aput-object p1, v7, v4

    aput-object v1, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 389
    :cond_1
    #v5=(Boolean);v6=(Uninit);v7=(Uninit);
    const-string v5, "ConvPager"

    #v5=(Reference);
    const-string v6, "in CPA.getConversationPosition returning 0, conv=%s this=%s"

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    aput-object p1, v7, v4

    aput-object p0, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v4

    .line 391
    #v3=(Null);
    goto :goto_0

    .line 397
    .end local v1           #def:Lcom/android/mail/providers/Conversation;
    :cond_2
    #v1=(Uninit);v3=(Byte);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    const/4 v3, -0x2

    .line 398
    .local v3, result:I
    iget-wide v5, p1, Lcom/android/mail/providers/Conversation;->id:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v0, v5, v6}, Lcom/android/mail/browse/ConversationCursor;->getConversationPosition(J)I

    move-result v2

    .line 399
    .local v2, pos:I
    #v2=(Integer);
    if-ltz v2, :cond_3

    .line 400
    const-string v5, "ConvPager"

    #v5=(Reference);
    const-string v6, "pager adapter found repositioned convo %s at pos=%d"

    #v6=(Reference);
    new-array v7, v10, [Ljava/lang/Object;

    #v7=(Reference);
    aput-object p1, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    move v3, v2

    .line 405
    :cond_3
    #v3=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    const-string v5, "ConvPager"

    #v5=(Reference);
    const-string v6, "in CPA.getConversationPosition (normal), conv=%s pos=%s this=%s"

    #v6=(Reference);
    const/4 v7, 0x3

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    aput-object p1, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v7, v9

    aput-object p0, v7, v10

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 7

    .prologue
    const/4 v4, 0x3

    #v4=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v1, 0x1

    .line 206
    #v1=(One);
    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 207
    const-string v2, "ConvPager"

    #v2=(Reference);
    invoke-static {v2, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 209
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    const-string v2, "ConvPager"

    #v2=(Reference);
    const-string v3, "IN CPA.getCount stopListeningMode, returning lastKnownCount=%d. cursor=%s real count=%s"

    #v3=(Reference);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    iget v5, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    aput-object v0, v4, v1

    const/4 v5, 0x2

    #v5=(PosByte);
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    #v1=(Reference);
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 214
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    .line 223
    :goto_1
    #v1=(Integer);
    return v1

    .line 209
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    #v0=(Reference);v1=(One);v2=(Reference);v3=(Reference);v4=(Reference);v5=(PosByte);
    const-string v1, "N/A"

    #v1=(Reference);
    goto :goto_0

    .line 217
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    #v0=(Uninit);v1=(One);v2=(Boolean);v3=(Uninit);v4=(PosByte);v5=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 218
    .restart local v0       #cursor:Landroid/database/Cursor;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->isPagingDisabled(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    const-string v2, "ConvPager"

    #v2=(Reference);
    const-string v3, "IN CPA.getCount, returning 1 (effective singleton). cursor=%s"

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 223
    :cond_3
    #v2=(Boolean);v3=(Uninit);v4=(PosByte);
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    goto :goto_1
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 170
    #v7=(Null);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v1

    .line 172
    .local v1, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->isPagingDisabled(Landroid/database/Cursor;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const-string v3, "ConvPager"

    #v3=(Reference);
    const-string v4, "pager cursor is null and position is non-zero: %d"

    #v4=(Reference);
    new-array v5, v8, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getDefaultConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 180
    .local v0, c:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    iput v7, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 191
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getConversationViewFragment(Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/AbstractConversationViewFragment;

    move-result-object v2

    .line 192
    .local v2, f:Lcom/android/mail/ui/AbstractConversationViewFragment;
    #v2=(Reference);
    const-string v3, "ConvPager"

    #v3=(Reference);
    const-string v4, "IN PagerAdapter.getItem, frag=%s conv=%s this=%s"

    #v4=(Reference);
    const/4 v5, 0x3

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    aput-object v2, v5, v7

    aput-object v0, v5, v8

    aput-object p0, v5, v9

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 193
    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    .end local v2           #f:Lcom/android/mail/ui/AbstractConversationViewFragment;
    :goto_1
    #v0=(Conflicted);
    return-object v2

    .line 182
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {v1, p1}, Lcom/android/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    const-string v3, "ConvPager"

    #v3=(Reference);
    const-string v4, "unable to seek to ConversationCursor pos=%d (%s)"

    #v4=(Reference);
    new-array v5, v9, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 187
    :cond_2
    #v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->notifyUIPositionChange()V

    .line 188
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 189
    .restart local v0       #c:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    iput p1, v0, Lcom/android/mail/providers/Conversation;->position:I

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5
    .parameter "item"

    .prologue
    .line 228
    instance-of v1, p1, Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 229
    const-string v1, "ConvPager"

    #v1=(Reference);
    const-string v2, "getItemPosition received unexpected item: %s"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-object v0, p1

    .line 232
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AbstractConversationViewFragment;

    .line 233
    .local v0, fragment:Lcom/android/mail/ui/AbstractConversationViewFragment;
    invoke-virtual {v0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/android/mail/providers/Conversation;)I

    move-result v1

    #v1=(Integer);
    return v1
.end method

.method public isDetached()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    #v0=(Boolean);
    return v0
.end method

.method public isPagingDisabled(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isSingletonMode()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    #v0=(Boolean);
    return v0
.end method

.method public matches(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Z
    .locals 1
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/Account;->matches(Lcom/android/mail/providers/Account;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

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

.method public notifyDataSetChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    #v12=(One);
    const/4 v11, 0x0

    .line 301
    #v11=(Null);
    iget-boolean v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 302
    const-string v7, "ConvPager"

    #v7=(Reference);
    const-string v8, "CPA ignoring dataset change generated during dataset change"

    #v8=(Reference);
    new-array v9, v11, [Ljava/lang/Object;

    #v9=(Reference);
    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 359
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 306
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Boolean);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iput-boolean v12, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    .line 317
    iget-object v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v7=(Reference);
    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    #v7=(Boolean);
    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    #v7=(Reference);
    if-eqz v7, :cond_5

    .line 318
    iget-object v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-interface {v7}, Lcom/android/mail/ui/ActivityController;->getCurrentConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 319
    .local v1, currConversation:Lcom/android/mail/providers/Conversation;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/android/mail/providers/Conversation;)I

    move-result v6

    .line 320
    .local v6, pos:I
    #v6=(Integer);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v3

    .line 321
    .local v3, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v3=(Reference);
    const/4 v7, -0x2

    #v7=(Byte);
    if-ne v6, v7, :cond_3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 324
    invoke-direct {p0, v12}, Lcom/android/mail/browse/ConversationPagerAdapter;->setDetachedMode(Z)V

    .line 325
    const-string v7, "ConvPager"

    #v7=(Reference);
    const-string v8, "CPA: current conv is gone, reverting to detached mode. c=%s"

    #v8=(Reference);
    new-array v9, v12, [Ljava/lang/Object;

    #v9=(Reference);
    iget-object v10, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v10=(Reference);
    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    iget-object v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 330
    .local v2, currentItem:I
    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/browse/ConversationPagerAdapter;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/mail/ui/AbstractConversationViewFragment;

    .line 333
    .local v5, fragment:Lcom/android/mail/ui/AbstractConversationViewFragment;
    if-eqz v5, :cond_2

    .line 334
    invoke-virtual {v5}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onDetachedModeEntered()V

    .line 357
    .end local v1           #currConversation:Lcom/android/mail/providers/Conversation;
    .end local v2           #currentItem:I
    .end local v3           #cursor:Lcom/android/mail/browse/ConversationCursor;
    .end local v5           #fragment:Lcom/android/mail/ui/AbstractConversationViewFragment;
    .end local v6           #pos:I
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-super {p0}, Lcom/android/mail/utils/FragmentStatePagerAdapter2;->notifyDataSetChanged()V

    .line 358
    iput-boolean v11, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mInDataSetChange:Z

    goto :goto_0

    .line 336
    .restart local v1       #currConversation:Lcom/android/mail/providers/Conversation;
    .restart local v2       #currentItem:I
    .restart local v3       #cursor:Lcom/android/mail/browse/ConversationCursor;
    .restart local v5       #fragment:Lcom/android/mail/ui/AbstractConversationViewFragment;
    .restart local v6       #pos:I
    :cond_2
    #v0=(Uninit);v1=(Reference);v2=(Integer);v3=(Reference);v4=(Uninit);v5=(Reference);v6=(Integer);v7=(Reference);v8=(Reference);v9=(Reference);v10=(Reference);
    const-string v7, "ConvPager"

    const-string v8, "CPA: notifyDataSetChanged: fragment null, current item: %d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 343
    .end local v2           #currentItem:I
    .end local v5           #fragment:Lcom/android/mail/ui/AbstractConversationViewFragment;
    :cond_3
    #v2=(Uninit);v5=(Uninit);v7=(Byte);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    if-nez v3, :cond_4

    const/4 v4, 0x0

    .line 345
    .local v4, frag:Lcom/android/mail/ui/AbstractConversationViewFragment;
    :goto_2
    #v4=(Reference);v7=(Conflicted);
    if-eqz v4, :cond_1

    invoke-virtual {v3, v6}, Lcom/android/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/android/mail/ui/AbstractConversationViewFragment;->isUserVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 347
    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationCursor;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 348
    .local v0, conv:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    iput v6, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 349
    invoke-virtual {v4, v0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onConversationUpdated(Lcom/android/mail/providers/Conversation;)V

    .line 350
    iget-object v7, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v7=(Reference);
    invoke-interface {v7, v0}, Lcom/android/mail/ui/ActivityController;->setCurrentConversation(Lcom/android/mail/providers/Conversation;)V

    goto :goto_1

    .line 343
    .end local v0           #conv:Lcom/android/mail/providers/Conversation;
    .end local v4           #frag:Lcom/android/mail/ui/AbstractConversationViewFragment;
    :cond_4
    #v0=(Uninit);v4=(Uninit);v7=(Byte);
    invoke-virtual {p0, v6}, Lcom/android/mail/browse/ConversationPagerAdapter;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/mail/ui/AbstractConversationViewFragment;

    move-object v4, v7

    #v4=(Reference);
    goto :goto_2

    .line 354
    .end local v1           #currConversation:Lcom/android/mail/providers/Conversation;
    .end local v3           #cursor:Lcom/android/mail/browse/ConversationCursor;
    .end local v6           #pos:I
    :cond_5
    #v1=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Conflicted);
    const-string v7, "ConvPager"

    #v7=(Reference);
    const-string v8, "in CPA.notifyDataSetChanged, doing nothing. this=%s"

    #v8=(Reference);
    new-array v9, v12, [Ljava/lang/Object;

    #v9=(Reference);
    aput-object p0, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 485
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 464
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 468
    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v2=(Reference);
    if-nez v2, :cond_1

    .line 480
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 471
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v1

    .line 472
    .local v1, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v1=(Reference);
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 477
    .local v0, c:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    iput p1, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 478
    const-string v2, "ConvPager"

    #v2=(Reference);
    const-string v3, "pager adapter setting current conv: %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 479
    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-interface {v2, v0}, Lcom/android/mail/ui/ActivityController;->setCurrentConversation(Lcom/android/mail/providers/Conversation;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 6
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/mail/utils/FragmentStatePagerAdapter2;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 257
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 258
    #v0=(Reference);
    check-cast v0, Landroid/os/Bundle;

    .line 259
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 260
    sget-object v2, Lcom/android/mail/browse/ConversationPagerAdapter;->BUNDLE_DETACHED_MODE:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 261
    .local v1, detached:Z
    #v1=(Boolean);
    invoke-direct {p0, v1}, Lcom/android/mail/browse/ConversationPagerAdapter;->setDetachedMode(Z)V

    .line 263
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #detached:Z
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const-string v2, "ConvPager"

    #v2=(Reference);
    const-string v3, "OUT PagerAdapter.restoreState. this=%s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 264
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 245
    const-string v1, "ConvPager"

    #v1=(Reference);
    const-string v2, "IN PagerAdapter.saveState. this=%s"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    invoke-super {p0}, Lcom/android/mail/utils/FragmentStatePagerAdapter2;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/os/Bundle;

    .line 247
    .local v0, state:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #state:Landroid/os/Bundle;
    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .restart local v0       #state:Landroid/os/Bundle;
    :cond_0
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/browse/ConversationPagerAdapter;->BUNDLE_DETACHED_MODE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    #v2=(Boolean);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    return-object v0
.end method

.method public setActivityController(Lcom/android/mail/ui/ActivityController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 422
    .local v0, wasNull:Z
    :goto_0
    #v0=(Boolean);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    #v2=(Reference);
    invoke-interface {v1, v2}, Lcom/android/mail/ui/ActivityController;->unregisterConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 424
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/ActivityController;->unregisterFolderObserver(Landroid/database/DataSetObserver;)V

    .line 426
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iput-object p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    .line 427
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    #v2=(Reference);
    invoke-interface {v1, v2}, Lcom/android/mail/ui/ActivityController;->registerConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 429
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    iget-object v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/FolderObserver;->initialize(Lcom/android/mail/ui/FolderController;)Lcom/android/mail/providers/Folder;

    .line 430
    if-nez v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 437
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 421
    .end local v0           #wasNull:Z
    :cond_2
    #v0=(Uninit);v1=(Reference);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setItemVisible(Landroid/app/Fragment;Z)V
    .locals 1
    .parameter "item"
    .parameter "visible"

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Lcom/android/mail/utils/FragmentStatePagerAdapter2;->setItemVisible(Landroid/app/Fragment;Z)V

    move-object v0, p1

    .line 364
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AbstractConversationViewFragment;

    .line 365
    .local v0, fragment:Lcom/android/mail/ui/AbstractConversationViewFragment;
    invoke-virtual {v0, p2}, Lcom/android/mail/ui/AbstractConversationViewFragment;->setExtraUserVisibleHint(Z)V

    .line 366
    return-void
.end method

.method public setPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter "pager"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 414
    :cond_0
    #v1=(Conflicted);
    iput-object p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    .line 415
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 418
    :cond_1
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 238
    const-string v0, "ConvPager"

    #v0=(Reference);
    const-string v1, "IN PagerAdapter.setPrimaryItem, pos=%d, frag=%s"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/utils/FragmentStatePagerAdapter2;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 241
    return-void
.end method

.method public setSingletonMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    #v0=(Boolean);
    if-eq v0, p1, :cond_0

    .line 126
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    .line 127
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 129
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 443
    #v2=(One);
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 459
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 452
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(One);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mListObserver:Landroid/database/DataSetObserver;

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ActivityController;->unregisterConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 454
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 456
    :cond_1
    #v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCount()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    .line 457
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    .line 458
    const-string v0, "ConvPager"

    #v0=(Reference);
    const-string v1, "CPA.stopListening, this=%s"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 281
    const-string v1, " detachedMode="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mDetachedMode:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, " singletonMode="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mSingletonMode:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, " mController="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, " mPager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " mStopListening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mStopListeningMode:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " mLastKnownCount="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lcom/android/mail/browse/ConversationPagerAdapter;->mLastKnownCount:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " cursor="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationPagerAdapter;->getCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
