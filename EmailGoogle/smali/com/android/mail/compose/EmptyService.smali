.class public Lcom/android/mail/compose/EmptyService;
.super Landroid/app/Service;
.source "EmptyService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/compose/EmptyService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 41
    sget-object v0, Lcom/android/mail/compose/EmptyService;->TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "onBind()"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/android/mail/compose/EmptyService;->TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "onCreate()"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    return-void
.end method
