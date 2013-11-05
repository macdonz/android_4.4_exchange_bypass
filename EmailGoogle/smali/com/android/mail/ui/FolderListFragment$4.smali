.class Lcom/android/mail/ui/FolderListFragment$4;
.super Lcom/android/mail/providers/DrawerClosedObserver;
.source "FolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/FolderListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/FolderListFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/FolderListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-direct {p0}, Lcom/android/mail/providers/DrawerClosedObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderListFragment;->access$300(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v0}, Lcom/android/mail/ui/FolderListFragment;->access$400(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/FolderSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/FolderListFragment;->access$300(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/FolderSelector;->onFolderSelected(Lcom/android/mail/providers/Folder;)V

    .line 310
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v0, v2}, Lcom/android/mail/ui/FolderListFragment;->access$302(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;

    .line 313
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v0}, Lcom/android/mail/ui/FolderListFragment;->access$500(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v0}, Lcom/android/mail/ui/FolderListFragment;->access$600(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/AccountController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/FolderListFragment;->access$500(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/AccountController;->switchToDefaultInboxOrChangeAccount(Lcom/android/mail/providers/Account;)V

    .line 315
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$4;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v0, v2}, Lcom/android/mail/ui/FolderListFragment;->access$502(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;

    .line 317
    :cond_1
    #v1=(Conflicted);
    return-void
.end method
