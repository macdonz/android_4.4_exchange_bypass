.class public final Lcom/android/mail/ui/ConversationListFragment;
.super Landroid/app/ListFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;
.implements Lcom/android/mail/ui/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ConversationListFragment$ConversationCursorObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static NO_NEW_MESSAGE_DURATION:J

.field private static TIMESTAMP_UPDATE_INTERVAL:I

.field private static mTabletDevice:Z

.field private static sSelectionModeAnimationDuration:J


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private final mAccountObserver:Lcom/android/mail/providers/AccountObserver;

.field private mActivity:Lcom/android/mail/ui/ControllableActivity;

.field private mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

.field private mConversationCursorHash:I

.field private mConversationCursorObserver:Landroid/database/DataSetObserver;

.field private final mConversationListListener:Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;

.field private mConversationListView:Lcom/android/mail/ui/ConversationListView;

.field private final mConversationSetObserver:Lcom/android/mail/ui/ConversationSetObserver;

.field private mEmptyView:Landroid/view/View;

.field private mErrorListener:Lcom/android/mail/ui/ErrorListener;

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private mFolderObserver:Lcom/android/mail/providers/FolderObserver;

.field private mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

.field private final mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

.field private mListView:Lcom/android/mail/ui/SwipeableListView;

.field private mScrollPositionRestored:Z

.field private mSearchResultCountTextView:Landroid/widget/TextView;

.field private mSearchStatusTextView:Landroid/widget/TextView;

.field private mSearchStatusView:Landroid/view/View;

.field private mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

.field private mSelectionModeExitedTimestamp:J

.field private mUpdateTimestampsRunnable:Ljava/lang/Runnable;

.field private mUpdater:Lcom/android/mail/ui/ConversationUpdater;

