.class Lcom/android/email/service/PolicyService$1;
.super Lcom/android/emailcommon/service/IPolicyService$Stub;
.source "PolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/PolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/PolicyService;


# direct methods
.method constructor <init>(Lcom/android/email/service/PolicyService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4
    .parameter "policy"

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    #v1=(Boolean);
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    invoke-static {}, Lcom/android/email/service/PolicyService;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Exception thrown during call to SecurityPolicy#isActive"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    throw v0
.end method

.method public remoteWipe()V
    .locals 4

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->remoteWipe()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    invoke-static {}, Lcom/android/email/service/PolicyService;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Exception thrown during call to SecurityPolicy#remoteWipe"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 62
    throw v0
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 1
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$200(Lcom/android/email/service/PolicyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;JZ)V

    .line 52
    return-void
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "policy"
    .parameter "securityKey"

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/SecurityPolicy;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    invoke-static {}, Lcom/android/email/service/PolicyService;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Exception thrown from call to SecurityPolicy#setAccountPolicy"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    throw v0
.end method
