.class Lcom/android/mail/ui/RecentFolderList$1;
.super Lcom/android/mail/providers/AccountObserver;
.source "RecentFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/RecentFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/RecentFolderList;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/RecentFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mail/ui/RecentFolderList$1;->this$0:Lcom/android/mail/ui/RecentFolderList;

    invoke-direct {p0}, Lcom/android/mail/providers/AccountObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/mail/providers/Account;)V
    .locals 1
    .parameter "newAccount"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mail/ui/RecentFolderList$1;->this$0:Lcom/android/mail/ui/RecentFolderList;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/ui/RecentFolderList;->access$000(Lcom/android/mail/ui/RecentFolderList;Lcom/android/mail/providers/Account;)V

    .line 74
    return-void
.end method
