.class Lcom/android/exchange/service/EmailSyncAdapterService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/service/EmailSyncAdapterService;


# direct methods
.method constructor <init>(Lcom/android/exchange/service/EmailSyncAdapterService;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private getEmailAddressForAccount(J)Ljava/lang/String;
    .locals 9
    .parameter "accountId"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v6, 0x0

    .line 322
    #v6=(Null);
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {}, Lcom/android/exchange/service/EmailSyncAdapterService;->access$100()[Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "_id =?"

    #v3=(Reference);
    new-array v4, v8, [Ljava/lang/String;

    #v4=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    const/4 v5, 0x0

    #v5=(Null);
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, emailAddress:Ljava/lang/String;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 326
    const-string v0, "Exchange"

    const-string v1, "Could not find email address for account %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    :cond_0
    return-object v7
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 339
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "IEmailService.autoDiscover"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 340
    new-instance v0, Lcom/android/exchange/service/EasAutoDiscover;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/exchange/service/EasAutoDiscover;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/service/EasAutoDiscover;->doAutodiscover()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 4
    .parameter "emailAddress"

    .prologue
    .line 389
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "IEmailService.deleteAccountPIMData"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    .line 392
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/exchange/service/EasContactsSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    invoke-static {v0, p1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getApiLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x3

    #v0=(PosByte);
    return v0
.end method

.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 6
    .parameter "acct"

    .prologue
    .line 412
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 413
    .local v0, easVersion:Ljava/lang/String;
    #v0=(Reference);
    const-wide/high16 v2, 0x4004

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 414
    .local v1, easVersionDouble:Ljava/lang/Double;
    #v1=(Reference);
    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    #v2=(DoubleLo);v3=(DoubleHi);
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 421
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

    .line 422
    const v2, 0x104461

    .line 429
    :goto_1
    #v2=(Integer);
    return v2

    :cond_1
    #v2=(Byte);
    const v2, 0x104401

    #v2=(Integer);
    goto :goto_1

    .line 417
    :catch_0
    #v2=(LongLo);v3=(LongHi);v4=(Uninit);v5=(Uninit);
    move-exception v2

    #v2=(Reference);
    goto :goto_0
.end method

.method public hostChanged(J)V
    .locals 0
    .parameter "accountId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    return-void
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 5
    .parameter "callback"
    .parameter "attachmentId"
    .parameter "background"

    .prologue
    .line 369
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "IEmailService.loadAttachment: %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-static {v0, p2, p3, p1}, Lcom/android/exchange/service/EasAttachmentLoader;->loadAttachment(Landroid/content/Context;JLcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 373
    return-void
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
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
    .line 401
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "IEmailService.searchMessages"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    move-wide v1, p1

    #v1=(LongLo);v2=(LongHi);
    move-object v3, p3

    #v3=(Reference);
    move-wide v4, p4

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v5}, Lcom/android/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public sendMail(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 408
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 5
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 377
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "IEmailService.sendMeetingResponse: %d, %d"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 378
    iget-object v0, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/exchange/service/EasMeetingResponder;->sendMeetingResponse(Landroid/content/Context;JI)V

    .line 380
    return-void
.end method

.method public serviceUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 439
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 361
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 364
    return-void
.end method

.method public startSync(JZI)V
    .locals 0
    .parameter "mailboxId"
    .parameter "userRequest"
    .parameter "deltaMessageCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    return-void
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    return-void
.end method

.method public updateFolderList(J)V
    .locals 8
    .parameter "accountId"

    .prologue
    const/4 v7, 0x1

    .line 346
    #v7=(One);
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v3, "IEmailService.updateFolderList: %d"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/service/EmailSyncAdapterService$1;->getEmailAddressForAccount(J)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, emailAddress:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 349
    new-instance v1, Landroid/os/Bundle;

    #v1=(UninitRef);
    invoke-direct {v1, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 350
    .local v1, extras:Landroid/os/Bundle;
    #v1=(Reference);
    const-string v2, "expedited"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    new-instance v2, Landroid/accounts/Account;

    #v2=(UninitRef);
    const-string v3, "com.google.android.exchange"

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 355
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 3
    .parameter "hostAuth"

    .prologue
    .line 333
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "IEmailService.validate"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    new-instance v0, Lcom/android/exchange/eas/EasFolderSync;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/android/exchange/service/EmailSyncAdapterService;

    invoke-direct {v0, v1, p1}, Lcom/android/exchange/eas/EasFolderSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/exchange/eas/EasFolderSync;->validate()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
