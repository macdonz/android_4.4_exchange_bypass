.class Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/android/mail/ui/DestructiveAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderDestruction"
.end annotation


# instance fields
.field private final mAction:I

.field private final mActionFolder:Lcom/android/mail/providers/Folder;

.field private mCompleted:Z

.field private final mFolderOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDestructive:Z

.field private final mIsSelectedSet:Z

.field private final mShowUndo:Z

.field private final mTarget:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "isDestructive"
    .parameter "isBatch"
    .parameter "showUndo"
    .parameter "action"
    .parameter "actionFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;ZZZI",
            "Lcom/android/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3774
    .local p2, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    .local p3, folders:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/ui/FolderOperation;>;"
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3758
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mFolderOps:Ljava/util/ArrayList;

    .line 3775
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mTarget:Ljava/util/Collection;

    .line 3776
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mFolderOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3777
    iput-boolean p4, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mIsDestructive:Z

    .line 3778
    iput-boolean p5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mIsSelectedSet:Z

    .line 3779
    iput-boolean p6, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mShowUndo:Z

    .line 3780
    iput p7, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mAction:I

    .line 3781
    iput-object p8, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mActionFolder:Lcom/android/mail/providers/Folder;

    .line 3782
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;Lcom/android/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 3756
    invoke-direct/range {p0 .. p8}, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;-><init>(Lcom/android/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;)V

    #p0=(Reference);
    return-void
.end method

.method private declared-synchronized isPerformed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3833
    #v0=(One);
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 3837
    :goto_0
    #v0=(Boolean);
    monitor-exit p0

    return v0

    .line 3836
    :cond_0
    #v0=(One);
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3837
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 3833
    :catchall_0
    #v0=(One);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public performAction()V
    .locals 14

    .prologue
    .line 3786
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->isPerformed()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 3826
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-void

    .line 3789
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mIsDestructive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mShowUndo:Z

    if-eqz v1, :cond_2

    .line 3790
    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mTarget:Ljava/util/Collection;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mAction:I

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    iget-boolean v4, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mIsSelectedSet:Z

    #v4=(Boolean);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mActionFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    .line 3792
    .local v0, undoOp:Lcom/android/mail/ui/ToastBarOperation;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 3796
    .end local v0           #undoOp:Lcom/android/mail/ui/ToastBarOperation;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    new-instance v11, Ljava/util/ArrayList;

    #v11=(UninitRef);
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3799
    .local v11, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/browse/ConversationCursor$ConversationOperation;>;"
    #v11=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mTarget:Ljava/util/Collection;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    #v6=(Conflicted);v7=(Conflicted);v8=(Reference);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    #v12=(Reference);
    check-cast v12, Lcom/android/mail/providers/Conversation;

    .line 3800
    .local v12, target:Lcom/android/mail/providers/Conversation;
    invoke-virtual {v12}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v13

    .line 3802
    .local v13, targetFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mail/providers/Folder;>;"
    #v13=(Reference);
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3803
    .local v7, folderUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    #v7=(Reference);
    new-instance v6, Ljava/util/ArrayList;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3804
    .local v6, adds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    #v6=(Reference);
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mIsDestructive:Z

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 3805
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v12, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 3807
    :cond_3
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mFolderOps:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    #v9=(Reference);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Lcom/android/mail/ui/FolderOperation;

    .line 3808
    .local v10, op:Lcom/android/mail/ui/FolderOperation;
    iget-object v1, v10, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3809
    iget-boolean v1, v10, Lcom/android/mail/ui/FolderOperation;->mAdd:Z

    #v1=(Boolean);
    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    #v1=(Reference);
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3810
    iget-boolean v1, v10, Lcom/android/mail/ui/FolderOperation;->mAdd:Z

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 3811
    iget-object v1, v10, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v2, v10, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3809
    :cond_4
    #v1=(Boolean);v2=(Conflicted);
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #v1=(Reference);
    goto :goto_3

    .line 3813
    :cond_5
    #v1=(Boolean);
    iget-object v1, v10, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3816
    .end local v10           #op:Lcom/android/mail/ui/FolderOperation;
    :cond_6
    #v1=(Boolean);v10=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v12, v7, v6, v2}, Lcom/android/mail/browse/ConversationCursor;->getConversationFolderOperation(Lcom/android/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;)Lcom/android/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3819
    .end local v6           #adds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7           #folderUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #target:Lcom/android/mail/providers/Conversation;
    .end local v13           #targetFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mail/providers/Folder;>;"
    :cond_7
    #v1=(Boolean);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    if-eqz v1, :cond_8

    .line 3820
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v1, v11}, Lcom/android/mail/browse/ConversationCursor;->updateBulkValues(Ljava/util/Collection;)I

    .line 3822
    :cond_8
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 3823
    iget-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->mIsSelectedSet:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 3824
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$900(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationSelectionSet;->clear()V

    goto/16 :goto_0
.end method
