.class Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/AttachmentDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .locals 9
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 706
    #v7=(Null);
    iget-object v4, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-static {v4, p3, p4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$600(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v2

    .line 707
    .local v2, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 708
    const-string v4, "AttachmentService"

    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-static {v4, v5}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 710
    packed-switch p5, :pswitch_data_0

    .line 713
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, code:Ljava/lang/String;
    :goto_0
    #v1=(Reference);
    if-eq p5, v8, :cond_2

    .line 716
    const-string v4, "AttachmentService"

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, ">> Attachment "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 721
    .end local v1           #code:Ljava/lang/String;
    :cond_0
    :goto_1
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iput p5, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 722
    iput p6, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    iput-wide v4, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 724
    iget-object v4, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 725
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v0=(Reference);
    if-eqz v0, :cond_1

    if-ne p5, v8, :cond_1

    .line 726
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v3, values:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v4, "uiDownloadedSize"

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    #v5=(LongLo);v6=(LongHi);
    int-to-long v7, p6

    #v7=(LongLo);v8=(LongHi);
    mul-long/2addr v5, v7

    const-wide/16 v7, 0x64

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 731
    iget-object v4, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 734
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    packed-switch p5, :pswitch_data_1

    .line 738
    iget-object v4, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v4, p3, p4, p5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 741
    :pswitch_0
    return-void

    .line 711
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Boolean);v5=(PosByte);v6=(Uninit);v7=(Null);v8=(One);
    const-string v1, "Success"

    .restart local v1       #code:Ljava/lang/String;
    #v1=(Reference);
    goto :goto_0

    .line 712
    .end local v1           #code:Ljava/lang/String;
    :pswitch_2
    #v1=(Uninit);
    const-string v1, "In progress"

    .restart local v1       #code:Ljava/lang/String;
    #v1=(Reference);
    goto :goto_0

    .line 717
    :cond_2
    iget v4, v2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    #v4=(Integer);
    add-int/lit8 v4, v4, 0xf

    if-lt p6, v4, :cond_0

    .line 718
    const-string v4, "AttachmentService"

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, ">> Attachment "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 710
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 734
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
