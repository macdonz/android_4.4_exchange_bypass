.class Lcom/android/emailcommon/service/EmailServiceProxy$1;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iput-wide p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    iput-boolean p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$background:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    #v2=(LongLo);v3=(LongHi);
    iget-boolean v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$background:Z

    #v4=(Boolean);
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 131
    :catch_0
    move-exception v7

    .line 134
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    #v7=(Reference);
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    #v3=(LongLo);v4=(LongHi);
    const/16 v5, 0x15

    #v5=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method
