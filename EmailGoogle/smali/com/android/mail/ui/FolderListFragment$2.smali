.class Lcom/android/mail/ui/FolderListFragment$2;
.super Lcom/android/mail/providers/AccountObserver;
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
    .line 283
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment$2;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-direct {p0}, Lcom/android/mail/providers/AccountObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/mail/providers/Account;)V
    .locals 1
    .parameter "newAccount"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$2;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/ui/FolderListFragment;->access$100(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/providers/Account;)V

    .line 287
    return-void
.end method
