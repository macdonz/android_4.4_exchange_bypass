.class public Lcom/android/email/service/AccountService;
.super Landroid/app/Service;
.source "AccountService.java"


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    #p0=(Reference);
    new-instance v0, Lcom/android/email/service/AccountService$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/service/AccountService$1;-><init>(Lcom/android/email/service/AccountService;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/AccountService;->mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 93
    iput-object p0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
