.class Lcom/android/mail/ui/FolderSelectionActivity$1;
.super Ljava/lang/Object;
.source "FolderSelectionActivity.java"

# interfaces
.implements Lcom/android/mail/ui/AccountController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/FolderSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/FolderSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/FolderSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/android/mail/ui/FolderSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public closeDrawer(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "hasNewFolderOrAccount"
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/android/mail/ui/FolderSelectionActivity;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderSelectionActivity;->access$200(Lcom/android/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 139
    return-void
.end method

.method public getAccount()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/android/mail/ui/FolderSelectionActivity;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderSelectionActivity;->access$000(Lcom/android/mail/ui/FolderSelectionActivity;)Lcom/android/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAllAccounts()[Lcom/android/mail/providers/Account;
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Lcom/android/mail/providers/Account;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/android/mail/ui/FolderSelectionActivity;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/FolderSelectionActivity;->access$000(Lcom/android/mail/ui/FolderSelectionActivity;)Lcom/android/mail/providers/Account;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFolderListViewChoiceMode()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getVeiledAddressMatcher()Lcom/android/mail/utils/VeiledAddressMatcher;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public isDrawerPullEnabled()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public registerAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 76
    return-void
.end method

.method public registerAllAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 91
    return-void
.end method

.method public registerDrawerClosedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/android/mail/ui/FolderSelectionActivity;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderSelectionActivity;->access$200(Lcom/android/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public setFolderWatcher(Lcom/android/mail/providers/FolderWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 144
    return-void
.end method

.method public switchToDefaultInboxOrChangeAccount(Lcom/android/mail/providers/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 118
    invoke-static {}, Lcom/android/mail/ui/FolderSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "FolderSelectionActivity.switchToDefaultInboxOrChangeAccount() called when NOT expected."

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    return-void
.end method

.method public unregisterAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 81
    return-void
.end method

.method public unregisterAllAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 96
    return-void
.end method

.method public unregisterDrawerClosedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/android/mail/ui/FolderSelectionActivity;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/FolderSelectionActivity;->access$200(Lcom/android/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 130
    return-void
.end method
