.class final Lcom/android/email/service/AttachmentDownloadService$1;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(Landroid/content/Context;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Landroid/content/Context;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$id:J

    iput p4, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$flags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    .line 832
    iget v1, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$flags:I

    #v1=(Integer);
    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 833
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    #v2=(Reference);
    const-class v3, Lcom/android/email/service/AttachmentDownloadService;

    #v3=(Reference);
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    #v1=(Reference);
    const-string v2, "com.android.email.AttachmentDownloadService.attachment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 835
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 837
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
