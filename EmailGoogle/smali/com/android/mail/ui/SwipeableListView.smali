.class public Lcom/android/mail/ui/SwipeableListView;
.super Landroid/widget/ListView;
.source "SwipeableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/mail/ui/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/SwipeableListView$SwipeListener;,
        Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;,
        Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

.field private mEnableSwipe:Z

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private mScrolling:Z

.field private mSwipeAction:I

.field private final mSwipeHelper:Lcom/android/mail/ui/SwipeHelper;

.field private mSwipeListener:Lcom/android/mail/ui/SwipeableListView$SwipeListener;

.field private mSwipedListener:Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 103
    #v2=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    #p0=(Reference);
    iput-boolean v2, p0, Lcom/android/mail/ui/SwipeableListView;->mEnableSwipe:Z

    .line 104
    invoke-virtual {p0, p0}, Lcom/android/mail/ui/SwipeableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v4, densityScale:F
    #v4=(Integer);
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    #v0=(Integer);
    int-to-float v5, v0

    .line 107
    .local v5, pagingTouchSlop:F
    #v5=(Float);
    new-instance v0, Lcom/android/mail/ui/SwipeHelper;

    #v0=(UninitRef);
    move-object v1, p1

    #v1=(Reference);
    move-object v3, p0

    #v3=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/SwipeHelper;-><init>(Landroid/content/Context;ILcom/android/mail/ui/SwipeHelper$Callback;FF)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/android/mail/ui/SwipeHelper;

    .line 109
    return-void
.end method

.method private getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AnimatedAdapter;

    return-object v0
.end method