.field private mViewContext:Lcom/android/mail/ConversationListContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    .line 94
    const-wide/16 v0, 0x3e8

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/android/mail/ui/ConversationListFragment;->NO_NEW_MESSAGE_DURATION:J

    .line 150
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 101
    #p0=(Reference);
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 125
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/mail/ui/ConversationListFragment$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/ConversationListFragment$1;-><init>(Lcom/android/mail/ui/ConversationListFragment;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 152
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    .line 158
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 685
    new-instance v0, Lcom/android/mail/ui/ConversationListFragment$4;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/ConversationListFragment$4;-><init>(Lcom/android/mail/ui/ConversationListFragment;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListListener:Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;

    .line 963
    new-instance v0, Lcom/android/mail/ui/ConversationListFragment$6;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/ConversationListFragment$6;-><init>(Lcom/android/mail/ui/ConversationListFragment;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/android/mail/ui/ConversationSetObserver;

    .line 166
    return-void
.end method

.method static synthetic access$002(Lcom/android/mail/ui/ConversationListFragment;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mail/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->setSwipeAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mail/ui/ConversationListFragment;)Lcom/android/mail/ui/SwipeableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mail/ui/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$600(Lcom/android/mail/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mail/ui/ConversationListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/mail/ui/ConversationListFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    return-wide p1
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 74
    sget-wide v0, Lcom/android/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method private checkSyncStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 938
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->isSyncInProgress()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "CLF.checkSyncStatus still syncing"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 946
    :goto_0
    return-void

    .line 943
    :cond_0
    #v0=(Conflicted);v1=(Uninit);v2=(Null);
    sget-object v0, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "CLF.checkSyncStatus done syncing"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 944
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListView:Lcom/android/mail/ui/ConversationListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationListView;->onSyncFinished()V

    goto :goto_0
.end method

.method private clearChoicesAndActivated()V
    .locals 4

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v0

    .line 640
    .local v0, currentSelected:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, v3}, Lcom/android/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    .line 643
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method private getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    invoke-interface {v0}, Lcom/android/mail/ui/ConversationListCallbacks;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private static final getDefaultChoiceMode(Z)I
    .locals 1
    .parameter "isTablet"

    .prologue
    .line 372
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private initializeUiForFirstDisplay()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    const v1, 0x7f08012e

    #v1=(Integer);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchStatusView:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const v1, 0x7f08012f

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const v1, 0x7f080130

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    .line 245
    return-void
.end method

.method public static newInstance(Lcom/android/mail/ConversationListContext;)Lcom/android/mail/ui/ConversationListFragment;
    .locals 4
    .parameter "viewContext"

    .prologue
    .line 180
    new-instance v1, Lcom/android/mail/ui/ConversationListFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/mail/ui/ConversationListFragment;-><init>()V

    .line 181
    .local v1, fragment:Lcom/android/mail/ui/ConversationListFragment;
    #v1=(Reference);
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 182
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "conversation-list"

    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/ConversationListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 184
    return-object v1
.end method

.method private onCursorUpdated()V
    .locals 5

    .prologue
    .line 886
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    #v3=(Reference);
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    if-nez v3, :cond_1

    .line 923
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 891
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Reference);v4=(Uninit);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    invoke-interface {v3}, Lcom/android/mail/ui/ConversationListCallbacks;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v1

    .line 893
    .local v1, newCursor:Lcom/android/mail/browse/ConversationCursor;
    #v1=(Reference);
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v3}, Lcom/android/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 895
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->saveLastScrolledPosition()V

    .line 898
    :cond_2
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v3, v1}, Lcom/android/mail/ui/AnimatedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 903
    if-nez v1, :cond_5

    const/4 v2, 0x0

    .line 904
    .local v2, newCursorHash:I
    :goto_1
    #v2=(Integer);
    iget v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    #v3=(Integer);
    if-ne v3, v2, :cond_3

    iget v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    if-eqz v3, :cond_3

    .line 905
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 907
    :cond_3
    #v3=(Conflicted);
    iput v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    .line 909
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->getCount()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_4

    .line 910
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->markContentsSeen()V

    .line 911
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->restoreLastScrolledPosition()V

    .line 916
    :cond_4
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ConversationListCallbacks;->getCurrentConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 917
    .local v0, conv:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 918
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v3}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v3

    #v3=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-ne v3, v4, :cond_0

    .line 920
    iget v3, v0, Lcom/android/mail/providers/Conversation;->position:I

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {p0, v3, v4}, Lcom/android/mail/ui/ConversationListFragment;->setSelected(IZ)V

    goto :goto_0

    .line 903
    .end local v0           #conv:Lcom/android/mail/providers/Conversation;
    .end local v2           #newCursorHash:I
    :cond_5
    #v0=(Uninit);v2=(Uninit);v3=(Reference);v4=(Uninit);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->hashCode()I

    move-result v2

    #v2=(Integer);
    goto :goto_1
.end method

.method private onFolderStatusUpdated()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 815
    #v2=(Null);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->checkSyncStatus()V

    .line 817
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 818
    #v0=(Reference);
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 819
    :goto_0
    const-string v1, "cursor_error"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    const-string v1, "cursor_error"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 822
    :goto_1
    #v1=(Integer);
    const-string v3, "cursor_status"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 825
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iget v2, v2, Lcom/android/mail/providers/Folder;->totalCount:I

    .line 826
    :cond_0
    #v2=(Integer);
    if-nez v1, :cond_1

    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    :cond_1
    #v1=(Integer);
    if-lez v2, :cond_3

    .line 829
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/mail/ui/ConversationListFragment;->updateSearchResultHeader(I)V

    .line 830
    if-nez v2, :cond_3

    .line 831
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setEmptyView(Landroid/view/View;)V

    .line 834
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 818
    :cond_4
    #v0=(Reference);v1=(Uninit);v2=(Null);v3=(Uninit);
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_5
    #v1=(Boolean);
    move v1, v2

    .line 819
    #v1=(Null);
    goto :goto_1
.end method

