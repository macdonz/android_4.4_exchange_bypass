.class Lcom/android/mail/ui/AbstractActivityController$18;
.super Landroid/os/AsyncTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->navigateUpFolderHierarchy()V
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
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 4285
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/mail/providers/Folder;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 4288
    #v3=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    if-nez v0, :cond_1

    .line 4290
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4294
    .local v6, cursor:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 4296
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 4297
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    new-instance v1, Lcom/android/mail/providers/Folder;

    #v1=(UninitRef);
    invoke-direct {v1, v6}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    #v1=(Reference);
    iput-object v1, v0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4300
    :cond_0
    #v0=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4308
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_6

    .line 4309
    const/4 v6, 0x0

    .line 4311
    .restart local v6       #cursor:Landroid/database/Cursor;
    :try_start_1
    #v6=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4314
    #v6=(Reference);
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_4

    .line 4316
    :cond_2
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v7, v0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4321
    .local v7, folder:Lcom/android/mail/providers/Folder;
    :goto_0
    #v0=(Conflicted);v7=(Reference);
    if-eqz v6, :cond_3

    .line 4322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4329
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v7

    .line 4300
    .end local v7           #folder:Lcom/android/mail/providers/Folder;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    #v2=(Reference);v4=(Null);v5=(Null);v6=(Reference);v7=(Uninit);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4318
    :cond_4
    :try_start_2
    #v0=(Boolean);v1=(Reference);
    new-instance v7, Lcom/android/mail/providers/Folder;

    #v7=(UninitRef);
    invoke-direct {v7, v6}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v7       #folder:Lcom/android/mail/providers/Folder;
    #v7=(Reference);
    goto :goto_0

    .line 4321
    .end local v7           #folder:Lcom/android/mail/providers/Folder;
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v6, :cond_5

    .line 4322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 4326
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_6
    #v6=(Conflicted);v7=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v7, v0, Lcom/android/mail/ui/AbstractActivityController;->mInbox:Lcom/android/mail/providers/Folder;

    .restart local v7       #folder:Lcom/android/mail/providers/Folder;
    #v7=(Reference);
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4285
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/AbstractActivityController$18;->doInBackground([Ljava/lang/Void;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onPostExecute(Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$18;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/AbstractActivityController;->onFolderSelected(Lcom/android/mail/providers/Folder;)V

    .line 4335
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4285
    check-cast p1, Lcom/android/mail/providers/Folder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/AbstractActivityController$18;->onPostExecute(Lcom/android/mail/providers/Folder;)V

    return-void
.end method
