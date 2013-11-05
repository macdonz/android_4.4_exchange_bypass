.class public Lcom/android/mail/browse/SelectedConversationsActionMenu;
.super Ljava/lang/Object;
.source "SelectedConversationsActionMenu.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/android/mail/ui/ConversationSetObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mAccountObserver:Lcom/android/mail/providers/AccountObserver;

.field private mActionMode:Landroid/view/ActionMode;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mActivated:Z

.field private final mActivity:Lcom/android/mail/ui/ControllableActivity;

.field private final mContext:Landroid/content/Context;

.field private final mFolder:Lcom/android/mail/providers/Folder;

.field private final mListController:Lcom/android/mail/ui/ConversationListCallbacks;

.field private mMenu:Landroid/view/Menu;

.field protected final mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

.field private final mUpdater:Lcom/android/mail/ui/ConversationUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/ui/ConversationSelectionSet;Lcom/android/mail/providers/Folder;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionSet"
    .parameter "folder"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    .line 100
    iput-object p1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 101
    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/android/mail/ui/ConversationListCallbacks;

    .line 102
    iput-object p2, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    .line 103
    new-instance v0, Lcom/android/mail/browse/SelectedConversationsActionMenu$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu$1;-><init>(Lcom/android/mail/browse/SelectedConversationsActionMenu;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 109
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    .line 110
    iput-object p3, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    .line 111
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    .line 112
    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    .line 113
    invoke-static {}, Lcom/android/mail/ui/FolderSelectionDialog;->setDialogDismissed()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/SelectedConversationsActionMenu;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mail/browse/SelectedConversationsActionMenu;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mail/browse/SelectedConversationsActionMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mail/browse/SelectedConversationsActionMenu;)Lcom/android/mail/ui/ConversationUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v0=(Reference);
    return-object v0
.end method

.method private clearSelection()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationSelectionSet;->clear()V

    .line 232
    return-void
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->deactivate()V

    .line 561
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/mail/ui/ConversationSelectionSet;->removeObserver(Lcom/android/mail/ui/ConversationSetObserver;)V

    .line 562
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->clearSelection()V

    .line 563
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    invoke-interface {v0}, Lcom/android/mail/ui/ConversationUpdater;->refreshConversationList()V

    .line 564
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 566
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 568
    :cond_0
    #v0=(Reference);
    return-void
.end method

.method private destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V
    .locals 6
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
    .local p2, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    const/4 v5, 0x1

    .line 290
    #v5=(One);
    sget-object v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "About to remove %d converations"

    #v1=(Reference);
    new-array v2, v5, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 291
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    invoke-interface {v0, p1, p2, p3, v5}, Lcom/android/mail/ui/ConversationUpdater;->delete(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;Z)V

    .line 292
    return-void
.end method

.method private markConversationsImportant(Z)V
    .locals 6
    .parameter "important"

    .prologue
    .line 314
    iget-object v4, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v3

    .line 315
    .local v3, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    #v3=(Reference);
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 317
    .local v2, priority:I
    :goto_0
    #v2=(Boolean);
    iget-object v4, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const-string v5, "priority"

    #v5=(Reference);
    invoke-interface {v4, v3, v5, v2}, Lcom/android/mail/ui/ConversationUpdater;->updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 319
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 320
    .local v0, c:Lcom/android/mail/providers/Conversation;
    iput v2, v0, Lcom/android/mail/providers/Conversation;->priority:I

    goto :goto_1

    .line 315
    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #priority:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Reference);v5=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0

    .line 322
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #priority:I
    :cond_1
    #v0=(Conflicted);v1=(Reference);v2=(Boolean);v4=(Boolean);v5=(Reference);
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 323
    return-void
.end method

.method private markConversationsRead(Z)V
    .locals 3
    .parameter "read"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    .line 303
    .local v0, targets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v1, v0, p1, v2}, Lcom/android/mail/ui/ConversationUpdater;->markConversationsRead(Ljava/util/Collection;ZZ)V

    .line 304
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 305
    return-void
.end method

