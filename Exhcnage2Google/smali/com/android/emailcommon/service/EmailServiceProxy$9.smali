.class Lcom/android/emailcommon/service/EmailServiceProxy$9;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->sendMeetingResponse(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$messageId:J

.field final synthetic val$response:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$9;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$9;->val$messageId:J

    iput p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$9;->val$response:I

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
    .line 307
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$9;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$9;->val$messageId:J

    #v1=(LongLo);v2=(LongHi);
    iget v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$9;->val$response:I

    #v3=(Integer);
    invoke-interface {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V

    .line 308
    return-void
.end method
