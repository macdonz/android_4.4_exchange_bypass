.class Lcom/android/emailcommon/service/PolicyServiceProxy$1;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:Lcom/android/emailcommon/provider/Policy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/provider/Policy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->val$arg0:Lcom/android/emailcommon/provider/Policy;

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
    .line 53
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->val$arg0:Lcom/android/emailcommon/provider/Policy;

    #v2=(Reference);
    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IPolicyService;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    #v1=(Boolean);
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
