.class Lcom/android/mail/browse/ConversationCursor$3;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/ConversationCursor;->handleNotificationActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2286
    sget-object v8, Lcom/android/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;

    .line 2288
    .local v8, undoNotifications:Landroid/support/v4/util/SparseArrayCompat;,"Landroid/support/v4/util/SparseArrayCompat<Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;>;"
    #v8=(Reference);
    sget-object v9, Lcom/android/mail/utils/NotificationActionUtils;->sUndoneConversations:Ljava/util/Set;

    .line 2291
    .local v9, undoneConversations:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/mail/providers/Conversation;>;"
    #v9=(Reference);
    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v10

    #v10=(Integer);
    invoke-static {v10}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v7

    .line 2294
    .local v7, undoConversations:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/mail/providers/Conversation;>;"
    #v7=(Reference);
    const/4 v0, 0x0

    .line 2296
    .local v0, changed:Z
    #v0=(Null);
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Integer);v6=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v10

    #v10=(Integer);
    if-ge v4, v10, :cond_3

    .line 2297
    invoke-virtual {v8, v4}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/mail/utils/ObservableSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    .line 2302
    .local v6, notificationAction:Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v3

    .line 2303
    .local v3, folder:Lcom/android/mail/providers/Folder;
    #v3=(Reference);
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v10

    #v10=(Reference);
    sget-object v11, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v11=(Reference);
    if-ne v10, v11, :cond_2

    const/4 v2, 0x1

    .line 2306
    .local v2, deleteAction:Z
    :goto_1
    #v2=(Boolean);
    iget-object v10, v3, Lcom/android/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-static {v11}, Lcom/android/mail/browse/ConversationCursor;->access$2700(Lcom/android/mail/browse/ConversationCursor;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_0

    if-eqz v2, :cond_1

    .line 2308
    :cond_0
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getIsDestructive()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_1

    .line 2309
    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 2311
    .local v1, conversation:Lcom/android/mail/providers/Conversation;
    #v1=(Reference);
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2313
    iget-object v10, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v10=(Reference);
    invoke-static {v10}, Lcom/android/mail/browse/ConversationCursor;->access$2600(Lcom/android/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_1

    .line 2314
    sget-object v10, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v10=(Reference);
    iget-object v11, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v12=(Reference);
    invoke-virtual {v10, v11, v12}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 2315
    iget-object v10, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-static {v10}, Lcom/android/mail/browse/ConversationCursor;->access$2600(Lcom/android/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2317
    const/4 v0, 0x1

    .line 2296
    .end local v1           #conversation:Lcom/android/mail/providers/Conversation;
    :cond_1
    #v1=(Conflicted);v10=(Conflicted);v12=(Conflicted);
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2303
    .end local v2           #deleteAction:Z
    :cond_2
    #v2=(Conflicted);v10=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 2325
    .end local v3           #folder:Lcom/android/mail/providers/Folder;
    .end local v6           #notificationAction:Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v10=(Integer);v11=(Conflicted);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v10=(Reference);
    invoke-static {v10}, Lcom/android/mail/browse/ConversationCursor;->access$2600(Lcom/android/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2326
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mail/providers/Conversation;>;"
    :cond_4
    :goto_2
    #v5=(Reference);v10=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_6

    .line 2327
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Conversation;

    .line 2329
    .restart local v1       #conversation:Lcom/android/mail/providers/Conversation;
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2335
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2336
    sget-object v10, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v10=(Reference);
    iget-object v11, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v11=(Reference);
    iget-object v12, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v12=(Reference);
    invoke-virtual {v10, v11, v12}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->undeleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 2337
    invoke-interface {v9, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2339
    :cond_5
    #v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2341
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_2

    .line 2345
    .end local v1           #conversation:Lcom/android/mail/providers/Conversation;
    :cond_6
    #v0=(Boolean);v1=(Conflicted);v10=(Boolean);
    if-eqz v0, :cond_7

    .line 2346
    iget-object v10, p0, Lcom/android/mail/browse/ConversationCursor$3;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v10=(Reference);
    invoke-static {v10}, Lcom/android/mail/browse/ConversationCursor;->access$2000(Lcom/android/mail/browse/ConversationCursor;)V

    .line 2348
    :cond_7
    #v10=(Conflicted);
    return-void
.end method
