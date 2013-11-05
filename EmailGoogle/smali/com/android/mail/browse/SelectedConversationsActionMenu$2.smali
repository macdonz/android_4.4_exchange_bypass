.class Lcom/android/mail/browse/SelectedConversationsActionMenu$2;
.super Landroid/os/AsyncTask;
.source "SelectedConversationsActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/SelectedConversationsActionMenu;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mail/providers/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/SelectedConversationsActionMenu;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/SelectedConversationsActionMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->this$0:Lcom/android/mail/browse/SelectedConversationsActionMenu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/mail/providers/Folder;
    .locals 3
    .parameter "params"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->this$0:Lcom/android/mail/browse/SelectedConversationsActionMenu;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->access$100(Lcom/android/mail/browse/SelectedConversationsActionMenu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->this$0:Lcom/android/mail/browse/SelectedConversationsActionMenu;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->access$000(Lcom/android/mail/browse/SelectedConversationsActionMenu;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/Utils;->getFolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->doInBackground([Ljava/lang/Void;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onPostExecute(Lcom/android/mail/providers/Folder;)V
    .locals 6
    .parameter "moveToInbox"

    .prologue
    const/4 v3, 0x1

    .line 206
    #v3=(One);
    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 208
    .local v1, ops:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderOperation;>;"
    #v1=(Reference);
    new-instance v0, Lcom/android/mail/ui/FolderOperation;

    #v0=(UninitRef);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v0, p1, v2}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    #v0=(Reference);
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->this$0:Lcom/android/mail/browse/SelectedConversationsActionMenu;

    invoke-static {v0}, Lcom/android/mail/browse/SelectedConversationsActionMenu;->access$200(Lcom/android/mail/browse/SelectedConversationsActionMenu;)Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->this$0:Lcom/android/mail/browse/SelectedConversationsActionMenu;

    iget-object v2, v2, Lcom/android/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/android/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v5, 0x0

    #v5=(Null);
    move v4, v3

    #v4=(One);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/ui/ConversationUpdater;->assignFolder(Ljava/util/Collection;Ljava/util/Collection;ZZZ)V

    .line 211
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, Lcom/android/mail/providers/Folder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/SelectedConversationsActionMenu$2;->onPostExecute(Lcom/android/mail/providers/Folder;)V

    return-void
.end method
