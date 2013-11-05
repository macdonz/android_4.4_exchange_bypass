.class Lcom/android/mail/ui/AbstractActivityController$3;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->initializeDevLoggingService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentlyLogging:Z

.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 1
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$3;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/AbstractActivityController$3;->mCurrentlyLogging:Z

    return-void
.end method

.method private startOrStopService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1149
    #v4=(Null);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$3;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mail/MailLogService;

    #v3=(Reference);
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1150
    .local v0, i:Landroid/content/Intent;
    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/MailLogService;->isLoggingLevelHighEnough()Z

    move-result v1

    .line 1151
    .local v1, loggingEnabled:Z
    #v1=(Boolean);
    iget-boolean v2, p0, Lcom/android/mail/ui/AbstractActivityController$3;->mCurrentlyLogging:Z

    #v2=(Boolean);
    if-ne v2, v1, :cond_0

    .line 1163
    :goto_0
    #v2=(Conflicted);v4=(Reference);
    return-void

    .line 1155
    :cond_0
    #v2=(Boolean);v4=(Null);
    if-eqz v1, :cond_1

    .line 1156
    sget-object v2, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Starting MailLogService"

    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1157
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$3;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1162
    :goto_1
    iput-boolean v1, p0, Lcom/android/mail/ui/AbstractActivityController$3;->mCurrentlyLogging:Z

    goto :goto_0

    .line 1159
    :cond_1
    #v2=(Boolean);v4=(Null);
    sget-object v2, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Stopping MailLogService"

    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1160
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$3;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractActivityController$3;->startOrStopService()V

    .line 1168
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$3;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1169
    return-void
.end method
