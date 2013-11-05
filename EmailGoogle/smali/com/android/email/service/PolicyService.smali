.class public Lcom/android/email/service/PolicyService;
.super Landroid/app/Service;
.source "PolicyService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

.field private mContext:Landroid/content/Context;

.field private mSecurityPolicy:Lcom/android/email/SecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email/service/PolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    #p0=(Reference);
    new-instance v0, Lcom/android/email/service/PolicyService$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/service/PolicyService$1;-><init>(Lcom/android/email/service/PolicyService;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/PolicyService;->mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mSecurityPolicy:Lcom/android/email/SecurityPolicy;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/email/service/PolicyService;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/service/PolicyService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 83
    iput-object p0, p0, Lcom/android/email/service/PolicyService;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/PolicyService;->mSecurityPolicy:Lcom/android/email/SecurityPolicy;

    .line 85
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

    return-object v0
.end method