.method private performDestructiveAction(I)V
    .locals 10
    .parameter "action"

    .prologue
    const v9, 0x7f08016d

    #v9=(Integer);
    const v8, 0x7f08016c

    .line 249
    #v8=(Integer);
    iget-object v6, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    .line 250
    .local v1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    #v1=(Reference);
    iget-object v6, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v4, v6, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    .line 253
    .local v4, settings:Lcom/android/mail/providers/Settings;
    #v4=(Reference);
    if-ne p1, v9, :cond_0

    .line 255
    const/4 v5, 0x1

    .line 261
    .local v5, showDialog:Z
    :goto_0
    #v5=(Boolean);v6=(Conflicted);
    if-eqz v5, :cond_6

    .line 262
    iget-object v6, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    invoke-interface {v6, p1, v7}, Lcom/android/mail/ui/ConversationUpdater;->makeDialogListener(IZ)V

    .line 264
    if-ne p1, v8, :cond_4

    .line 265
    const v3, 0x7f100002

    .line 271
    .local v3, resId:I
    :goto_1
    #v3=(Integer);
    iget-object v6, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    #v7=(Integer);
    invoke-static {v6, v3, v7}, Lcom/android/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, message:Ljava/lang/CharSequence;
    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/ConfirmDialogFragment;->newInstance(Ljava/lang/CharSequence;)Lcom/android/mail/browse/ConfirmDialogFragment;

    move-result-object v0

    .line 273
    .local v0, c:Lcom/android/mail/browse/ConfirmDialogFragment;
    #v0=(Reference);
    iget-object v6, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/ConfirmDialogFragment;->displayDialog(Landroid/app/FragmentManager;)V

    .line 280
    .end local v0           #c:Lcom/android/mail/browse/ConfirmDialogFragment;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #resId:I
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);
    return-void

    .line 256
    .end local v5           #showDialog:Z
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v7=(Uninit);
    if-eqz v4, :cond_3

    const v6, 0x7f08016a

    #v6=(Integer);
    if-eq p1, v6, :cond_1

    if-ne p1, v8, :cond_3

    .line 257
    :cond_1
    if-ne p1, v8, :cond_2

    iget-boolean v5, v4, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    .restart local v5       #showDialog:Z
    :goto_3
    #v5=(Boolean);
    goto :goto_0

    .end local v5           #showDialog:Z
    :cond_2
    #v5=(Uninit);
    iget-boolean v5, v4, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    #v5=(Boolean);
    goto :goto_3

    .line 259
    :cond_3
    #v5=(Uninit);v6=(Conflicted);
    const/4 v5, 0x0

    .restart local v5       #showDialog:Z
    #v5=(Null);
    goto :goto_0

    .line 266
    :cond_4
    #v5=(Boolean);v6=(Reference);v7=(One);
    if-ne p1, v9, :cond_5

    .line 267
    const v3, 0x7f100004

    .restart local v3       #resId:I
    #v3=(Integer);
    goto :goto_1

    .line 269
    .end local v3           #resId:I
    :cond_5
    #v3=(Uninit);
    const v3, 0x7f100003

    .restart local v3       #resId:I
    #v3=(Integer);
    goto :goto_1

    .line 278
    .end local v3           #resId:I
    :cond_6
    #v3=(Uninit);v6=(Conflicted);v7=(Uninit);
    iget-object v6, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v6=(Reference);
    invoke-interface {v6, p1}, Lcom/android/mail/ui/ConversationUpdater;->getDeferredBatchAction(I)Lcom/android/mail/ui/DestructiveAction;

    move-result-object v6

    invoke-direct {p0, p1, v1, v6}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V

    goto :goto_2
.end method

.method private starConversations(Z)V
    .locals 5
    .parameter "star"

    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 332
    .local v2, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const-string v4, "starred"

    #v4=(Reference);
    invoke-interface {v3, v2, v4, p1}, Lcom/android/mail/ui/ConversationUpdater;->updateConversation(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 334
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 335
    .local v0, c:Lcom/android/mail/providers/Conversation;
    iput-boolean p1, v0, Lcom/android/mail/providers/Conversation;->starred:Z

    goto :goto_0

    .line 337
    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    :cond_0
    #v0=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 338
    return-void
.end method

.method private updateCount()V
    .locals 6

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    #v1=(Reference);
    const v2, 0x7f0a0091

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationSelectionSet;->size()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 521
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method private updateSelection()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ConversationUpdater;->refreshConversationList()V

    .line 239
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 246
    :cond_0
    #v1=(Conflicted);
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 531
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/android/mail/ui/ConversationListCallbacks;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ConversationListCallbacks;->onCabModeEntered()V

    .line 532
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    .line 533
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0, p0}, Lcom/android/mail/ui/ControllableActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/android/mail/ui/ConversationListCallbacks;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ConversationListCallbacks;->onCabModeExited()V

    .line 545
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    .line 547
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 549
    :cond_0
    return-void