# virtual methods
.method public canChildBeDismissed(Lcom/android/mail/ui/SwipeableItemView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 209
    invoke-interface {p1}, Lcom/android/mail/ui/SwipeableItemView;->canChildBeDismissed()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public cancelDismissCounter()V
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 433
    .local v0, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->cancelDismissCounter()V

    .line 436
    :cond_0
    return-void
.end method

.method public commitDestructiveActions(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 223
    .local v0, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/AnimatedAdapter;->commitLeaveBehindItems(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public destroyItems(Ljava/util/Collection;Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;)Z
    .locals 5
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, convs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    const/4 v1, 0x0

    .line 311
    #v1=(Null);
    if-nez p1, :cond_0

    .line 312
    sget-object v2, Lcom/android/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "SwipeableListView.destroyItems: null conversations."

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 321
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 315
    :cond_0
    #v0=(Uninit);v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 316
    .local v0, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 317
    sget-object v2, Lcom/android/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "SwipeableListView.destroyItems: Cannot destroy: adapter is null."

    #v3=(Reference);
    new-array v4, v1, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 320
    :cond_1
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-virtual {v0, p1, p2}, Lcom/android/mail/ui/AnimatedAdapter;->swipeDelete(Ljava/util/Collection;Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    .line 321
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public dismissChild(Lcom/android/mail/browse/ConversationItemView;)V
    .locals 19
    .parameter "target"

    .prologue
    .line 231
    new-instance v2, Lcom/android/mail/ui/ToastBarOperation;

    #v2=(UninitRef);
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v4, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mail/ui/SwipeableListView;->mFolder:Lcom/android/mail/providers/Folder;

    #v7=(Reference);
    invoke-direct/range {v2 .. v7}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    .line 233
    .local v2, undoOp:Lcom/android/mail/ui/ToastBarOperation;
    #v2=(Reference);
    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/browse/ConversationItemView;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v12

    .line 234
    .local v12, conv:Lcom/android/mail/providers/Conversation;
    #v12=(Reference);
    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/browse/ConversationItemView;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v3

    #v3=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v0, v1, v12}, Lcom/android/mail/ui/SwipeableListView;->findConversation(Lcom/android/mail/browse/ConversationItemView;Lcom/android/mail/providers/Conversation;)I

    move-result v4

    iput v4, v3, Lcom/android/mail/providers/Conversation;->position:I

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v9

    .line 236
    .local v9, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v9=(Reference);
    if-nez v9, :cond_1

    .line 280
    :cond_0
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Integer);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return-void

    .line 239
    :cond_1
    #v3=(Reference);v4=(Integer);v5=(Null);v7=(Reference);v8=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);
    iget v3, v12, Lcom/android/mail/providers/Conversation;->position:I

    #v3=(Integer);
    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/browse/ConversationItemView;->getHeight()I

    move-result v4

    invoke-virtual {v9, v12, v2, v3, v4}, Lcom/android/mail/ui/AnimatedAdapter;->setupLeaveBehind(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ToastBarOperation;II)Lcom/android/mail/ui/LeaveBehindItem;

    .line 240
    invoke-virtual {v9}, Lcom/android/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    #v11=(Reference);
    check-cast v11, Lcom/android/mail/browse/ConversationCursor;

    .line 241
    .local v11, cc:Lcom/android/mail/browse/ConversationCursor;
    invoke-static {v12}, Lcom/android/mail/providers/Conversation;->listOf(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v13

    .line 245
    .local v13, convList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    #v13=(Reference);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "list_swipe"

    #v4=(Reference);
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    #v5=(Integer);
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    invoke-interface/range {v3 .. v8}, Lcom/android/mail/analytics/Tracker;->sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V

    .line 247
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    #v3=(Integer);
    const v4, 0x7f08016b

    #v4=(Integer);
    if-ne v3, v4, :cond_4

    .line 248
    new-instance v14, Lcom/android/mail/ui/FolderOperation;

    #v14=(UninitRef);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    invoke-direct {v14, v3, v4}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    .line 249
    .local v14, folderOp:Lcom/android/mail/ui/FolderOperation;
    #v14=(Reference);
    invoke-virtual {v12}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v17

    .line 251
    .local v17, targetFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mail/providers/Folder;>;"
    #v17=(Reference);
    iget-object v3, v14, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v3, v3, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/providers/FolderList;->copyOf(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;

    move-result-object v16

    .line 253
    .local v16, folders:Lcom/android/mail/providers/FolderList;
    #v16=(Reference);
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/mail/providers/Conversation;->setRawFolders(Lcom/android/mail/providers/FolderList;)V

    .line 254
    new-instance v18, Landroid/content/ContentValues;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v18, values:Landroid/content/ContentValues;
    #v18=(Reference);
    new-instance v15, Ljava/util/ArrayList;

    #v15=(UninitRef);
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v15, folderUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    #v15=(Reference);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v3, v3, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v10, Ljava/util/ArrayList;

    #v10=(UninitRef);
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v10, adds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    #v10=(Reference);
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    move-object/from16 v0, v18

    invoke-static {v15, v10, v0}, Lcom/android/mail/browse/ConversationCursor;->addFolderUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    .line 260
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/mail/browse/ConversationCursor;->addTargetFolders(Ljava/util/Collection;Landroid/content/ContentValues;)V

    .line 261
    invoke-static {v12}, Lcom/android/mail/providers/Conversation;->listOf(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v11, v3, v0}, Lcom/android/mail/browse/ConversationCursor;->mostlyDestructiveUpdate(Ljava/util/Collection;Landroid/content/ContentValues;)I

    .line 267
    .end local v10           #adds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v14           #folderOp:Lcom/android/mail/ui/FolderOperation;
    .end local v15           #folderUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v16           #folders:Lcom/android/mail/providers/FolderList;
    .end local v17           #targetFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mail/providers/Folder;>;"
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v10=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipedListener:Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;

    #v3=(Reference);
    if-eqz v3, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipedListener:Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;

    invoke-interface {v3, v13}, Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;->onListItemSwiped(Ljava/util/Collection;)V

    .line 270
    :cond_3
    invoke-virtual {v9}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3, v12}, Lcom/android/mail/ui/ConversationSelectionSet;->contains(Lcom/android/mail/providers/Conversation;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3, v12}, Lcom/android/mail/ui/ConversationSelectionSet;->toggle(Lcom/android/mail/providers/Conversation;)V

    .line 276
    invoke-virtual {v12}, Lcom/android/mail/providers/Conversation;->isMostlyDead()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 277
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    goto/16 :goto_0

    .line 262
    :cond_4
    #v3=(Integer);v4=(Integer);v10=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    const v4, 0x7f08016a

    if-ne v3, v4, :cond_5

    .line 263
    invoke-virtual {v11, v13}, Lcom/android/mail/browse/ConversationCursor;->mostlyArchive(Ljava/util/Collection;)I

    goto :goto_1

    .line 264
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    const v4, 0x7f08016c

    if-ne v3, v4, :cond_2

    .line 265
    invoke-virtual {v11, v13}, Lcom/android/mail/browse/ConversationCursor;->mostlyDelete(Ljava/util/Collection;)I

    goto :goto_1
.end method

.method public enableSwipe(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/mail/ui/SwipeableListView;->mEnableSwipe:Z

    .line 136
    return-void
.end method

.method public findConversation(Lcom/android/mail/browse/ConversationItemView;Lcom/android/mail/providers/Conversation;)I
    .locals 12
    .parameter "view"
    .parameter "conv"

    .prologue
    .line 325
    const/4 v8, -0x1

    .line 326
    .local v8, position:I
    #v8=(Byte);
    iget-wide v1, p2, Lcom/android/mail/providers/Conversation;->id:J

    .line 328
    .local v1, convId:J
    :try_start_0
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/SwipeableListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 333
    :goto_0
    #v3=(Conflicted);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    const/4 v9, -0x1

    #v9=(Byte);
    if-ne v8, v9, :cond_0

    .line 337
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getChildCount()I

    move-result v9

    #v9=(Integer);
    if-ge v7, v9, :cond_0

    .line 338
    invoke-virtual {p0, v7}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    instance-of v9, v0, Lcom/android/mail/browse/SwipeableConversationItemView;

    #v9=(Boolean);
    if-eqz v9, :cond_1

    .line 340
    check-cast v0, Lcom/android/mail/browse/SwipeableConversationItemView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/mail/browse/SwipeableConversationItemView;->getSwipeableItemView()Lcom/android/mail/browse/ConversationItemView;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v9}, Lcom/android/mail/browse/ConversationItemView;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v4

    .line 342
    .local v4, foundConv:Lcom/android/mail/providers/Conversation;
    #v4=(Reference);
    iget-wide v5, v4, Lcom/android/mail/providers/Conversation;->id:J

    .line 343
    .local v5, foundId:J
    #v5=(LongLo);v6=(LongHi);
    cmp-long v9, v5, v1

    #v9=(Byte);
    if-nez v9, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v9

    #v9=(Integer);
    add-int v8, v7, v9

    .line 350
    .end local v4           #foundConv:Lcom/android/mail/providers/Conversation;
    .end local v5           #foundId:J
    .end local v7           #i:I
    :cond_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return v8

    .line 329
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Byte);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    move-exception v3

    .line 330
    .local v3, e:Ljava/lang/Exception;
    #v3=(Reference);
    const/4 v8, -0x1

    .line 331
    sget-object v9, Lcom/android/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    #v9=(Reference);
    const-string v10, "Exception finding position; using alternate strategy"

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    new-array v11, v11, [Ljava/lang/Object;

    #v11=(Reference);
    invoke-static {v9, v3, v10, v11}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 337
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #i:I
    :cond_1
    #v0=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Integer);v9=(Byte);v10=(Conflicted);v11=(Conflicted);
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .parameter "ev"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getChildCount()I

    move-result v1

    .line 189
    .local v1, count:I
    #v1=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    #v4=(Float);
    float-to-int v3, v4

    .line 190
    .local v3, touchY:I
    #v3=(Integer);
    const/4 v0, 0x0

    .line 192
    .local v0, childIdx:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-ge v0, v1, :cond_3

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, slidingChild:Landroid/view/View;
    #v2=(Reference);
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    #v5=(PosByte);
    if-ne v4, v5, :cond_1

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 198
    instance-of v4, v2, Lcom/android/mail/browse/SwipeableConversationItemView;

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 199
    check-cast v2, Lcom/android/mail/browse/SwipeableConversationItemView;

    .end local v2           #slidingChild:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/mail/browse/SwipeableConversationItemView;->getSwipeableItemView()Lcom/android/mail/browse/ConversationItemView;

    move-result-object v2

    .line 204
    :cond_2
    :goto_1
    #v4=(Integer);v5=(Conflicted);
    return-object v2

    :cond_3
    #v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1
.end method

.method public getLastSwipedItem()Lcom/android/mail/ui/LeaveBehindItem;
    .locals 2

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 441
    .local v0, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->getLastLeaveBehindItem()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v1

    .line 444
    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getSwipeAction()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    #v0=(Integer);
    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->mScrolling:Z

    #v0=(Boolean);
    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 286
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/SwipeableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->cancelDismissCounter()V

    .line 292
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeListener:Lcom/android/mail/ui/SwipeableListView$SwipeListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeListener:Lcom/android/mail/ui/SwipeableListView$SwipeListener;

    invoke-interface {v0}, Lcom/android/mail/ui/SwipeableListView$SwipeListener;->onBeginSwipe()V

    .line 295
    :cond_0
    return-void
.end method

.method public onChildDismissed(Lcom/android/mail/ui/SwipeableItemView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Lcom/android/mail/ui/SwipeableItemView;->dismiss()V

    .line 217
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .local v0, densityScale:F
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/android/mail/ui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/mail/ui/SwipeHelper;->setDensityScale(F)V

    .line 116
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    #v2=(Integer);
    int-to-float v1, v2

    .line 117
    .local v1, pagingTouchSlop:F
    #v1=(Float);
    iget-object v2, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/android/mail/ui/SwipeHelper;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/mail/ui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 118
    return-void
.end method

.method public onDragCancelled(Lcom/android/mail/ui/SwipeableItemView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 300
    .local v0, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->startDismissCounter()V

    .line 302
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->cancelFadeOutLastLeaveBehindItemText()V

    .line 304
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 122
    #v5=(Null);
    const-string v0, "MailBlankFragment"

    #v0=(Reference);
    const-string v1, "START CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->isLayoutRequested()Z

    move-result v3

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 126
    const-string v0, "MailBlankFragment"

    new-instance v1, Ljava/lang/Error;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    #v1=(Reference);
    const-string v2, "FINISH CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->isLayoutRequested()Z

    move-result v4

    #v4=(Boolean);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    #v4=(Boolean);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->mScrolling:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->mEnableSwipe:Z

    if-nez v0, :cond_1

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/android/mail/ui/SwipeHelper;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    :cond_3
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onScroll()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 379
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 393
    const/4 v1, 0x0

    .local v1, i:I
    #v1=(Null);
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getChildCount()I

    move-result v2

    .local v2, len:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);
    if-ge v1, v2, :cond_1

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    instance-of v3, v0, Landroid/widget/AbsListView$OnScrollListener;

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 396
    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 393
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 405
    #v5=(Null);
    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/ui/SwipeableListView;->mScrolling:Z

    .line 407
    iget-boolean v3, p0, Lcom/android/mail/ui/SwipeableListView;->mScrolling:Z

    if-nez v3, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 409
    .local v2, c:Landroid/content/Context;
    #v2=(Reference);
    instance-of v3, v2, Lcom/android/mail/ui/ControllableActivity;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 410
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ControllableActivity;

    .line 411
    .local v0, activity:Lcom/android/mail/ui/ControllableActivity;
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v0, v3}, Lcom/android/mail/ui/ControllableActivity;->onAnimationEnd(Lcom/android/mail/ui/AnimatedAdapter;)V

    .line 418
    .end local v0           #activity:Lcom/android/mail/ui/ControllableActivity;
    .end local v2           #c:Landroid/content/Context;
    :cond_0
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v1

    .line 419
    .local v1, adapter:Lcom/android/mail/ui/AnimatedAdapter;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1, p2}, Lcom/android/mail/ui/AnimatedAdapter;->onScrollStateChanged(I)V

    .line 422
    :cond_1
    invoke-static {p2}, Lcom/android/mail/browse/ConversationItemView;->setScrollStateChanged(I)V

    .line 424
    return-void

    .end local v1           #adapter:Lcom/android/mail/ui/AnimatedAdapter;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v6=(Uninit);
    move v3, v5

    .line 405
    #v3=(Null);
    goto :goto_0

    .line 413
    .restart local v2       #c:Landroid/content/Context;
    :cond_3
    #v2=(Reference);v3=(Boolean);
    sget-object v3, Lcom/android/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v6, "unexpected context=%s"

    #v6=(Reference);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    aput-object v2, v4, v5

    invoke-static {v3, v6, v4}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->mEnableSwipe:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/android/mail/ui/SwipeHelper;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 179
    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 181
    :cond_2
    #v0=(Boolean);
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 5
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 359
    #v4=(One);
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v1

    .line 360
    .local v1, previousPosition:I
    #v1=(Integer);
    iget-object v3, p0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    .line 363
    .local v2, selectionSetEmpty:Z
    #v2=(Boolean);
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 367
    .local v0, handled:Z
    #v0=(Boolean);
    if-nez v2, :cond_0

    const/4 v3, -0x1

    #v3=(Byte);
    if-eq v1, v3, :cond_0

    .line 368
    invoke-virtual {p0, v1, v4}, Lcom/android/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    .line 372
    :cond_0
    #v3=(Conflicted);
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 373
    return v0
.end method

.method public setCurrentAccount(Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->mAccount:Lcom/android/mail/providers/Account;

    .line 156
    return-void
.end method

.method public setCurrentFolder(Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 160
    return-void
.end method

.method public setSelectionSet(Lcom/android/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    .line 152
    return-void
.end method

.method public setSwipeAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeAction:I

    .line 140
    return-void
.end method

.method public setSwipeListener(Lcom/android/mail/ui/SwipeableListView$SwipeListener;)V
    .locals 0
    .parameter "swipeListener"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipeListener:Lcom/android/mail/ui/SwipeableListView$SwipeListener;

    .line 449
    return-void
.end method

.method public setSwipedListener(Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->mSwipedListener:Lcom/android/mail/ui/SwipeableListView$ListItemSwipedListener;

    .line 144
    return-void
.end method
