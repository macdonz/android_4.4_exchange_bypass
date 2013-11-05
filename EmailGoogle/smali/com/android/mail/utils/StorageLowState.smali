.class public final Lcom/android/mail/utils/StorageLowState;
.super Ljava/lang/Object;
.source "StorageLowState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/utils/StorageLowState$LowStorageHandler;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/android/mail/utils/StorageLowState$LowStorageHandler;

.field private static sIsStorageLow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/android/mail/utils/StorageLowState;->sIsStorageLow:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/utils/StorageLowState;->sHandler:Lcom/android/mail/utils/StorageLowState$LowStorageHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    #p0=(Reference);
    return-void
.end method

.method public static checkStorageLowMode(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    #v0=(UninitRef);
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    #v2=(Reference);
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, filter:Landroid/content/IntentFilter;
    #v0=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, result:Landroid/content/Intent;
    #v1=(Reference);
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v2=(Boolean);
    invoke-static {v2}, Lcom/android/mail/utils/StorageLowState;->setIsStorageLow(Z)V

    .line 63
    return-void

    .line 62
    :cond_0
    #v2=(Null);
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setIsStorageLow(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/mail/utils/StorageLowState;->sIsStorageLow:Z

    #v0=(Boolean);
    if-ne v0, p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 73
    :cond_1
    #v0=(Boolean);
    sput-boolean p0, Lcom/android/mail/utils/StorageLowState;->sIsStorageLow:Z

    .line 74
    sget-object v0, Lcom/android/mail/utils/StorageLowState;->sHandler:Lcom/android/mail/utils/StorageLowState$LowStorageHandler;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    sget-object v0, Lcom/android/mail/utils/StorageLowState;->sHandler:Lcom/android/mail/utils/StorageLowState$LowStorageHandler;

    invoke-interface {v0}, Lcom/android/mail/utils/StorageLowState$LowStorageHandler;->onStorageLow()V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/android/mail/utils/StorageLowState;->sHandler:Lcom/android/mail/utils/StorageLowState$LowStorageHandler;

    invoke-interface {v0}, Lcom/android/mail/utils/StorageLowState$LowStorageHandler;->onStorageOk()V

    goto :goto_0
.end method
