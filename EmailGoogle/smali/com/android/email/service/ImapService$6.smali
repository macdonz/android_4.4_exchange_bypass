.class final Lcom/android/email/service/ImapService$6;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/ImapService;->searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$destMailboxId:J

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/android/email/service/ImapService$6;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p2, p0, Lcom/android/email/service/ImapService$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-wide p3, p0, Lcom/android/email/service/ImapService$6;->val$destMailboxId:J

    iput-object p5, p0, Lcom/android/email/service/ImapService$6;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1499
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 1471
    :try_start_0
    #v9=(Null);
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1474
    .local v0, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_1
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/service/ImapService$6;->val$account:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iget-object v1, p0, Lcom/android/email/service/ImapService$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 1476
    iget-wide v1, p0, Lcom/android/email/service/ImapService$6;->val$destMailboxId:J

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1478
    const/4 v7, 0x1

    .line 1482
    .local v7, flag:I
    #v7=(One);
    iget-object v1, p0, Lcom/android/email/service/ImapService$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1483
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v1

    #v1=(Integer);
    const v2, 0x1f400

    #v2=(Integer);
    if-le v1, v2, :cond_0

    .line 1484
    const/4 v7, 0x2

    .line 1486
    :cond_0
    #v7=(PosByte);
    iget-object v1, p0, Lcom/android/email/service/ImapService$6;->val$context:Landroid/content/Context;

    #v1=(Reference);
    invoke-static {v1, p1, v0, v7}, Lcom/android/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1495
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #flag:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 1487
    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    #v0=(Reference);v1=(Conflicted);v6=(Uninit);v8=(Uninit);
    move-exception v8

    .line 1488
    .local v8, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    #v8=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Error while copying downloaded message."

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1491
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);
    move-exception v6

    .line 1492
    .local v6, e:Ljava/lang/Exception;
    #v6=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Error while storing downloaded message."

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