.method private restoreLastScrolledPosition()V
    .locals 3

    .prologue
    .line 994
    iget-boolean v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 995
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, key:Ljava/lang/String;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/mail/ui/ConversationListCallbacks;->getConversationListScrollPosition(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 998
    .local v1, savedState:Landroid/os/Parcelable;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 999
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v2, v1}, Lcom/android/mail/ui/SwipeableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1001
    :cond_0
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 1003
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #savedState:Landroid/os/Parcelable;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private saveLastScrolledPosition()V
    .locals 3

    .prologue
    .line 981
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 990
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 986
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 988
    .local v0, savedState:Landroid/os/Parcelable;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/mail/ui/ConversationListCallbacks;->setConversationListScrollPosition(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private final setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->setChoiceMode(I)V

    .line 444
    return-void
.end method

.method private setSwipeAction()V
    .locals 6

    .prologue
    const v1, 0x7f08016c

    #v1=(Integer);
    const v0, 0x7f08016b

    #v0=(Integer);
    const/16 v5, 0x8

    .line 837
    #v5=(PosByte);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-static {v2}, Lcom/android/mail/providers/Settings;->getSwipeSetting(Lcom/android/mail/providers/Settings;)I

    move-result v2

    .line 838
    #v2=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    const/16 v4, 0x4000

    #v4=(PosShort);
    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->isTrash()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 841
    :cond_0
    #v3=(PosByte);v4=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 878
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setCurrentAccount(Lcom/android/mail/providers/Account;)V

    .line 879
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setCurrentFolder(Lcom/android/mail/providers/Folder;)V

    .line 880
    return-void

    .line 844
    :cond_1
    #v0=(Integer);v1=(Integer);v4=(PosShort);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v3, v4}, Lcom/android/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 845
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    invoke-static {v3}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x40

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    :cond_2
    move v0, v1

    .line 876
    :cond_3
    :goto_1
    #v3=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/SwipeableListView;->setSwipeAction(I)V

    goto :goto_0

    .line 848
    :cond_4
    #v1=(Integer);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    if-eqz v3, :cond_3

    .line 852
    packed-switch v2, :pswitch_data_0

    :cond_5
    #v3=(Conflicted);
    move v0, v1

    .line 872
    goto :goto_1

    .line 854
    :pswitch_0
    #v3=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-virtual {v2, v5}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 855
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    const/16 v3, 0x10

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_6

    .line 856
    const v0, 0x7f08016a

    .line 857
    goto :goto_1

    .line 858
    :cond_6
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    invoke-virtual {v2, v5}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    goto :goto_1

    .line 852
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showList()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setEmptyView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getFolderController()Lcom/android/mail/ui/FolderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/FolderController;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListFragment;->onFolderUpdated(Lcom/android/mail/providers/Folder;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->onConversationListStatusUpdated()V

    .line 654
    return-void
.end method

.method private updateSearchResultHeader(I)V
    .locals 7
    .parameter "count"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 224
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    invoke-static {v2}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v1

    .line 226
    .local v1, showHeader:Z
    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    const v3, 0x7f0a00a5

    #v3=(Integer);
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    const v3, 0x7f0a00d8

    #v3=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private viewConversation(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 663
    #v6=(Null);
    sget-object v2, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "ConversationListFragment.viewConversation(%d)"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 665
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/mail/ui/AnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/browse/ConversationCursor;

    .line 668
    .local v1, cursor:Lcom/android/mail/browse/ConversationCursor;
    if-nez v1, :cond_0

    .line 669
    sget-object v2, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v3, "unable to open conv at cursor pos=%s cursor=%s getPositionOffset=%s"

    const/4 v4, 0x3

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    const/4 v5, 0x2

    #v5=(PosByte);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6, p1}, Lcom/android/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v6

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 683
    :goto_0
    #v0=(Conflicted);v5=(Conflicted);
    return-void

    .line 675
    :cond_0
    #v0=(Uninit);v5=(Reference);v6=(Null);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 680
    .local v0, conv:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->getPosition()I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 681
    iget v2, v0, Lcom/android/mail/providers/Conversation;->position:I

    invoke-virtual {p0, v2, v7}, Lcom/android/mail/ui/ConversationListFragment;->setSelected(IZ)V

    .line 682
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    #v2=(Reference);
    invoke-interface {v2, v0, v6}, Lcom/android/mail/ui/ConversationListCallbacks;->onConversationSelected(Lcom/android/mail/providers/Conversation;Z)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 961
    return-void
.end method

.method public commitDestructiveActions(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 930
    :cond_0
    return-void
.end method

.method configureSearchResultHeader()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 192
    #v5=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v4=(Reference);
    if-nez v4, :cond_0

    .line 213
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);
    return-void

    .line 196
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    .local v2, res:Landroid/content/res/Resources;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    invoke-static {v4}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v3

    .line 203
    .local v3, showHeader:Z
    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 204
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    const v6, 0x7f0a00a7

    #v6=(Integer);
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_1
    #v6=(Conflicted);
    iget-object v6, p0, Lcom/android/mail/ui/ConversationListFragment;->mSearchStatusView:Landroid/view/View;

    #v6=(Reference);
    if-eqz v3, :cond_2

    move v4, v5

    :goto_1
    #v4=(PosByte);
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    if-eqz v3, :cond_3

    const v4, 0x7f090039

    #v4=(Integer);
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    #v4=(Float);
    float-to-int v1, v4

    .line 210
    .local v1, marginTop:I
    :goto_2
    #v1=(Integer);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/SwipeableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 212
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v4, v0}, Lcom/android/mail/ui/SwipeableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 208
    .end local v0           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #marginTop:I
    :cond_2
    #v0=(Uninit);v1=(Uninit);
    const/16 v4, 0x8

    #v4=(PosByte);
    goto :goto_1

    :cond_3
    move v1, v5

    .line 209
    #v1=(Null);
    goto :goto_2
.end method

.method public getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 634
    .local v0, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->isAnimating()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->isScrolling()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedState"

    .prologue
    .line 249
    invoke-super/range {p0 .. p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 251
    sget-wide v2, Lcom/android/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v2, v2, v5

    #v2=(Byte);
    if-gez v2, :cond_0

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference);
    const v3, 0x7f0e0036

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    sput-wide v2, Lcom/android/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    .line 265
    :cond_0
    #v2=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 266
    .local v10, activity:Landroid/app/Activity;
    #v10=(Reference);
    instance-of v2, v10, Lcom/android/mail/ui/ControllableActivity;

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 267
    sget-object v2, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "ConversationListFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    #v3=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v2, v3, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    move-object v2, v10

    .line 270
    #v2=(Reference);
    check-cast v2, Lcom/android/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    #v0=(Reference);
    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mCallbacks:Lcom/android/mail/ui/ConversationListCallbacks;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getErrorListener()Lcom/android/mail/ui/ErrorListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mErrorListener:Lcom/android/mail/ui/ErrorListener;

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v11

    .line 279
    .local v11, activityContext:Landroid/content/Context;
    #v11=(Reference);
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002b

    #v3=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mail/browse/ConversationListFooterView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/mail/browse/ConversationListFooterView;->setClickListener(Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListView:Lcom/android/mail/ui/ConversationListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-virtual {v2, v3}, Lcom/android/mail/ui/ConversationListView;->setActivity(Lcom/android/mail/ui/ControllableActivity;)V

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v4

    .line 285
    .local v4, conversationCursor:Lcom/android/mail/browse/ConversationCursor;
    #v4=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    .line 290
    .local v15, manager:Landroid/app/LoaderManager;
    #v15=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getConversationListHelper()Lcom/android/mail/ui/ConversationListHelper;

    move-result-object v13

    .line 291
    .local v13, helper:Lcom/android/mail/ui/ConversationListHelper;
    #v13=(Reference);
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v13, v10, v2, v3}, Lcom/android/mail/ui/ConversationListHelper;->makeConversationListSpecialViews(Landroid/content/Context;Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Account;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 295
    .local v9, specialItemViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/ConversationSpecialItemView;>;"
    :goto_0
    #v9=(Reference);
    if-eqz v9, :cond_3

    .line 297
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v14=(Reference);v17=(Conflicted);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Lcom/android/mail/ui/ConversationSpecialItemView;

    .line 298
    .local v17, view:Lcom/android/mail/ui/ConversationSpecialItemView;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-interface {v0, v15, v1}, Lcom/android/mail/ui/ConversationSpecialItemView;->bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V

    goto :goto_1

    .line 291
    .end local v9           #specialItemViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/ConversationSpecialItemView;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #view:Lcom/android/mail/ui/ConversationSpecialItemView;
    :cond_2
    #v1=(Uninit);v2=(Reference);v9=(Uninit);v14=(Uninit);v17=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_0

    .line 302
    .restart local v9       #specialItemViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/ConversationSpecialItemView;>;"
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v9=(Reference);v14=(Conflicted);v17=(Conflicted);
    new-instance v2, Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(UninitRef);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v6=(Reference);
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListListener:Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;

    #v7=(Reference);
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v8=(Reference);
    invoke-direct/range {v2 .. v9}, Lcom/android/mail/ui/AnimatedAdapter;-><init>(Landroid/content/Context;Lcom/android/mail/browse/ConversationCursor;Lcom/android/mail/ui/ConversationSelectionSet;Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/android/mail/ui/SwipeableListView;Ljava/util/List;)V

    #v2=(Reference);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    invoke-virtual {v2, v3}, Lcom/android/mail/ui/AnimatedAdapter;->addFooter(Landroid/view/View;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v2, v3}, Lcom/android/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2, v3}, Lcom/android/mail/ui/SwipeableListView;->setSelectionSet(Lcom/android/mail/ui/ConversationSelectionSet;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/android/mail/ui/AnimatedAdapter;->setFooterVisibility(Z)V

    .line 310
    new-instance v2, Lcom/android/mail/ui/ConversationListFragment$2;

    #v2=(UninitRef);
    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mail/ui/ConversationListFragment$2;-><init>(Lcom/android/mail/ui/ConversationListFragment;)V

    #v2=(Reference);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/ControllableActivity;->getFolderController()Lcom/android/mail/ui/FolderController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/providers/FolderObserver;->initialize(Lcom/android/mail/ui/FolderController;)Lcom/android/mail/providers/Folder;

    .line 317
    new-instance v2, Lcom/android/mail/ui/ConversationListFragment$ConversationCursorObserver;

    #v2=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/mail/ui/ConversationListFragment$ConversationCursorObserver;-><init>(Lcom/android/mail/ui/ConversationListFragment;Lcom/android/mail/ui/ConversationListFragment$1;)V

    #v2=(Reference);
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    #v3=(Reference);
    invoke-interface {v2, v3}, Lcom/android/mail/ui/ConversationUpdater;->registerConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v2

    #v2=(Boolean);
    sput-boolean v2, Lcom/android/mail/ui/ConversationListFragment;->mTabletDevice:Z

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->initializeUiForFirstDisplay()V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->configureSearchResultHeader()V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getViewMode()Lcom/android/mail/ui/ViewMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/ConversationListFragment;->onViewModeChanged(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getViewMode()Lcom/android/mail/ui/ViewMode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/mail/ui/ViewMode;->addListener(Lcom/android/mail/ui/ViewMode$ModeChangeListener;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 363
    :cond_4
    :goto_2
    #v2=(Conflicted);v12=(Conflicted);v16=(Conflicted);
    return-void

    .line 333
    :cond_5
    #v2=(Boolean);v12=(Uninit);v16=(Uninit);
    if-nez v4, :cond_8

    const/4 v2, 0x0

    :goto_3
    #v2=(Integer);
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    .line 336
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationCursor;->isRefreshReady()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_6

    .line 337
    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationCursor;->sync()V

    .line 342
    :cond_6
    #v2=(Integer);
    sget-boolean v2, Lcom/android/mail/ui/ConversationListFragment;->mTabletDevice:Z

    #v2=(Boolean);
    invoke-static {v2}, Lcom/android/mail/ui/ConversationListFragment;->getDefaultChoiceMode(Z)I

    move-result v12

    .line 343
    .local v12, choice:I
    #v12=(Integer);
    if-eqz p1, :cond_7

    .line 347
    const-string v2, "choice-mode-key"

    #v2=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 348
    const-string v2, "list-state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/SwipeableListView;->clearChoices()V

    .line 353
    :cond_7
    #v2=(Conflicted);
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mail/ui/ConversationListFragment;->setChoiceMode(I)V

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/android/mail/ui/ConversationListFragment;->showList()V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getPendingToastOperation()Lcom/android/mail/ui/ToastBarOperation;

    move-result-object v16

    .line 358
    .local v16, pendingOp:Lcom/android/mail/ui/ToastBarOperation;
    #v16=(Reference);
    if-eqz v16, :cond_4

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v2, v3}, Lcom/android/mail/ui/ControllableActivity;->setPendingToastOperation(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/mail/ui/ControllableActivity;->onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_2

    .line 333
    .end local v12           #choice:I
    .end local v16           #pendingOp:Lcom/android/mail/ui/ToastBarOperation;
    :cond_8
    #v2=(Boolean);v3=(Reference);v12=(Uninit);v16=(Uninit);
    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationCursor;->hashCode()I

    move-result v2

    #v2=(Integer);
    goto :goto_3
.end method

.method public onConversationListStatusUpdated()V
    .locals 3

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 804
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Lcom/android/mail/browse/ConversationListFooterView;->updateStatus(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v1

    .line 806
    .local v1, showFooter:Z
    #v1=(Boolean);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->onFolderStatusUpdated()V

    .line 807
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v2, v1}, Lcom/android/mail/ui/AnimatedAdapter;->setFooterVisibility(Z)V

    .line 810
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->onCursorUpdated()V

    .line 811
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 385
    .local v1, res:Landroid/content/res/Resources;
    #v1=(Reference);
    const v2, 0x7f0e0014

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    .line 386
    new-instance v2, Lcom/android/mail/ui/ConversationListFragment$3;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/ui/ConversationListFragment$3;-><init>(Lcom/android/mail/ui/ConversationListFragment;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 395
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 396
    .local v0, args:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "conversation-list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/android/mail/ConversationListContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    .line 397
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    iget-object v2, v2, Lcom/android/mail/ConversationListContext;->account:Lcom/android/mail/providers/Account;

    iput-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 399
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ConversationListFragment;->setRetainInstance(Z)V

    .line 400
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 420
    const v1, 0x7f04002a

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, rootView:Landroid/view/View;
    #v0=(Reference);
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 422
    const v1, 0x7f0800a9

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/ConversationListView;

    iput-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListView:Lcom/android/mail/ui/ConversationListView;

    .line 424
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListView:Lcom/android/mail/ui/ConversationListView;

    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/mail/ui/ConversationListView;->setConversationContext(Lcom/android/mail/ConversationListContext;)V

    .line 425
    const v1, 0x102000a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/SwipeableListView;

    iput-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    .line 426
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Lcom/android/mail/ui/SwipeableListView;->setHeaderDividersEnabled(Z)V

    .line 427
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1, p0}, Lcom/android/mail/ui/SwipeableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    const/16 v3, 0x4000

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/android/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 429
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1, p0}, Lcom/android/mail/ui/SwipeableListView;->setSwipedListener(Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;)V

    .line 431
    if-eqz p3, :cond_0

    const-string v1, "list-state"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    const-string v2, "list-state"

    #v2=(Reference);
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/SwipeableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 435
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 471
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 472
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 478
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->destroy()V

    .line 479
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 481
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getViewMode()Lcom/android/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/ViewMode;->removeListener(Lcom/android/mail/ui/ViewMode$ModeChangeListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 484
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ConversationUpdater;->unregisterConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 488
    iput-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    .line 490
    :cond_1
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 491
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->cleanup()V

    .line 492
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 493
    return-void
.end method

.method public onFolderUpdated(Lcom/android/mail/providers/Folder;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    .line 782
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->setSwipeAction()V

    .line 783
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 797
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 786
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/AnimatedAdapter;->setFolder(Lcom/android/mail/providers/Folder;)V

    .line 787
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationListFooterView;->setFolder(Lcom/android/mail/providers/Folder;)V

    .line 788
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->wasSyncSuccessful()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mErrorListener:Lcom/android/mail/ui/ErrorListener;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v1, v2}, Lcom/android/mail/ui/ErrorListener;->onError(Lcom/android/mail/providers/Folder;Z)V

    .line 793
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->onFolderStatusUpdated()V

    .line 796
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationItemViewModel;->onFolderUpdated(Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Lcom/android/mail/browse/ConversationItemView;

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    .end local p2
    :goto_0
    return v0

    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/mail/browse/ConversationItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mail/browse/ConversationItemView;->toggleSelectedStateOrBeginDrag()Z

    move-result v0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x1

    .line 545
    #v0=(One);
    instance-of v3, p2, Lcom/android/mail/browse/ToggleableItem;

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 546
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget v3, v3, Lcom/android/mail/providers/Settings;->convListIcon:I

    #v3=(Integer);
    if-ne v3, v0, :cond_1

    move v7, v0

    .line 548
    .local v7, showSenderImage:Z
    :goto_0
    #v7=(Boolean);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    move v6, v0

    .line 549
    .local v6, inCabMode:Z
    :goto_1
    #v6=(Boolean);
    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    .line 550
    check-cast p2, Lcom/android/mail/browse/ToggleableItem;

    .end local p2
    invoke-interface {p2}, Lcom/android/mail/browse/ToggleableItem;->toggleSelectedState()Z

    .line 567
    :goto_2
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);v5=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    #v0=(Boolean);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationListFragment;->commitDestructiveActions(Z)V

    .line 568
    .end local v6           #inCabMode:Z
    .end local v7           #showSenderImage:Z
    :cond_0
    #v6=(Conflicted);v7=(Conflicted);
    return-void

    .restart local p2
    :cond_1
    #v0=(One);v1=(Null);v3=(Integer);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    move v7, v1

    .line 546
    #v7=(Null);
    goto :goto_0

    .restart local v7       #showSenderImage:Z
    :cond_2
    #v3=(Boolean);v7=(Boolean);
    move v6, v1

    .line 548
    #v6=(Null);
    goto :goto_1

    .line 552
    .restart local v6       #inCabMode:Z
    :cond_3
    #v6=(Boolean);
    if-eqz v6, :cond_4

    .line 554
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "peek"

    #v1=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationSelectionSet;->size()I

    move-result v3

    #v3=(Integer);
    int-to-long v4, v3

    #v4=(LongLo);v5=(LongHi);
    move-object v3, v2

    #v3=(Null);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 556
    :cond_4
    #v0=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    invoke-direct {p0, p3}, Lcom/android/mail/ui/ConversationListFragment;->viewConversation(I)V

    goto :goto_2
.end method

.method public onListItemSwiped(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ConversationUpdater;->showNextConversation(Ljava/util/Collection;)V

    .line 935
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 588
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/android/mail/ui/ConversationSetObserver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationSelectionSet;->removeObserver(Lcom/android/mail/ui/ConversationSetObserver;)V

    .line 590
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->saveLastScrolledPosition()V

    .line 591
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 574
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 575
    .local v0, conversationCursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor;->handleNotificationActions()V

    .line 578
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->restoreLastScrolledPosition()V

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/android/mail/ui/ConversationSetObserver;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/mail/ui/ConversationSelectionSet;->addObserver(Lcom/android/mail/ui/ConversationSetObserver;)V

    .line 582
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 596
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 597
    const-string v0, "list-state"

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 598
    const-string v0, "choice-mode-key"

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/AnimatedAdapter;->saveSpecialItemInstanceState(Landroid/os/Bundle;)V

    .line 604
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 609
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    sget v2, Lcom/android/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/analytics/Tracker;->sendView(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 615
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 616
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 1
    .parameter "newMode"

    .prologue
    .line 621
    sget-boolean v0, Lcom/android/mail/ui/ConversationListFragment;->mTabletDevice:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 622
    invoke-static {p1}, Lcom/android/mail/ui/ViewMode;->isListMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->clearChoicesAndActivated()V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mFooterView:Lcom/android/mail/browse/ConversationListFooterView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationListFooterView;->onViewModeChanged(I)V

    .line 630
    :cond_1
    return-void
.end method

.method public requestDelete(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V
    .locals 7
    .parameter "actionId"
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/DestructiveAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 757
    .local v0, conv:Lcom/android/mail/providers/Conversation;
    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, v0, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_0

    .line 759
    .end local v0           #conv:Lcom/android/mail/providers/Conversation;
    :cond_0
    #v0=(Conflicted);v4=(Boolean);
    new-instance v3, Lcom/android/mail/ui/ConversationListFragment$5;

    #v3=(UninitRef);
    invoke-direct {v3, p0, p3}, Lcom/android/mail/ui/ConversationListFragment$5;-><init>(Lcom/android/mail/ui/ConversationListFragment;Lcom/android/mail/ui/DestructiveAction;)V

    .line 765
    .local v3, listener:Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;
    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/ui/SwipeableListView;

    .line 766
    .local v2, listView:Lcom/android/mail/ui/SwipeableListView;
    invoke-virtual {v2}, Lcom/android/mail/ui/SwipeableListView;->getSwipeAction()I

    move-result v4

    #v4=(Integer);
    if-ne v4, p1, :cond_2

    .line 767
    invoke-virtual {v2, p2, v3}, Lcom/android/mail/ui/SwipeableListView;->destroyItems(Ljava/util/Collection;Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 769
    sget-object v4, Lcom/android/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "ConversationListFragment.requestDelete: listView failed to destroy items."

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 771
    invoke-interface {p3}, Lcom/android/mail/ui/DestructiveAction;->performAction()V

    .line 778
    :cond_1
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 777
    :cond_2
    #v4=(Integer);v5=(Uninit);v6=(Uninit);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v4=(Reference);
    invoke-virtual {v4, p2, v3}, Lcom/android/mail/ui/AnimatedAdapter;->delete(Ljava/util/Collection;Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    goto :goto_1
.end method

.method public requestListRefresh()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 745
    return-void
.end method

.method public final revertChoiceMode()V
    .locals 1

    .prologue
    .line 463
    sget-boolean v0, Lcom/android/mail/ui/ConversationListFragment;->mTabletDevice:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 467
    :goto_0
    #v0=(Integer);
    return-void

    .line 466
    :cond_0
    #v0=(Boolean);
    sget-boolean v0, Lcom/android/mail/ui/ConversationListFragment;->mTabletDevice:Z

    invoke-static {v0}, Lcom/android/mail/ui/ConversationListFragment;->getDefaultChoiceMode(Z)I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationListFragment;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public final setChoiceNone()V
    .locals 1

    .prologue
    .line 451
    sget-boolean v0, Lcom/android/mail/ui/ConversationListFragment;->mTabletDevice:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationListFragment;->clearChoicesAndActivated()V

    .line 455
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationListFragment;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public setRawSelected(IZ)V
    .locals 2
    .parameter "position"
    .parameter "different"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 729
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 725
    :cond_0
    #v0=(Integer);v1=(Uninit);
    if-eqz p2, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->smoothScrollToPosition(I)V

    .line 728
    :cond_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, p1, v1}, Lcom/android/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public setSelected(IZ)V
    .locals 2
    .parameter "cursorPosition"
    .parameter "different"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment;->mListView:Lcom/android/mail/ui/SwipeableListView;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 711
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 707
    :cond_0
    #v0=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v1

    #v1=(Integer);
    add-int v0, p1, v1

    .line 710
    .local v0, position:I
    #v0=(Integer);
    invoke-virtual {p0, v0, p2}, Lcom/android/mail/ui/ConversationListFragment;->setRawSelected(IZ)V

    goto :goto_0
.end method

.method protected showSyncStatusBar()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment;->mConversationListView:Lcom/android/mail/ui/ConversationListView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationListView;->showSyncStatusBar()V

    .line 954
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/ListFragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, s:Ljava/lang/String;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    #v2=(Reference);
    if-nez v2, :cond_0

    .line 415
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .line 408
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    #v1=(Uninit);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, sb:Ljava/lang/StringBuilder;
    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    const-string v2, " mListAdapter="

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mListAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, " folder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment;->mViewContext:Lcom/android/mail/ConversationListContext;

    iget-object v2, v2, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
