.class Lcom/android/emailcommon/service/AccountServiceProxy$4;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->getAccountColor(J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$4;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$4;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$4;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$4;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$4;->val$accountId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IAccountService;->getAccountColor(J)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method