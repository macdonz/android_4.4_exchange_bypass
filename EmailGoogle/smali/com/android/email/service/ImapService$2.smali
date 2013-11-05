.class final Lcom/android/email/service/ImapService$2;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/ImapService;->downloadFlagAndEnvelope(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

.field final synthetic val$unseenMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/email/service/ImapService$2;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/email/service/ImapService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/service/ImapService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p4, p0, Lcom/android/email/service/ImapService$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p5, p0, Lcom/android/email/service/ImapService$2;->val$unseenMessages:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 323
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 287
    :try_start_0
    #v9=(Null);
    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$localMapCopy:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/email/service/ImapService$LocalMessageInfo;

    .line 290
    .local v7, localMessageInfo:Lcom/android/email/service/ImapService$LocalMessageInfo;
    if-nez v7, :cond_1

    .line 291
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .local v0, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);
    if-eqz v0, :cond_0

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 303
    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/email/provider/Utilities;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 305
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$unseenMessages:Ljava/util/ArrayList;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$unseenMessages:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #localMessageInfo:Lcom/android/email/service/ImapService$LocalMessageInfo;
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 293
    .restart local v7       #localMessageInfo:Lcom/android/email/service/ImapService$LocalMessageInfo;
    :cond_1
    :try_start_2
    #v0=(Uninit);v1=(Reference);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Uninit);
    iget-object v1, p0, Lcom/android/email/service/ImapService$2;->val$context:Landroid/content/Context;

    iget-wide v2, v7, Lcom/android/email/service/ImapService$LocalMessageInfo;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v0=(Reference);
    goto :goto_0

    .line 308
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v8

    .line 309
    .local v8, me:Lcom/android/emailcommon/mail/MessagingException;
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

    goto :goto_1

    .line 315
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #localMessageInfo:Lcom/android/email/service/ImapService$LocalMessageInfo;
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v6

    .line 316
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

    goto :goto_1
.end method
