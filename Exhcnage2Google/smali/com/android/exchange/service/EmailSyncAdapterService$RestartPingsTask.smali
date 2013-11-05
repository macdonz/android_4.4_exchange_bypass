.class Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;
.super Landroid/os/AsyncTask;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartPingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnyAccounts:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

.field final synthetic this$0:Lcom/android/exchange/service/EmailSyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/service/EmailSyncAdapterService;Landroid/content/ContentResolver;Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V
    .locals 0
    .parameter
    .parameter "contentResolver"
    .parameter "syncHandlerMap"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 501
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 502
    iput-object p3, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .line 503
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v4, 0x0

    .line 507
    #v4=(Null);
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    invoke-static {}, Lcom/android/exchange/service/EmailSyncAdapterService;->access$200()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    move-object v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 509
    .local v7, c:Landroid/database/Cursor;
    #v7=(Reference);
    if-eqz v7, :cond_1

    .line 511
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mAnyAccounts:Z

    .line 512
    :goto_1
    #v0=(Conflicted);v6=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 513
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 514
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    #v6=(Reference);
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 515
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    #v0=(Reference);
    invoke-virtual {v0, v6}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->modifyPing(Lcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 518
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    :catchall_0
    #v0=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    #v0=(Integer);v6=(Uninit);
    move v0, v8

    .line 511
    #v0=(Null);
    goto :goto_0

    .line 521
    :cond_1
    #v0=(Reference);
    iput-boolean v8, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mAnyAccounts:Z

    .line 523
    :goto_2
    #v0=(Conflicted);v6=(Conflicted);
    return-object v4

    .line 518
    :cond_2
    #v0=(Boolean);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mAnyAccounts:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 529
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "stopping for no accounts"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 530
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-virtual {v0}, Lcom/android/exchange/service/EmailSyncAdapterService;->stopSelf()V

    .line 532
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