.end method

.method public isActivated()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    #v0=(Boolean);
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 18
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 118
    const/4 v15, 0x1

    .line 120
    .local v15, handled:Z
    #v15=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/android/mail/ui/ConversationListCallbacks;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v1, v2}, Lcom/android/mail/ui/ConversationListCallbacks;->commitDestructiveActions(Z)V

    .line 121
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 123
    .local v3, itemId:I
    #v3=(Integer);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v1

    const-string v2, "menu_item"

    #v2=(Reference);
    const-string v4, "cab_mode"

    #v4=(Reference);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    invoke-interface/range {v1 .. v6}, Lcom/android/mail/analytics/Tracker;->sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V

    .line 126
    const v1, 0x7f08016c

    #v1=(Integer);
    if-ne v3, v1, :cond_1

    .line 127
    sget-object v1, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Delete selected from CAB menu"

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    const v1, 0x7f08016c

    #v1=(Integer);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Boolean);v17=(Conflicted);
    move/from16 v16, v15

    .line 224
    .end local v15           #handled:Z
    .local v16, handled:I
    :goto_1
    #v4=(Conflicted);v16=(Boolean);
    return v16

    .line 129
    .end local v16           #handled:I
    .restart local v15       #handled:Z
    :cond_1
    #v1=(Integer);v2=(Reference);v4=(Reference);v5=(LongLo);v6=(LongHi);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(One);v16=(Uninit);v17=(Uninit);
    const v1, 0x7f08016d

    if-ne v3, v1, :cond_2

    .line 130
    const v1, 0x7f08016d

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto :goto_0

    .line 131
    :cond_2
    const v1, 0x7f08016a

    if-ne v3, v1, :cond_3

    .line 132
    sget-object v1, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Archive selected from CAB menu"

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    const v1, 0x7f08016a

    #v1=(Integer);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto :goto_0

    .line 134
    :cond_3
    const v1, 0x7f08016b

    if-ne v3, v1, :cond_4

    .line 135
    const v1, 0x7f08016b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v5

    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    const/4 v7, 0x1

    #v7=(One);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x1

    #v9=(One);
    invoke-interface/range {v4 .. v9}, Lcom/android/mail/ui/ConversationUpdater;->getDeferredRemoveFolder(Ljava/util/Collection;Lcom/android/mail/providers/Folder;ZZZ)Lcom/android/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V

    goto :goto_0

    .line 138
    :cond_4
    #v5=(LongLo);v6=(LongHi);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const v1, 0x7f080174

    if-ne v3, v1, :cond_5

    .line 139
    const v1, 0x7f080174

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const v6, 0x7f080174

    #v6=(Integer);
    invoke-interface {v4, v6}, Lcom/android/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/android/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V

    goto :goto_0

    .line 140
    :cond_5
    #v6=(LongHi);
    const v1, 0x7f080176

    if-ne v3, v1, :cond_6

    .line 141
    const v1, 0x7f080176

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const v6, 0x7f080176

    #v6=(Integer);
    invoke-interface {v4, v6}, Lcom/android/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/android/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V

    goto/16 :goto_0

    .line 143
    :cond_6
    #v6=(LongHi);
    const v1, 0x7f080177

    if-ne v3, v1, :cond_7

    .line 146
    const v1, 0x7f080177

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const v6, 0x7f080177

    #v6=(Integer);
    invoke-interface {v4, v6}, Lcom/android/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/android/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V

    goto/16 :goto_0

    .line 148
    :cond_7
    #v6=(LongHi);
    const v1, 0x7f080178

    if-ne v3, v1, :cond_8

    .line 149
    const v1, 0x7f080178

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    const v6, 0x7f080178

    #v6=(Integer);
    invoke-interface {v4, v6}, Lcom/android/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/android/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V

    goto/16 :goto_0

    .line 151
    :cond_8
    #v6=(LongHi);
    const v1, 0x7f08017e

    if-ne v3, v1, :cond_9

    .line 152
    const/4 v1, 0x1

    #v1=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->markConversationsRead(Z)V

    goto/16 :goto_0

    .line 153
    :cond_9
    #v1=(Integer);
    const v1, 0x7f080028

    if-ne v3, v1, :cond_a

    .line 154
    const/4 v1, 0x0

    #v1=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->markConversationsRead(Z)V

    goto/16 :goto_0

    .line 155
    :cond_a
    #v1=(Integer);
    const v1, 0x7f0800a5

    if-ne v3, v1, :cond_b

    .line 156
    const/4 v1, 0x1

    #v1=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->starConversations(Z)V

    goto/16 :goto_0

    .line 157
    :cond_b
    #v1=(Integer);
    const v1, 0x7f08017f

    if-ne v3, v1, :cond_d

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    const/16 v2, 0x80

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_c

    .line 159
    sget-object v1, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "We are in a starred folder, removing the star"

    #v2=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    const v1, 0x7f08017f

    #v1=(Integer);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto/16 :goto_0

    .line 162
    :cond_c
    #v1=(Boolean);v2=(PosShort);
    sget-object v1, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Not in a starred folder."

    #v2=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    const/4 v1, 0x0

    #v1=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->starConversations(Z)V

    goto/16 :goto_0

    .line 165
    :cond_d
    #v1=(Integer);
    const v1, 0x7f08016f

    if-eq v3, v1, :cond_e

    const v1, 0x7f080170

    if-ne v3, v1, :cond_14

    .line 166
    :cond_e
    const/4 v12, 0x0

    .line 167
    .local v12, cantMove:Z
    #v12=(Null);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    .line 169
    .local v5, acct:Lcom/android/mail/providers/Account;
    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    const/16 v2, 0x1000

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_12

    .line 170
    const/4 v11, 0x0

    .line 171
    .local v11, accountUri:Landroid/net/Uri;
    #v11=(Null);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_f
    :goto_2
    #v1=(Conflicted);v11=(Reference);v13=(Conflicted);v17=(Reference);
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/mail/providers/Conversation;

    .line 172
    .local v13, conv:Lcom/android/mail/providers/Conversation;
    if-nez v11, :cond_10

    .line 173
    iget-object v11, v13, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    goto :goto_2

    .line 174
    :cond_10
    iget-object v1, v13, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v11, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_f

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    #v1=(Reference);
    const v2, 0x7f0a00e4

    #v2=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 178
    const/4 v12, 0x1

    #v12=(One);
    move/from16 v16, v15

    .line 179
    .restart local v16       #handled:I
    #v16=(One);
    goto/16 :goto_1

    .line 182
    .end local v13           #conv:Lcom/android/mail/providers/Conversation;
    .end local v16           #handled:I
    :cond_11
    #v1=(Boolean);v2=(PosShort);v4=(Reference);v12=(Null);v13=(Conflicted);v16=(Uninit);
    if-nez v12, :cond_12

    .line 184
    invoke-static {v11}, Lcom/android/mail/providers/MailAppProvider;->getAccountFromAccountUri(Landroid/net/Uri;)Lcom/android/mail/providers/Account;

    move-result-object v5

    .line 187
    .end local v11           #accountUri:Landroid/net/Uri;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_12
    #v11=(Conflicted);v17=(Conflicted);
    if-nez v12, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/android/mail/ui/ConversationUpdater;

    #v6=(Reference);
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v7

    #v7=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    #v9=(Reference);
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    #v1=(Integer);
    const v2, 0x7f08016f

    #v2=(Integer);
    if-ne v1, v2, :cond_13

    const/4 v10, 0x1

    :goto_3
    #v10=(Boolean);
    invoke-static/range {v4 .. v10}, Lcom/android/mail/ui/FolderSelectionDialog;->getInstance(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;Z)Lcom/android/mail/ui/FolderSelectionDialog;

    move-result-object v14

    .line 191
    .local v14, dialog:Lcom/android/mail/ui/FolderSelectionDialog;
    #v14=(Reference);
    if-eqz v14, :cond_0

    .line 192
    invoke-virtual {v14}, Lcom/android/mail/ui/FolderSelectionDialog;->show()V

    goto/16 :goto_0

    .line 188
    .end local v14           #dialog:Lcom/android/mail/ui/FolderSelectionDialog;
    :cond_13
    #v10=(Uninit);v14=(Uninit);
    const/4 v10, 0x0

    #v10=(Null);
    goto :goto_3

    .line 195
    .end local v5           #acct:Lcom/android/mail/providers/Account;
    .end local v12           #cantMove:Z
    :cond_14
    #v2=(Reference);v5=(LongLo);v6=(LongHi);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v17=(Uninit);
    const v1, 0x7f080171

    if-ne v3, v1, :cond_15

    .line 196
    new-instance v2, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;

    #v2=(UninitRef);
    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;-><init>(Lcom/android/mail/browse/SelectedConversationsActionMenu;)V

    #v2=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    check-cast v1, [Ljava/lang/Void;

    #v1=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 213
    :cond_15
    #v1=(Integer);
    const v1, 0x7f080172

    if-ne v3, v1, :cond_16

    .line 214
    const/4 v1, 0x1

    #v1=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->markConversationsImportant(Z)V

    goto/16 :goto_0

    .line 215
    :cond_16
    #v1=(Integer);
    const v1, 0x7f080173

    if-ne v3, v1, :cond_18

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    const/16 v2, 0x400

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_17

    .line 217
    const v1, 0x7f080173

    #v1=(Integer);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto/16 :goto_0

    .line 219
    :cond_17
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->markConversationsImportant(Z)V

    goto/16 :goto_0

    .line 222
    :cond_18
    #v1=(Integer);v2=(Reference);
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    #v1=(Reference);
    invoke-virtual {v1, p0}, Lcom/android/mail/ui/ConversationSelectionSet;->addObserver(Lcom/android/mail/ui/ConversationSetObserver;)V

    .line 343
    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 344
    .local v0, inflater:Landroid/view/MenuInflater;
    #v0=(Reference);
    const v1, 0x7f110004

    #v1=(Integer);
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 345
    iput-object p1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 346
    iput-object p2, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    .line 347
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->updateCount()V

    .line 348
    const/4 v1, 0x1

    #v1=(One);
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 478
    #v2=(Null);
    iput-object v2, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 482
    iget-boolean v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy()V

    .line 487
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    #v1=(One);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ConversationListCallbacks;->commitDestructiveActions(Z)V

    .line 489
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iput-object v2, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    .line 490
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 40
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 354
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    move-object/from16 v35, v0

    #v35=(Reference);
    invoke-virtual/range {v35 .. v35}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v7

    .line 355
    .local v7, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    #v7=(Reference);
    const/16 v29, 0x0

    .line 356
    .local v29, showStar:Z
    #v29=(Null);
    const/16 v25, 0x0

    .line 357
    .local v25, showMarkUnread:Z
    #v25=(Null);
    const/16 v23, 0x0

    .line 358
    .local v23, showMarkImportant:Z
    #v23=(Null);
    const/16 v24, 0x0

    .line 359
    .local v24, showMarkNotSpam:Z
    #v24=(Null);
    const/16 v22, 0x0

    .line 361
    .local v22, showMarkAsPhishing:Z
    #v22=(Null);
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v6=(Conflicted);v9=(Reference);v22=(Boolean);v23=(Boolean);v24=(Boolean);v25=(Boolean);v29=(Boolean);v35=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/providers/Conversation;

    .line 362
    .local v6, conversation:Lcom/android/mail/providers/Conversation;
    iget-boolean v0, v6, Lcom/android/mail/providers/Conversation;->starred:Z

    #v0=(Boolean);
    move/from16 v35, v0

    if-nez v35, :cond_1

    .line 363
    const/16 v29, 0x1

    .line 365
    :cond_1
    iget-boolean v0, v6, Lcom/android/mail/providers/Conversation;->read:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 366
    const/16 v25, 0x1

    .line 368
    :cond_2
    invoke-virtual {v6}, Lcom/android/mail/providers/Conversation;->isImportant()Z

    move-result v35

    if-nez v35, :cond_3

    .line 369
    const/16 v23, 0x1

    .line 371
    :cond_3
    iget-boolean v0, v6, Lcom/android/mail/providers/Conversation;->spam:Z

    move/from16 v35, v0

    if-eqz v35, :cond_4

    .line 372
    const/16 v24, 0x1

    .line 374
    :cond_4
    iget-boolean v0, v6, Lcom/android/mail/providers/Conversation;->phishing:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    .line 375
    const/16 v22, 0x1

    .line 377
    :cond_5
    if-eqz v29, :cond_0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    if-eqz v24, :cond_0

    if-eqz v22, :cond_0

    .line 382
    .end local v6           #conversation:Lcom/android/mail/providers/Conversation;
    :cond_6
    #v0=(Conflicted);v6=(Conflicted);
    const v35, 0x7f0800a5

    #v35=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 383
    .local v31, star:Landroid/view/MenuItem;
    #v31=(Reference);
    move-object/from16 v0, v31

    move/from16 v1, v29

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    const v35, 0x7f08017f

    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    .line 385
    .local v34, unstar:Landroid/view/MenuItem;
    #v34=(Reference);
    if-nez v29, :cond_b

    const/16 v35, 0x1

    :goto_0
    #v35=(Boolean);
    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    const v35, 0x7f08017e

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 387
    .local v17, read:Landroid/view/MenuItem;
    #v17=(Reference);
    if-nez v25, :cond_c

    const/16 v35, 0x1

    :goto_1
    #v35=(Boolean);
    move-object/from16 v0, v17

    move/from16 v1, v35

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    const v35, 0x7f080028

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 389
    .local v33, unread:Landroid/view/MenuItem;
    #v33=(Reference);
    move-object/from16 v0, v33

    move/from16 v1, v25

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    const v35, 0x7f08016b

    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 396
    .local v18, removeFolder:Landroid/view/MenuItem;
    #v18=(Reference);
    const v35, 0x7f08016f

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 397
    .local v12, moveTo:Landroid/view/MenuItem;
    #v12=(Reference);
    const v35, 0x7f080171

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 398
    .local v13, moveToInbox:Landroid/view/MenuItem;
    #v13=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    #v36=(One);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x8

    #v36=(PosByte);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    invoke-virtual/range {v35 .. v35}, Lcom/android/mail/providers/Folder;->isProviderFolder()Z

    move-result v35

    #v35=(Boolean);
    if-nez v35, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_d

    const/16 v28, 0x1

    .line 402
    .local v28, showRemoveFolder:Z
    :goto_2
    #v28=(Boolean);v35=(Conflicted);v36=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x4000

    #v36=(PosShort);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_e

    const/16 v26, 0x1

    .line 404
    .local v26, showMoveTo:Z
    :goto_3
    #v26=(Boolean);v35=(Conflicted);v36=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    const/high16 v36, 0x1

    #v36=(Integer);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_f

    const/16 v27, 0x1

    .line 406
    .local v27, showMoveToInbox:Z
    :goto_4
    #v27=(Boolean);v35=(Conflicted);v36=(Conflicted);
    move-object/from16 v0, v18

    move/from16 v1, v28

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    move/from16 v0, v26

    #v0=(Boolean);
    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    move/from16 v0, v27

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_7

    if-eqz v28, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v35

    const v36, 0x7f0a0046

    #v36=(Integer);
    const/16 v37, 0x1

    #v37=(One);
    move/from16 v0, v37

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v37, v0

    #v37=(Reference);
    const/16 v38, 0x0

    #v38=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v39, v0

    #v39=(Reference);
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 414
    :cond_7
    #v1=(Conflicted);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    const v35, 0x7f08016a

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 415
    .local v5, archive:Landroid/view/MenuItem;
    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x8

    #v36=(PosByte);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v4

    .line 417
    .local v4, accountSupportsArchive:Z
    #v4=(Boolean);
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_10

    const/16 v19, 0x1

    .line 419
    .local v19, showArchive:Z
    :goto_5
    #v19=(Boolean);v35=(Conflicted);
    if-nez v5, :cond_11

    .line 420
    const/16 v19, 0x0

    .line 425
    :goto_6
    #v0=(Conflicted);
    if-nez v19, :cond_8

    if-eqz v4, :cond_8

    .line 426
    if-nez v28, :cond_8

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    move-object/from16 v35, v0

    #v35=(Reference);
    invoke-interface/range {v35 .. v35}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/mail/utils/Utils;->shouldShowDisabledArchiveIcon(Landroid/content/Context;)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_8

    .line 428
    const/16 v35, 0x0

    #v35=(Null);
    move/from16 v0, v35

    #v0=(Null);
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 429
    const/16 v35, 0x1

    #v35=(One);
    move/from16 v0, v35

    #v0=(One);
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 432
    :cond_8
    #v0=(Conflicted);v35=(Conflicted);
    const v35, 0x7f080176

    #v35=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 433
    .local v30, spam:Landroid/view/MenuItem;
    #v30=(Reference);
    if-nez v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x40

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_12

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, v30

    move/from16 v1, v35

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 436
    const v35, 0x7f080177

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 437
    .local v15, notSpam:Landroid/view/MenuItem;
    #v15=(Reference);
    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x80

    #v36=(PosShort);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_13

    const/16 v35, 0x1

    :goto_8
    move/from16 v0, v35

    #v0=(Boolean);
    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 440
    const v35, 0x7f080178

    #v35=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 441
    .local v16, phishing:Landroid/view/MenuItem;
    #v16=(Reference);
    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x4

    #v36=(PosByte);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x2000

    #v36=(PosShort);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_14

    const/16 v35, 0x1

    :goto_9
    move-object/from16 v0, v16

    move/from16 v1, v35

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 445
    const v35, 0x7f080174

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 446
    .local v14, mute:Landroid/view/MenuItem;
    #v14=(Reference);
    if-eqz v14, :cond_9

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/16 v36, 0x10

    #v36=(PosByte);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_15

    const/16 v35, 0x1

    :goto_a
    move/from16 v0, v35

    #v0=(Boolean);
    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    :cond_9
    #v0=(Conflicted);v35=(Integer);v36=(PosShort);
    const v35, 0x7f080172

    move-object/from16 v0, p2

    #v0=(Reference);
    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 451
    .local v10, markImportant:Landroid/view/MenuItem;
    #v10=(Reference);
    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/high16 v36, 0x2

    #v36=(Integer);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_16

    const/16 v35, 0x1

    :goto_b
    move/from16 v0, v35

    #v0=(Boolean);
    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    const v35, 0x7f080173

    #v35=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 454
    .local v11, markNotImportant:Landroid/view/MenuItem;
    #v11=(Reference);
    if-nez v23, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/high16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_17

    const/16 v35, 0x1

    :goto_c
    move/from16 v0, v35

    #v0=(Boolean);
    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 456
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x20

    #v36=(PosByte);
    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_18

    const/16 v20, 0x1

    .line 458
    .local v20, showDelete:Z
    :goto_d
    #v20=(Boolean);v35=(Conflicted);v36=(Integer);
    const v35, 0x7f08016c

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 459
    .local v32, trash:Landroid/view/MenuItem;
    #v32=(Reference);
    move-object/from16 v0, v32

    move/from16 v1, v20

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    #v35=(Reference);
    if-eqz v35, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/android/mail/providers/Folder;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/mail/providers/Folder;->isDraft()Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v35, v0

    #v35=(Reference);
    const/high16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    #v35=(Boolean);
    if-eqz v35, :cond_19

    const/16 v21, 0x1

    .line 465
    .local v21, showDiscardDrafts:Z
    :goto_e
    #v21=(Boolean);v35=(Conflicted);
    const v35, 0x7f08016d

    #v35=(Integer);
    move-object/from16 v0, p2

    move/from16 v1, v35

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 466
    .local v8, discardDrafts:Landroid/view/MenuItem;
    #v8=(Reference);
    if-eqz v8, :cond_a

    .line 467
    move/from16 v0, v21

    #v0=(Boolean);
    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    :cond_a
    #v0=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    #v35=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/android/mail/providers/Account;

    move-object/from16 v36, v0

    #v36=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    #v37=(Reference);
    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0e002f

    #v38=(Integer);
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    #v37=(Integer);
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    #v1=(Reference);
    move-object/from16 v2, p2

    #v2=(Reference);
    move/from16 v3, v37

    #v3=(Integer);
    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/ui/MailActionBarView;->reorderMenu(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/view/Menu;I)V

    .line 473
    const/16 v35, 0x1

    #v35=(One);
    return v35

    .line 385
    .end local v4           #accountSupportsArchive:Z
    .end local v5           #archive:Landroid/view/MenuItem;
    .end local v8           #discardDrafts:Landroid/view/MenuItem;
    .end local v10           #markImportant:Landroid/view/MenuItem;
    .end local v11           #markNotImportant:Landroid/view/MenuItem;
    .end local v12           #moveTo:Landroid/view/MenuItem;
    .end local v13           #moveToInbox:Landroid/view/MenuItem;
    .end local v14           #mute:Landroid/view/MenuItem;
    .end local v15           #notSpam:Landroid/view/MenuItem;
    .end local v16           #phishing:Landroid/view/MenuItem;
    .end local v17           #read:Landroid/view/MenuItem;
    .end local v18           #removeFolder:Landroid/view/MenuItem;
    .end local v19           #showArchive:Z
    .end local v20           #showDelete:Z
    .end local v21           #showDiscardDrafts:Z
    .end local v26           #showMoveTo:Z
    .end local v27           #showMoveToInbox:Z
    .end local v28           #showRemoveFolder:Z
    .end local v30           #spam:Landroid/view/MenuItem;
    .end local v32           #trash:Landroid/view/MenuItem;
    .end local v33           #unread:Landroid/view/MenuItem;
    :cond_b
    #v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v30=(Uninit);v32=(Uninit);v33=(Uninit);v35=(Integer);v36=(Uninit);v37=(Uninit);v38=(Uninit);v39=(Uninit);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_0

    .line 387
    .restart local v17       #read:Landroid/view/MenuItem;
    :cond_c
    #v17=(Reference);v35=(Integer);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_1

    .line 398
    .restart local v12       #moveTo:Landroid/view/MenuItem;
    .restart local v13       #moveToInbox:Landroid/view/MenuItem;
    .restart local v18       #removeFolder:Landroid/view/MenuItem;
    .restart local v33       #unread:Landroid/view/MenuItem;
    :cond_d
    #v12=(Reference);v13=(Reference);v18=(Reference);v33=(Reference);v35=(Conflicted);v36=(Conflicted);
    const/16 v28, 0x0

    #v28=(Null);
    goto/16 :goto_2

    .line 402
    .restart local v28       #showRemoveFolder:Z
    :cond_e
    #v28=(Boolean);
    const/16 v26, 0x0

    #v26=(Null);
    goto/16 :goto_3

    .line 404
    .restart local v26       #showMoveTo:Z
    :cond_f
    #v26=(Boolean);
    const/16 v27, 0x0

    #v27=(Null);
    goto/16 :goto_4

    .line 417
    .restart local v4       #accountSupportsArchive:Z
    .restart local v5       #archive:Landroid/view/MenuItem;
    .restart local v27       #showMoveToInbox:Z
    :cond_10
    #v4=(Boolean);v5=(Reference);v27=(Boolean);v36=(PosByte);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    const/16 v19, 0x0

    #v19=(Null);
    goto/16 :goto_5

    .line 422
    .restart local v19       #showArchive:Z
    :cond_11
    #v19=(Boolean);
    move/from16 v0, v19

    #v0=(Boolean);
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 433
    .restart local v30       #spam:Landroid/view/MenuItem;
    :cond_12
    #v0=(Reference);v30=(Reference);v35=(Integer);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_7

    .line 437
    .restart local v15       #notSpam:Landroid/view/MenuItem;
    :cond_13
    #v15=(Reference);v35=(Integer);v36=(PosShort);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_8

    .line 441
    .restart local v16       #phishing:Landroid/view/MenuItem;
    :cond_14
    #v16=(Reference);v35=(Integer);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_9

    .line 447
    .restart local v14       #mute:Landroid/view/MenuItem;
    :cond_15
    #v14=(Reference);v35=(Conflicted);v36=(PosByte);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_a

    .line 451
    .restart local v10       #markImportant:Landroid/view/MenuItem;
    :cond_16
    #v10=(Reference);v35=(Integer);v36=(Integer);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_b

    .line 454
    .restart local v11       #markNotImportant:Landroid/view/MenuItem;
    :cond_17
    #v11=(Reference);v35=(Integer);
    const/16 v35, 0x0

    #v35=(Null);
    goto/16 :goto_c

    .line 456
    :cond_18
    #v35=(Conflicted);
    const/16 v20, 0x0

    #v20=(Null);
    goto/16 :goto_d

    .line 463
    .restart local v20       #showDelete:Z
    .restart local v32       #trash:Landroid/view/MenuItem;
    :cond_19
    #v1=(Boolean);v20=(Boolean);v32=(Reference);
    const/16 v21, 0x0

    #v21=(Null);
    goto :goto_e
.end method

.method public onSetChanged(Lcom/android/mail/ui/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 508
    invoke-virtual {p1}, Lcom/android/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->updateCount()V

    goto :goto_0
.end method

.method public onSetEmpty()V
    .locals 3

    .prologue
    .line 499
    sget-object v0, Lcom/android/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "onSetEmpty called."

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 500
    invoke-direct {p0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->destroy()V

    .line 501
    return-void
.end method

.method public onSetPopulated(Lcom/android/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 495
    return-void
.end method
