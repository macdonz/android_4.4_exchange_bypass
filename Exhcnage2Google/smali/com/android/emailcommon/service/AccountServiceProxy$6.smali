.class Lcom/android/emailcommon/service/AccountServiceProxy$6;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/service/IAccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
