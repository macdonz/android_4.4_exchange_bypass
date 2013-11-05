.class public Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;
.super Ljava/lang/Object;
.source "EasAttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EasAttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressCallback"
.end annotation


# instance fields
.field private final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/service/IEmailServiceCallback;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "callback"
    .parameter "attachment"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 69
    iput-object p2, p0, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 70
    return-void
.end method


# virtual methods
.method public doCallback(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v1=(Reference);
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/android/exchange/service/EasAttachmentLoader$ProgressCallback;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    const/4 v5, 0x1

    #v5=(One);
    move v6, p1

    #v6=(Integer);
    invoke-static/range {v0 .. v6}, Lcom/android/exchange/service/EasAttachmentLoader;->access$000(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    .line 75
    return-void
.end method
