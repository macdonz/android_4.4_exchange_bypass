.class Lcom/android/mail/ui/FolderListFragment$FolderListAdapter$1;
.super Lcom/android/mail/providers/RecentFolderObserver;
.source "FolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter$1;->this$1:Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;

    invoke-direct {p0}, Lcom/android/mail/providers/RecentFolderObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter$1;->this$1:Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;->access$700(Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter$1;->this$1:Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;->access$800(Lcom/android/mail/ui/FolderListFragment$FolderListAdapter;)V

    .line 607
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
