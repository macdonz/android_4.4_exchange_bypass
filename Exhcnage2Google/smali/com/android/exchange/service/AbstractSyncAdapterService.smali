.class public abstract Lcom/android/exchange/service/AbstractSyncAdapterService;
.super Landroid/app/Service;
.source "AbstractSyncAdapterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected abstract getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/exchange/service/AbstractSyncAdapterService;->getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method
