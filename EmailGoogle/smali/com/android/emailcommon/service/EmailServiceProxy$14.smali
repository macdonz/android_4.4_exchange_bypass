.class Lcom/android/emailcommon/service/EmailServiceProxy$14;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->getCapabilities(Lcom/android/emailcommon/provider/Account;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$acct:Lcom/android/emailcommon/provider/Account;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$14;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$14;->val$acct:Lcom/android/emailcommon/provider/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$14;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$14;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$14;->val$acct:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IEmailService;->getCapabilities(Lcom/android/emailcommon/provider/Account;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$102(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method
