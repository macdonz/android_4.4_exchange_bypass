.class Lcom/android/email/service/AccountService$1$1;
.super Ljava/lang/Object;
.source "AccountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/AccountService$1;->getDeviceId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/service/AccountService$1;


# direct methods
.method constructor <init>(Lcom/android/email/service/AccountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/email/service/AccountService$1$1;->this$1:Lcom/android/email/service/AccountService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/service/AccountService$1$1;->this$1:Lcom/android/email/service/AccountService$1;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->startRemoteServices(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/android/email/service/AccountService$1$1;->this$1:Lcom/android/email/service/AccountService$1;

    iget-object v0, v0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email2/ui/MailActivityEmail;->updateLoggingFlags(Landroid/content/Context;)V

    .line 82
    return-void
.end method
