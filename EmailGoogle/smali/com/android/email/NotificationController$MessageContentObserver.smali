.class Lcom/android/email/NotificationController$MessageContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageContentObserver"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;J)V
    .locals 0
    .parameter "handler"
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 546
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    .line 547
    iput-wide p3, p0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    .line 548
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 19
    .parameter "selfChange"

    .prologue
    .line 552
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 554
    .local v2, contentResolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    const-string v3, "uiaccount"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 558
    .local v10, accountCursor:Landroid/database/Cursor;
    #v10=(Reference);
    if-nez v10, :cond_0

    .line 559
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Null account cursor for mAccountId %d"

    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v17, v0

    #v17=(LongLo);v18=(LongHi);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 625
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return-void

    .line 563
    :cond_0
    #v0=(Reference);v1=(Uninit);v3=(Reference);v4=(Reference);v5=(Null);v6=(Null);v7=(Null);v8=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);
    const/4 v9, 0x0

    .line 565
    .local v9, account:Lcom/android/mail/providers/Account;
    :try_start_0
    #v9=(Null);
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 566
    new-instance v9, Lcom/android/mail/providers/Account;

    .end local v9           #account:Lcom/android/mail/providers/Account;
    #v9=(UninitRef);
    invoke-direct {v9, v10}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .restart local v9       #account:Lcom/android/mail/providers/Account;
    :cond_1
    #v9=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 572
    if-nez v9, :cond_2

    .line 573
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "Tried to create a notification for a missing account %d"

    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v17, v0

    #v17=(LongLo);v18=(LongHi);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 569
    .end local v9           #account:Lcom/android/mail/providers/Account;
    :catchall_0
    #v0=(Reference);v1=(Uninit);v3=(Conflicted);v5=(Null);v8=(Uninit);v9=(Conflicted);v17=(Uninit);v18=(Uninit);
    move-exception v3

    #v3=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 578
    .restart local v9       #account:Lcom/android/mail/providers/Account;
    :cond_2
    #v3=(Boolean);v9=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_NOTIFICATION_URI:Landroid/net/Uri;

    #v3=(Reference);
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 582
    .local v12, mailboxCursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    :try_start_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Conflicted);v11=(Conflicted);v12=(Reference);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 583
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 585
    .local v13, mailboxId:J
    #v13=(LongLo);v14=(LongHi);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, v13, v3

    #v3=(Byte);
    if-eqz v3, :cond_3

    .line 587
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 589
    .local v15, unreadCount:I
    #v15=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 592
    .local v16, unseenCount:I
    #v16=(Integer);
    const-string v3, "uifolder"

    #v3=(Reference);
    invoke-static {v3, v13, v14}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 596
    .local v11, folderCursor:Landroid/database/Cursor;
    #v11=(Reference);
    if-nez v11, :cond_4

    .line 597
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Null folder cursor for account %d, mailbox %d"

    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v17, v0

    #v17=(LongLo);v18=(LongHi);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 623
    .end local v11           #folderCursor:Landroid/database/Cursor;
    .end local v13           #mailboxId:J
    .end local v15           #unreadCount:I
    .end local v16           #unseenCount:I
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 602
    .restart local v11       #folderCursor:Landroid/database/Cursor;
    .restart local v13       #mailboxId:J
    .restart local v15       #unreadCount:I
    .restart local v16       #unseenCount:I
    :cond_4
    #v4=(Reference);v5=(Null);v6=(Null);v7=(Null);v11=(Reference);v13=(LongLo);v14=(LongHi);v15=(Integer);v16=(Integer);
    const/4 v7, 0x0

    .line 604
    .local v7, folder:Lcom/android/mail/providers/Folder;
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_5

    .line 605
    new-instance v7, Lcom/android/mail/providers/Folder;

    .end local v7           #folder:Lcom/android/mail/providers/Folder;
    #v7=(UninitRef);
    invoke-direct {v7, v11}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 612
    .restart local v7       #folder:Lcom/android/mail/providers/Folder;
    :try_start_3
    #v7=(Reference);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 615
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Changes to account "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unreadCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unseenCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    #v0=(Integer);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 619
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    #v8=(One);
    move v4, v15

    #v4=(Integer);
    move/from16 v5, v16

    #v5=(Integer);
    move-object v6, v9

    #v6=(Reference);
    invoke-static/range {v3 .. v8}, Lcom/android/mail/utils/NotificationUtils;->setNewEmailIndicator(Landroid/content/Context;IILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 607
    :cond_5
    :try_start_4
    #v0=(Conflicted);v3=(Boolean);v4=(Reference);v5=(Null);v6=(Null);v7=(Null);v8=(Conflicted);
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "Empty folder cursor for account %d, mailbox %d"

    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/email/NotificationController$MessageContentObserver;->mAccountId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v17, v0

    #v17=(LongLo);v18=(LongHi);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 612
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v7           #folder:Lcom/android/mail/providers/Folder;
    :catchall_2
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Boolean);v7=(Conflicted);v8=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 623
    .end local v11           #folderCursor:Landroid/database/Cursor;
    .end local v13           #mailboxId:J
    .end local v15           #unreadCount:I
    .end local v16           #unseenCount:I
    :cond_6
    #v3=(Boolean);v4=(Conflicted);v6=(Conflicted);v7=(Reference);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
