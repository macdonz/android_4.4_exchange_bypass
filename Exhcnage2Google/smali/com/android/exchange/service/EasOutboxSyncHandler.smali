.class public Lcom/android/exchange/service/EasOutboxSyncHandler;
.super Lcom/android/exchange/service/EasServerConnection;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;,
        Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;,
        Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;
    }
.end annotation


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private final mMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 69
    #p0=(Reference);
    iput-object p3, p0, Lcom/android/exchange/service/EasOutboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/service/EasOutboxSyncHandler;->mCacheDir:Ljava/io/File;

    .line 71
    return-void
.end method

.method private static getModeTag(ZLcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)I
    .locals 1
    .parameter "isEas14"
    .parameter "smartSendInfo"

    .prologue
    .line 549
    if-eqz p0, :cond_2

    .line 550
    if-nez p1, :cond_0

    .line 551
    const/16 v0, 0x545

    .line 558
    :goto_0
    #v0=(PosShort);
    return v0

    .line 552
    :cond_0
    #v0=(Uninit);
    invoke-virtual {p1}, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->isForward()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 553
    const/16 v0, 0x546

    #v0=(PosShort);
    goto :goto_0

    .line 555
    :cond_1
    #v0=(Boolean);
    const/16 v0, 0x547

    #v0=(PosShort);
    goto :goto_0

    .line 558
    :cond_2
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    .locals 21
    .parameter "message"
    .parameter "smartSendInfo"

    .prologue
    .line 399
    :try_start_0
    const-string v9, "eas_"

    #v9=(Reference);
    const-string v10, "tmp"

    #v10=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/exchange/service/EasOutboxSyncHandler;->mCacheDir:Ljava/io/File;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    invoke-static {v9, v10, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 406
    .local v18, tmpFile:Ljava/io/File;
    #v18=(Reference);
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v9, v9, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    #v9=(DoubleLo);v10=(DoubleHi);
    const-wide/high16 v19, 0x402c

    #v19=(LongLo);v20=(LongHi);
    cmpl-double v9, v9, v19

    #v9=(Byte);
    if-ltz v9, :cond_1

    const/4 v14, 0x1

    .line 408
    .local v14, isEas14:Z
    :goto_0
    #v14=(Boolean);
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/exchange/service/EasOutboxSyncHandler;->getModeTag(ZLcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)I

    move-result v8

    .line 410
    .local v8, modeTag:I
    :try_start_1
    #v8=(Integer);
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    #v1=(Reference);
    move-object/from16 v2, p1

    #v2=(Reference);
    move-object/from16 v3, p2

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/service/EasOutboxSyncHandler;->writeMessageToTempFile(Ljava/io/File;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_2

    .line 411
    const/4 v9, 0x0

    .line 460
    #v9=(Null);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    .line 461
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v11=(Conflicted);v13=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 512
    .end local v8           #modeTag:I
    .end local v14           #isEas14:Z
    .end local v18           #tmpFile:Ljava/io/File;
    :cond_0
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);v9=(Boolean);v10=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return v9

    .line 400
    :catch_0
    move-exception v13

    .line 401
    .local v13, e:Ljava/io/IOException;
    #v13=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_2

    .line 406
    .end local v13           #e:Ljava/io/IOException;
    .restart local v18       #tmpFile:Ljava/io/File;
    :cond_1
    #v0=(Reference);v9=(Byte);v10=(DoubleHi);v13=(Uninit);v18=(Reference);v19=(LongLo);v20=(LongHi);
    const/4 v14, 0x0

    #v14=(Null);
    goto :goto_0

    .line 416
    .restart local v8       #modeTag:I
    .restart local v14       #isEas14:Z
    :cond_2
    :try_start_2
    #v1=(Reference);v2=(Reference);v3=(Reference);v8=(Integer);v9=(Boolean);v14=(Boolean);
    new-instance v5, Ljava/io/FileInputStream;

    #v5=(UninitRef);
    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 422
    .local v5, fileStream:Ljava/io/FileInputStream;
    :try_start_3
    #v5=(Reference);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 424
    .local v6, fileLength:J
    #v6=(LongLo);v7=(LongHi);
    if-eqz v14, :cond_6

    .line 425
    new-instance v4, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;

    #v4=(UninitRef);
    move-object/from16 v9, p1

    #v9=(Reference);
    move-object/from16 v10, p2

    #v10=(Reference);
    invoke-direct/range {v4 .. v10}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailEntity;-><init>(Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)V

    .line 432
    .local v4, entity:Lorg/apache/http/HttpEntity;
    :goto_3
    #v4=(Reference);v9=(Conflicted);v10=(Conflicted);
    const-string v11, "SendMail"

    .line 433
    .local v11, cmd:Ljava/lang/String;
    #v11=(Reference);
    if-eqz p2, :cond_3

    .line 435
    if-eqz v14, :cond_8

    .line 436
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->isForward()Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_7

    const-string v11, "SmartForward"

    .line 442
    :cond_3
    :goto_4
    #v9=(Conflicted);
    if-nez v14, :cond_4

    .line 443
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&SaveInSent=T"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    .line 447
    :cond_4
    #v9=(Conflicted);v10=(Conflicted);
    const-wide/32 v9, 0xdbba0

    :try_start_4
    #v9=(LongLo);v10=(LongHi);
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v9, v10}, Lcom/android/exchange/service/EasOutboxSyncHandler;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;J)Lcom/android/exchange/EasResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v16

    .line 454
    .local v16, resp:Lcom/android/exchange/EasResponse;
    :try_start_5
    #v16=(Reference);
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 460
    :goto_5
    #v9=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_5

    .line 461
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 466
    :cond_5
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v12

    .line 467
    .local v12, code:I
    #v12=(Integer);
    const/16 v9, 0xc8

    #v9=(PosShort);
    if-ne v12, v9, :cond_c

    .line 470
    if-eqz v14, :cond_f

    .line 473
    :try_start_7
    new-instance v15, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;

    #v15=(UninitRef);
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    #v9=(Reference);
    invoke-direct {v15, v9, v8}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;-><init>(Ljava/io/InputStream;I)V

    .line 475
    .local v15, p:Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;
    #v15=(Reference);
    invoke-virtual {v15}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->parse()Z

    .line 477
    invoke-virtual {v15}, Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;->getStatus()I

    move-result v17

    .line 478
    .local v17, status:I
    #v17=(Integer);
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_a

    .line 479
    const/4 v9, 0x0

    .line 505
    .end local v15           #p:Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;
    .end local v17           #status:I
    :goto_6
    #v0=(Conflicted);v13=(Conflicted);v15=(Conflicted);v17=(Conflicted);
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->close()V

    goto :goto_2

    .line 417
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #fileStream:Ljava/io/FileInputStream;
    .end local v6           #fileLength:J
    .end local v11           #cmd:Ljava/lang/String;
    .end local v12           #code:I
    .end local v16           #resp:Lcom/android/exchange/EasResponse;
    :catch_1
    #v0=(Reference);v4=(Uninit);v5=(Conflicted);v6=(Uninit);v7=(Uninit);v10=(DoubleHi);v11=(Uninit);v12=(Uninit);v13=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);
    move-exception v13

    .line 418
    .local v13, e:Ljava/io/FileNotFoundException;
    #v13=(Reference);
    const/4 v9, 0x0

    .line 460
    #v9=(Null);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    goto/16 :goto_1

    .line 428
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #fileStream:Ljava/io/FileInputStream;
    .restart local v6       #fileLength:J
    :cond_6
    :try_start_8
    #v5=(Reference);v6=(LongLo);v7=(LongHi);v9=(Boolean);v10=(DoubleHi);v13=(Uninit);
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    #v4=(UninitRef);
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    #v4=(Reference);
    goto :goto_3

    .line 436
    .restart local v11       #cmd:Ljava/lang/String;
    :cond_7
    #v10=(Conflicted);v11=(Reference);
    const-string v11, "SmartReply"

    goto :goto_4

    .line 438
    :cond_8
    #v9=(Conflicted);
    invoke-virtual/range {p2 .. p2}, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->generateSmartSendCmd()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v11

    goto :goto_4

    .line 448
    :catch_2
    #v9=(LongLo);v10=(LongHi);
    move-exception v13

    .line 449
    .local v13, e:Ljava/io/IOException;
    #v13=(Reference);
    const/4 v9, 0x0

    .line 454
    :try_start_9
    #v9=(Null);
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 460
    :goto_7
    #v10=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    goto/16 :goto_1

    .line 453
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #fileLength:J
    .end local v11           #cmd:Ljava/lang/String;
    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    #v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Uninit);
    move-exception v9

    .line 454
    :try_start_a
    #v9=(Reference);
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 453
    :goto_8
    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 460
    .end local v5           #fileStream:Ljava/io/FileInputStream;
    :catchall_1
    #v5=(Conflicted);v9=(Conflicted);v13=(Conflicted);v16=(Conflicted);
    move-exception v9

    #v9=(Reference);
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_9

    .line 461
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 460
    :cond_9
    throw v9

    .line 480
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #fileStream:Ljava/io/FileInputStream;
    .restart local v6       #fileLength:J
    .restart local v11       #cmd:Ljava/lang/String;
    .restart local v12       #code:I
    .restart local v15       #p:Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;
    .restart local v16       #resp:Lcom/android/exchange/EasResponse;
    .restart local v17       #status:I
    :cond_a
    #v4=(Reference);v5=(Reference);v6=(LongLo);v7=(LongHi);v9=(Boolean);v10=(LongHi);v11=(Reference);v12=(Integer);v13=(Uninit);v15=(Reference);v16=(Reference);v17=(Integer);
    const/16 v9, 0x96

    #v9=(PosShort);
    move/from16 v0, v17

    #v0=(Integer);
    if-ne v0, v9, :cond_b

    if-eqz p2, :cond_b

    .line 483
    const/4 v9, 0x0

    :try_start_c
    #v9=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/exchange/service/EasOutboxSyncHandler;->sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-result v9

    #v9=(Boolean);
    goto :goto_6

    .line 486
    :cond_b
    #v0=(Integer);v9=(PosShort);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_6

    .line 489
    .end local v15           #p:Lcom/android/exchange/service/EasOutboxSyncHandler$SendMailParser;
    .end local v17           #status:I
    :catch_3
    #v0=(Reference);v9=(Conflicted);v15=(Conflicted);v17=(Conflicted);
    move-exception v13

    .line 491
    .restart local v13       #e:Ljava/io/IOException;
    #v13=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_6

    .line 494
    .end local v13           #e:Ljava/io/IOException;
    :cond_c
    #v9=(PosShort);v13=(Uninit);v15=(Uninit);v17=(Uninit);
    const/16 v9, 0x1f4

    if-ne v12, v9, :cond_d

    if-eqz p2, :cond_d

    .line 496
    const/4 v9, 0x0

    :try_start_d
    #v9=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/exchange/service/EasOutboxSyncHandler;->sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z

    move-result v9

    #v9=(Boolean);
    goto :goto_6

    .line 498
    :cond_d
    #v9=(PosShort);
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->isAuthError()Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_e

    .line 499
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_6

    .line 500
    :cond_e
    #v9=(Boolean);
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->isProvisionError()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v9

    if-eqz v9, :cond_f

    .line 501
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_6

    .line 505
    .end local v12           #code:I
    :catchall_2
    #v9=(Conflicted);v12=(Conflicted);v15=(Conflicted);v17=(Conflicted);
    move-exception v9

    #v9=(Reference);
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->close()V

    throw v9

    .line 487
    .restart local v12       #code:I
    :catch_4
    #v9=(Conflicted);v12=(Integer);
    move-exception v9

    .line 505
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasResponse;->close()V

    .line 510
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v10=(Reference);
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v10, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/16 v19, 0x0

    #v19=(Null);
    const/16 v20, 0x0

    #v20=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    move-object/from16 v1, v20

    #v1=(Null);
    invoke-virtual {v9, v10, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 512
    const/4 v9, 0x1

    #v9=(One);
    goto/16 :goto_2

    .line 455
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #fileLength:J
    .end local v11           #cmd:Ljava/lang/String;
    .end local v12           #code:I
    .end local v16           #resp:Lcom/android/exchange/EasResponse;
    :catch_5
    #v0=(Reference);v1=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Reference);v10=(Conflicted);v11=(Conflicted);v12=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v19=(LongLo);v20=(LongHi);
    move-exception v10

    #v10=(Reference);
    goto :goto_8

    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #fileLength:J
    .restart local v11       #cmd:Ljava/lang/String;
    .restart local v13       #e:Ljava/io/IOException;
    :catch_6
    #v4=(Reference);v6=(LongLo);v7=(LongHi);v9=(Null);v10=(LongHi);v11=(Reference);v13=(Reference);
    move-exception v10

    #v10=(Reference);
    goto :goto_7

    .end local v13           #e:Ljava/io/IOException;
    .restart local v16       #resp:Lcom/android/exchange/EasResponse;
    :catch_7
    #v9=(LongLo);v10=(LongHi);v13=(Uninit);v16=(Reference);
    move-exception v9

    #v9=(Reference);
    goto/16 :goto_5
.end method

.method private writeMessageToTempFile(Ljava/io/File;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    .locals 8
    .parameter "tmpFile"
    .parameter "message"
    .parameter "smartSendInfo"

    .prologue
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v7, 0x1

    .line 526
    :try_start_0
    #v7=(One);
    new-instance v2, Ljava/io/FileOutputStream;

    #v2=(UninitRef);
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .local v2, fileStream:Ljava/io/FileOutputStream;
    #v2=(Reference);
    if-eqz p3, :cond_0

    move v3, v7

    .line 532
    .local v3, smartSend:Z
    :goto_0
    #v3=(Boolean);
    if-eqz v3, :cond_1

    :try_start_1
    iget-object v5, p3, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mRequiredAtts:Ljava/util/ArrayList;

    .line 534
    .local v5, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_1
    #v5=(Reference);
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v0=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    move-object v1, p2

    #v1=(Reference);
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 539
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_2
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move v0, v7

    .line 545
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .end local v3           #smartSend:Z
    :goto_3
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);
    return v0

    .line 527
    :catch_0
    #v0=(Null);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    move-exception v6

    .line 528
    .local v6, e:Ljava/io/FileNotFoundException;
    #v6=(Reference);
    goto :goto_3

    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    :cond_0
    #v2=(Reference);v6=(Uninit);
    move v3, v0

    .line 531
    #v3=(Null);
    goto :goto_0

    .line 532
    .restart local v3       #smartSend:Z
    :cond_1
    #v3=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_1

    .line 538
    :catchall_0
    #v0=(Reference);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    .line 539
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 538
    :goto_4
    throw v0

    .line 535
    :catch_1
    move-exception v0

    .line 539
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 540
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    #v1=(Reference);
    goto :goto_4
.end method


# virtual methods
.method public performSync()V
    .locals 10

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 77
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v8, p0, Lcom/android/exchange/service/EasOutboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    #v8=(Reference);
    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v6=(Reference);v7=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 83
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Message;

    #v7=(UninitRef);
    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 84
    .local v7, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    #v7=(Reference);
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)V

    .line 85
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    invoke-static {v0, v1, v7}, Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->getSmartSendInfo(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/android/exchange/service/EasOutboxSyncHandler;->sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 101
    .end local v7           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    return-void

    .line 101
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
