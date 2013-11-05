.class Lcom/android/mail/ui/AbstractActivityController$AccountLoads;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountLoads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/providers/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mFactory:Lcom/android/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/content/CursorCreator",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field final mProjection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 1
    .parameter

    .prologue
    .line 3579
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3580
    #p0=(Reference);
    sget-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->mProjection:[Ljava/lang/String;

    .line 3581
    sget-object v0, Lcom/android/mail/providers/Account;->FACTORY:Lcom/android/mail/content/CursorCreator;

    iput-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->mFactory:Lcom/android/mail/content/CursorCreator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3579
    invoke-direct {p0, p1}, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;-><init>(Lcom/android/mail/ui/AbstractActivityController;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3585
    #v4=(Null);
    sparse-switch p1, :sswitch_data_0

    .line 3595
    sget-object v0, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Got an id  (%d) that I cannot create!"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3598
    const/4 v0, 0x0

    :goto_0
    #v4=(Reference);
    return-object v0

    .line 3587
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);
    sget-object v0, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "LOADER_ACCOUNT_CURSOR created"

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3588
    new-instance v0, Lcom/android/mail/content/ObjectCursorLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->mProjection:[Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->mFactory:Lcom/android/mail/content/CursorCreator;

    #v4=(Reference);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v0=(Reference);
    goto :goto_0

    .line 3591
    :sswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);
    sget-object v0, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "LOADER_ACCOUNT_UPDATE_CURSOR created"

    #v1=(Reference);
    new-array v2, v4, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3592
    new-instance v0, Lcom/android/mail/content/ObjectCursorLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->mProjection:[Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->mFactory:Lcom/android/mail/content/CursorCreator;

    #v4=(Reference);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/content/CursorCreator;)V

    #v0=(Reference);
    goto :goto_0

    .line 3585
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3604
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;>;"
    .local p2, data:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;"
    if-nez p2, :cond_0

    .line 3605
    sget-object v8, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v8=(Reference);
    const-string v9, "Received null cursor from loader id: %d"

    #v9=(Reference);
    const/4 v10, 0x1

    #v10=(One);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v12

    #v12=(Integer);
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    #v12=(Reference);
    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3607
    :cond_0
    #v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v8

    #v8=(Integer);
    sparse-switch v8, :sswitch_data_0

    .line 3673
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 3610
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Integer);
    if-eqz p2, :cond_1

    .line 3614
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v8

    int-to-long v2, v8

    .line 3615
    .local v2, count:J
    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v8, 0x0

    #v8=(LongLo);v9=(LongHi);
    cmp-long v8, v2, v8

    #v8=(Byte);
    if-nez v8, :cond_3

    .line 3624
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 3625
    .local v4, extras:Landroid/os/Bundle;
    #v4=(Reference);
    const-string v8, "accounts_loaded"

    #v8=(Reference);
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    #v8=(Integer);
    if-eqz v8, :cond_2

    const/4 v1, 0x1

    .line 3628
    .local v1, accountsLoaded:Z
    :goto_1
    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 3629
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    iget-object v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mail/providers/MailAppProvider;->getNoAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 3631
    .local v5, noAccountIntent:Landroid/content/Intent;
    #v5=(Reference);
    if-eqz v5, :cond_1

    .line 3632
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    const/4 v9, 0x1

    #v9=(One);
    invoke-interface {v8, v5, v9}, Lcom/android/mail/ui/ControllableActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3625
    .end local v1           #accountsLoaded:Z
    .end local v5           #noAccountIntent:Landroid/content/Intent;
    :cond_2
    #v1=(Uninit);v5=(Uninit);v8=(Integer);v9=(LongHi);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 3637
    .end local v4           #extras:Landroid/os/Bundle;
    :cond_3
    #v1=(Uninit);v4=(Uninit);v8=(Byte);
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    invoke-static {v8, p2}, Lcom/android/mail/ui/AbstractActivityController;->access$2700(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/content/ObjectCursor;)Z

    move-result v0

    .line 3638
    .local v0, accountListUpdated:Z
    #v0=(Boolean);
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-boolean v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mHaveAccountList:Z

    #v8=(Boolean);
    if-eqz v8, :cond_4

    if-eqz v0, :cond_5

    .line 3639
    :cond_4
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v9=(Reference);
    invoke-static {v9, p2}, Lcom/android/mail/ui/AbstractActivityController;->access$2800(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/content/ObjectCursor;)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v8, Lcom/android/mail/ui/AbstractActivityController;->mHaveAccountList:Z

    .line 3641
    :cond_5
    #v8=(Conflicted);v9=(Conflicted);
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v8

    #v8=(Reference);
    const/4 v9, 0x2

    #v9=(PosByte);
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-interface {v8, v9, v10}, Lcom/android/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    goto :goto_0

    .line 3647
    .end local v0           #accountListUpdated:Z
    .end local v2           #count:J
    :sswitch_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v8=(Integer);v9=(Conflicted);v10=(Conflicted);
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 3648
    invoke-virtual {p2}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/mail/providers/Account;

    .line 3650
    .local v7, updatedAccount:Lcom/android/mail/providers/Account;
    iget-object v8, v7, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v9=(Reference);
    iget-object v9, v9, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v9, v9, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_7

    .line 3651
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    iget-object v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v6, v8, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    .line 3654
    .local v6, previousSettings:Lcom/android/mail/providers/Settings;
    #v6=(Reference);
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object v7, v8, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    .line 3655
    sget-object v8, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string v9, "AbstractActivityController.onLoadFinished(): mAccount = %s"

    const/4 v10, 0x1

    #v10=(One);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    iget-object v12, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v12, v12, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3659
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v8, v8, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v8, v8, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    invoke-static {v8, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_6

    .line 3660
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/mail/ui/AbstractActivityController;->access$2900(Lcom/android/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 3662
    :cond_6
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v8=(Reference);
    invoke-virtual {v8}, Lcom/android/mail/ui/AbstractActivityController;->perhapsEnterWaitMode()V

    goto/16 :goto_0

    .line 3664
    .end local v6           #previousSettings:Lcom/android/mail/providers/Settings;
    :cond_7
    #v6=(Uninit);v8=(Boolean);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    sget-object v8, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v8=(Reference);
    const-string v9, "Got update for account: %s with current account: %s"

    const/4 v10, 0x2

    #v10=(PosByte);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    iget-object v12, v7, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v12=(Reference);
    aput-object v12, v10, v11

    const/4 v11, 0x1

    #v11=(One);
    iget-object v12, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v12, v12, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v12, v12, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3668
    iget-object v8, p0, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    const/4 v9, 0x7

    #v9=(PosByte);
    sget-object v10, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v8, v9, p0, v10}, Lcom/android/mail/ui/AbstractActivityController;->access$3000(Lcom/android/mail/ui/AbstractActivityController;ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3607
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3579
    check-cast p2, Lcom/android/mail/content/ObjectCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/AbstractActivityController$AccountLoads;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 3678
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Account;>;>;"
    return-void
.end method
