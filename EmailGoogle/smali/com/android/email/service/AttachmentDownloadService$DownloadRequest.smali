.class public Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field final accountId:J

.field final attachmentId:J

.field inProgress:Z

.field lastCallbackTime:J

.field lastProgress:I

.field lastStatusCode:I

.field final messageId:J

.field final priority:I

.field retryCount:J

.field retryStartTime:J

.field startTime:J

.field final time:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 3
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    #p0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 190
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    .line 191
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 192
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 193
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    .line 194
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    .line 198
    :goto_0
    invoke-static {p2}, Lcom/android/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);
    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    .line 200
    return-void

    .line 196
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    iput-wide v1, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 212
    #v1=(Null);
    instance-of v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Byte);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1

    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-object v0, p1

    .line 213
    #v0=(Reference);
    check-cast v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 214
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_0

    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method
