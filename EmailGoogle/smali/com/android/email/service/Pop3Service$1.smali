.class Lcom/android/email/service/Pop3Service$1;
.super Lcom/android/email/service/EmailServiceStub;
.source "Pop3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/Pop3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/Pop3Service;


# direct methods
.method constructor <init>(Lcom/android/email/service/Pop3Service;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/email/service/Pop3Service$1;->this$0:Lcom/android/email/service/Pop3Service;

    invoke-direct {p0}, Lcom/android/email/service/EmailServiceStub;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 1
    .parameter "acct"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    const v0, 0x104000

    #v0=(Integer);
    return v0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 7
    .parameter "callback"
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 88
    #v6=(Null);
    iget-object v3, p0, Lcom/android/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-static {v3, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 89
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    #v3=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    if-eq v3, v4, :cond_1

    .line 94
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 90
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Integer);v4=(PosByte);v5=(Uninit);
    iget-object v3, p0, Lcom/android/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    #v3=(Reference);
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 91
    .local v1, inboxId:J
    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, -0x1

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, v1, v3

    #v3=(Byte);
    if-eqz v3, :cond_0

    .line 93
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/android/email/service/Pop3Service$1;->startSync(JZI)V

    goto :goto_0
.end method

.method public serviceUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method
