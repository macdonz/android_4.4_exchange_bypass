.class Lcom/android/emailcommon/service/EmailServiceProxy$12;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$destMailboxId:J

.field final synthetic val$searchParams:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iput-wide p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$destMailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v6=(Reference);
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$accountId:J

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    #v3=(Reference);
    iget-wide v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$destMailboxId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v6, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$102(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method
