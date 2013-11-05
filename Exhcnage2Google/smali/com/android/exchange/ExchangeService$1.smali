.class Lcom/android/exchange/ExchangeService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 134
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v0=(Reference);
    iput-object p1, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 135
    iput-object p2, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 136
    const/4 v1, 0x5

    #v1=(PosByte);
    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 137
    const/16 v1, 0x1bb

    #v1=(PosShort);
    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 138
    new-instance v1, Lcom/android/exchange/EasSyncService;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/exchange/EasSyncService;-><init>()V

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    #v2=(Reference);
    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/EasSyncService;->tryAutodiscover(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getApiLevel()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x3

    #v0=(PosByte);
    return v0
.end method

.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 6
    .parameter "acct"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 294
    .local v0, easVersion:Ljava/lang/String;
    #v0=(Reference);
    const-wide/high16 v2, 0x4004

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 295
    .local v1, easVersionDouble:Ljava/lang/Double;
    #v1=(Reference);
    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 302
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(LongHi);
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    const-wide/high16 v4, 0x4028

    #v4=(LongLo);v5=(LongHi);
    cmpl-double v2, v2, v4

    #v2=(Byte);
    if-ltz v2, :cond_1

    .line 303
    const/16 v2, 0x4461

    .line 305
    :goto_1
    #v2=(PosShort);
    return v2

    :cond_1
    #v2=(Byte);
    const/16 v2, 0x4401

    #v2=(PosShort);
    goto :goto_1

    .line 298
    :catch_0
    #v2=(LongLo);v3=(LongHi);v4=(Uninit);v5=(Uninit);
    move-exception v2

    #v2=(Reference);
    goto :goto_0
.end method

.method public hostChanged(J)V
    .locals 9
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$200()Lcom/android/emailsync/SyncManager;

    move-result-object v1

    .line 212
    .local v1, exchangeService:Lcom/android/emailsync/SyncManager;
    #v1=(Reference);
    if-nez v1, :cond_0

    .line 232
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 213
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v6, v1, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    .local v6, syncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/android/emailsync/SyncManager$SyncError;>;"
    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    #v0=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 216
    .local v4, mailboxId:J
    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailsync/SyncManager$SyncError;

    .line 218
    .local v0, error:Lcom/android/emailsync/SyncManager$SyncError;
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 221
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    #v3=(Reference);
    if-nez v3, :cond_2

    .line 222
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_2
    if-eqz v0, :cond_1

    iget-wide v7, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, v7, p1

    #v7=(Byte);
    if-nez v7, :cond_1

    .line 224
    const/4 v7, 0x0

    #v7=(Null);
    iput-boolean v7, v0, Lcom/android/emailsync/SyncManager$SyncError;->fatal:Z

    .line 225
    const-wide/16 v7, 0x0

    #v7=(LongLo);
    iput-wide v7, v0, Lcom/android/emailsync/SyncManager$SyncError;->holdEndTime:J

    goto :goto_1

    .line 229
    .end local v0           #error:Lcom/android/emailsync/SyncManager$SyncError;
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Boolean);v8=(Conflicted);
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v1, p1, p2, v7}, Lcom/android/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 231
    const-string v7, "host changed"

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 4
    .parameter "callback"
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    #v3=(Null);
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    #v1=(Reference);
    invoke-static {v1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 200
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "loadAttachment "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/android/emailsync/PartRequest;

    #v1=(UninitRef);
    invoke-direct {v1, v0, v3, v3}, Lcom/android/emailsync/PartRequest;-><init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailsync/SyncManager;->sendMessageRequest(Lcom/android/emailsync/Request;)V

    .line 202
    return-void
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 281
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailsync/SyncManager;

    move-result-object v0

    .line 282
    .local v0, exchangeService:Lcom/android/emailsync/SyncManager;
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 283
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-wide v1, p1

    #v1=(LongLo);v2=(LongHi);
    move-object v3, p3

    #v3=(Reference);
    move-wide v4, p4

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v5}, Lcom/android/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method

.method public sendMail(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->sendMessageRequest(Lcom/android/emailsync/Request;)V

    .line 245
    return-void
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
    .line 312
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 239
    invoke-static {p1}, Lcom/android/emailsync/SyncManager;->setUserDebug(I)V

    .line 240
    return-void
.end method

.method public startSync(JZI)V
    .locals 10
    .parameter "mailboxId"
    .parameter "userRequest"
    .parameter "deltaMessageCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x4

    #v6=(PosByte);
    const/4 v9, 0x0

    .line 149
    #v9=(Null);
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$000()Lcom/android/emailsync/SyncManager;

    move-result-object v2

    .line 150
    .local v2, exchangeService:Lcom/android/emailsync/SyncManager;
    #v2=(Reference);
    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 151
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(PosByte);v7=(Uninit);v8=(Uninit);
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 152
    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 153
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 154
    iget-wide v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 155
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 158
    if-eqz p3, :cond_3

    .line 159
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$100(Lcom/android/emailcommon/provider/Account;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 160
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    #v4=(Reference);
    const/4 v5, 0x5

    #v5=(PosByte);
    invoke-virtual {v4, v2, v5, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 161
    const-string v4, "User requested sync of account in sync disabled hold; releasing"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 167
    :cond_2
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);
    sget-boolean v4, Lcom/android/emailsync/SyncManager;->sConnectivityHold:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 171
    :cond_3
    #v4=(Conflicted);
    iget v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v4=(Integer);
    if-ne v4, v6, :cond_5

    .line 175
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v1, cv:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v4, "syncServerId"

    #v4=(Reference);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    invoke-virtual {v2}, Lcom/android/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "mailboxKey=?"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/String;

    #v7=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    iget-object v4, v2, Lcom/android/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v4, "start outbox"

    invoke-static {v4}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_4
    #v1=(Uninit);v4=(Boolean);v5=(LongHi);v6=(PosByte);v7=(Uninit);v8=(Uninit);
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    #v4=(Reference);
    invoke-virtual {v4, v2, v6, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 165
    const-string v4, "User requested sync of account in security hold; releasing"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_5
    #v4=(Integer);v5=(Conflicted);
    invoke-static {v3}, Lcom/android/emailsync/SyncManager;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 187
    if-eqz p3, :cond_6

    const/4 v4, 0x7

    :goto_2
    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {p1, p2, v4, v5}, Lcom/android/emailsync/SyncManager;->startManualSync(JILcom/android/emailsync/Request;)V

    goto :goto_0

    :cond_6
    #v4=(Boolean);v5=(Conflicted);
    const/4 v4, 0x6

    #v4=(PosByte);
    goto :goto_2
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p1, p2}, Lcom/android/emailsync/SyncManager;->stopManualSync(J)V

    .line 194
    return-void
.end method

.method public updateFolderList(J)V
    .locals 2
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, p1, p2, v1}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 207
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    const-class v0, Lcom/android/exchange/EasSyncService;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$1;->this$0:Lcom/android/exchange/ExchangeService;

    #v1=(Reference);
    invoke-static {v0, p1, v1}, Lcom/android/emailsync/AbstractSyncService;->validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
