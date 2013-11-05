.class Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;
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
    name = "DroppedInStarredAction"
.end annotation


# instance fields
.field private final mConversations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialFolder:Lcom/android/mail/providers/Folder;

.field private final mStarred:Lcom/android/mail/providers/Folder;

.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Ljava/util/Collection;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter
    .parameter
    .parameter "initialFolder"
    .parameter "starredFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/providers/Folder;",
            "Lcom/android/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3276
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3277
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mConversations:Ljava/util/Collection;

    .line 3278
    iput-object p3, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/android/mail/providers/Folder;

    .line 3279
    iput-object p4, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/android/mail/providers/Folder;

    .line 3280
    return-void
.end method


# virtual methods
.method public performAction()V
    .locals 15

    .prologue
    const/4 v4, 0x1

    .line 3284
    #v4=(One);
    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mConversations:Ljava/util/Collection;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    #v1=(Integer);
    const v2, 0x7f080170

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    .line 3286
    .local v0, undoOp:Lcom/android/mail/ui/ToastBarOperation;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 3287
    new-instance v13, Ljava/util/ArrayList;

    #v13=(UninitRef);
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3288
    .local v13, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/browse/ConversationCursor$ConversationOperation;>;"
    #v13=(Reference);
    new-instance v10, Landroid/content/ContentValues;

    #v10=(UninitRef);
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 3292
    .local v10, values:Landroid/content/ContentValues;
    #v10=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mConversations:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Reference);v12=(Conflicted);v14=(Conflicted);
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/providers/Conversation;

    .line 3293
    .local v6, target:Lcom/android/mail/providers/Conversation;
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3294
    .local v7, folderUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    #v7=(Reference);
    new-instance v8, Ljava/util/ArrayList;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3295
    .local v8, adds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    #v8=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3296
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3297
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3298
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3299
    invoke-virtual {v6}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v14

    .line 3301
    .local v14, targetFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mail/providers/Folder;>;"
    #v14=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3302
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    const-string v1, "starred"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3304
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v1, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual/range {v5 .. v10}, Lcom/android/mail/browse/ConversationCursor;->getConversationFolderOperation(Lcom/android/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;Landroid/content/ContentValues;)Lcom/android/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v12

    .line 3306
    .local v12, operation:Lcom/android/mail/browse/ConversationCursor$ConversationOperation;
    #v12=(Reference);
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3308
    .end local v6           #target:Lcom/android/mail/providers/Conversation;
    .end local v7           #folderUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v8           #adds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v12           #operation:Lcom/android/mail/browse/ConversationCursor$ConversationOperation;
    .end local v14           #targetFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mail/providers/Folder;>;"
    :cond_0
    #v1=(Boolean);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);v14=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    if-eqz v1, :cond_1

    .line 3309
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v1, v13}, Lcom/android/mail/browse/ConversationCursor;->updateBulkValues(Ljava/util/Collection;)I

    .line 3311
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/android/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 3312
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController;->access$900(Lcom/android/mail/ui/AbstractActivityController;)Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationSelectionSet;->clear()V

    .line 3313
    return-void
.end method
