.class Lcom/android/emailcommon/service/EmailServiceProxy$4;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$hostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->val$hostAuth:Lcom/android/emailcommon/provider/HostAuth;

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
    .line 199
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->val$hostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v2=(Reference);
    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IEmailService;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$102(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method
