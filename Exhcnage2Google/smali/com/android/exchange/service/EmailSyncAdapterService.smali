.class public Lcom/android/exchange/service/EmailSyncAdapterService;
.super Lcom/android/exchange/service/AbstractSyncAdapterService;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;,
        Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;,
        Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    }
.end annotation


# static fields
.field private static final ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;

.field private static sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private final mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "emailAddress"

    #v2=(Reference);
    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "syncInterval="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x2

    #v1=(Byte);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/exchange/service/AbstractSyncAdapterService;-><init>()V

    .line 314
    #p0=(Reference);
    new-instance v0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;-><init>(Lcom/android/exchange/service/EmailSyncAdapterService;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .line 319
    new-instance v0, Lcom/android/exchange/service/EmailSyncAdapterService$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/exchange/service/EmailSyncAdapterService$1;-><init>(Lcom/android/exchange/service/EmailSyncAdapterService;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 486
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/exchange/service/EmailSyncAdapterService;->getAuthsToSync(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/service/EmailSyncAdapterService;)Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/service/EmailSyncAdapterService;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/service/EmailSyncAdapterService;->showAuthNotification(JLjava/lang/String;)V

    return-void
.end method

.method public static createAccountSettingsIntent(JLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "accountId"
    .parameter "accountName"

    .prologue
    .line 821
    const-string v1, "settings"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 823
    .local v0, builder:Landroid/net/Uri$Builder;
    #v0=(Reference);
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 824
    invoke-static {v0, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountName(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 825
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "android.intent.action.EDIT"

    #v2=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v1=(Reference);
    return-object v1
.end method

.method private static getAuthsToSync(Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 2
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 835
    .local v0, authsToSync:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 836
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_0
    #v1=(Conflicted);
    const-string v1, "com.android.calendar"

    #v1=(Reference);
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 839
    const-string v1, "com.android.calendar"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_1
    #v1=(Conflicted);
    const-string v1, "com.android.contacts"

    #v1=(Reference);
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 842
    const-string v1, "com.android.contacts"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_2
    #v1=(Conflicted);
    return-object v0
.end method

.method private showAuthNotification(JLjava/lang/String;)V
    .locals 8
    .parameter "accountId"
    .parameter "accountName"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 795
    #v6=(Null);
    invoke-static {p1, p2, p3}, Lcom/android/exchange/service/EmailSyncAdapterService;->createAccountSettingsIntent(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    #v3=(Reference);
    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 801
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    #v2=(Reference);
    new-instance v3, Landroid/app/Notification$Builder;

    #v3=(UninitRef);
    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #v3=(Reference);
    const v4, 0x7f050038

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/android/exchange/service/EmailSyncAdapterService;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f050039

    #v4=(Integer);
    new-array v5, v7, [Ljava/lang/Object;

    #v5=(Reference);
    aput-object p3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/service/EmailSyncAdapterService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/high16 v4, 0x7f02

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 810
    .local v1, notification:Landroid/app/Notification;
    #v1=(Reference);
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/exchange/service/EmailSyncAdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/NotificationManager;

    .line 812
    .local v0, nm:Landroid/app/NotificationManager;
    const-string v3, "AuthError"

    invoke-virtual {v0, v3, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 813
    return-void
.end method


# virtual methods
.method protected getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;
    .locals 2

    .prologue
    .line 583
    sget-object v1, Lcom/android/exchange/service/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    #v1=(Reference);
    monitor-enter v1

    .line 584
    :try_start_0
    sget-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lcom/android/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p0}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;-><init>(Lcom/android/exchange/service/EmailSyncAdapterService;Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 587
    :cond_0
    sget-object v0, Lcom/android/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    monitor-exit v1

    return-object v0

    .line 588
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "com.google.android.email.EXCHANGE_INTENT"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 561
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Boolean);
    invoke-super {p0, p1}, Lcom/android/exchange/service/AbstractSyncAdapterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 537
    #v3=(Null);
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "onCreate()"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 538
    invoke-super {p0}, Lcom/android/exchange/service/AbstractSyncAdapterService;->onCreate()V

    .line 539
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/service/EmailSyncAdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 541
    new-instance v0, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/exchange/service/EmailSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;-><init>(Lcom/android/exchange/service/EmailSyncAdapterService;Landroid/content/ContentResolver;Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V

    #v0=(Reference);
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/service/EmailSyncAdapterService$RestartPingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 543
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 547
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "onDestroy()"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    invoke-super {p0}, Lcom/android/exchange/service/AbstractSyncAdapterService;->onDestroy()V

    .line 549
    iget-object v2, p0, Lcom/android/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    invoke-static {v2}, Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->access$300(Lcom/android/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/exchange/service/PingTask;

    .line 550
    .local v1, task:Lcom/android/exchange/service/PingTask;
    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/android/exchange/service/PingTask;->stop()V

    goto :goto_0

    .line 554
    .end local v1           #task:Lcom/android/exchange/service/PingTask;
    :cond_1
    #v1=(Conflicted);
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 566
    #v2=(Null);
    if-eqz p1, :cond_0

    const-string v0, "com.google.android.email.EXCHANGE_INTENT"

    #v0=(Reference);
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 568
    const-string v0, "ServiceProxy.FORCE_SHUTDOWN"

    #v0=(Reference);
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 574
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Forced shutdown, killing process"

    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 575
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 578
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-super {p0, p1, p2, p3}, Lcom/android/exchange/service/AbstractSyncAdapterService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
