.class public Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;
.super Ljava/lang/Object;
.source "EmailServiceStub.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetrievalListenerBridge"
.end annotation


# instance fields
.field private final mAttachmentId:J

.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/service/EmailServiceStub;


# direct methods
.method public constructor <init>(Lcom/android/email/service/EmailServiceStub;JJLcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "callback"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/service/EmailServiceStub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    #p0=(Reference);
    iput-wide p2, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mMessageId:J

    .line 325
    iput-wide p4, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mAttachmentId:J

    .line 326
    iput-object p6, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 327
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mMessageId:J

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mAttachmentId:J

    #v3=(LongLo);v4=(LongHi);
    const/4 v5, 0x1

    #v5=(One);
    move v6, p1

    #v6=(Integer);
    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 334
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 341
    return-void
.end method
