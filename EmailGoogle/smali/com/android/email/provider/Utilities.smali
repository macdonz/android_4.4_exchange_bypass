.class public Lcom/android/email/provider/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static copyOneMessageToProvider(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 56
    .line 59
    :try_start_0
    #v6=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v4, v5

    const/4 v5, 0x1

    #v5=(One);
    iget-wide v7, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v7=(LongLo);
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v4, v5

    const/4 v5, 0x2

    #v5=(PosByte);
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 71
    if-nez v1, :cond_1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 73
    :cond_1
    :try_start_1
    #v2=(Reference);v3=(Reference);
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 74
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    #v0=(Reference);
    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 78
    :goto_1
    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 79
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 80
    invoke-static {p0, p1, v0, p4}, Lcom/android/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 76
    :cond_2
    :try_start_2
    #v0=(Boolean);v2=(Reference);v3=(Reference);
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #v0=(Reference);
    goto :goto_1

    .line 82
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    :goto_2
    #v0=(Reference);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-eqz v1, :cond_3

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 82
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference);
    move-object v1, v6

    #v1=(Null);
    goto :goto_2
.end method

.method public static copyOneMessageToProvider(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 19
    .parameter "context"
    .parameter "message"
    .parameter "localMessage"
    .parameter "loadStatus"

    .prologue
    .line 102
    const/4 v10, 0x0

    .line 103
    .local v10, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_start_0
    #v10=(Null);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-eqz v2, :cond_2

    .line 104
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    #v10=(Reference);
    move-object v11, v10

    .line 106
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .local v11, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :goto_0
    #v2=(Conflicted);v11=(Reference);
    if-nez v11, :cond_1

    .line 107
    :try_start_1
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Body;

    #v10=(UninitRef);
    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 111
    .end local v11           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :goto_1
    :try_start_2
    #v10=(Reference);
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    #v6=(LongLo);v7=(LongHi);
    move-object/from16 v2, p2

    #v2=(Reference);
    move-object/from16 v3, p1

    #v3=(Reference);
    invoke-static/range {v2 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 115
    new-instance v18, Ljava/util/ArrayList;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v18, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    #v18=(Reference);
    new-instance v9, Ljava/util/ArrayList;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    #v9=(Reference);
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #v1=(Reference);
    invoke-static {v0, v1, v9}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 119
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/utility/ConversionUtilities;->parseBodyFields(Ljava/util/ArrayList;)Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;

    move-result-object v13

    .line 123
    .local v13, data:Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    #v13=(Reference);
    iget-boolean v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    #v2=(Boolean);
    iget-boolean v3, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    #v3=(Boolean);
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->setFlags(ZZ)V

    .line 124
    iget-object v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    #v2=(Reference);
    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 125
    iget-object v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 126
    iget-object v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 127
    iget-object v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlReply:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 128
    iget-object v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->textReply:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 129
    iget-object v2, v13, Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;->introText:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/provider/Utilities;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 133
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, v10, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 134
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/android/email/provider/Utilities;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 137
    const/4 v2, 0x2

    #v2=(PosByte);
    move/from16 v0, p3

    #v0=(Integer);
    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 140
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, p2

    invoke-static {v0, v1, v9}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V

    .line 163
    :goto_2
    #v8=(Conflicted);
    move/from16 v0, p3

    #v0=(Integer);
    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 165
    new-instance v12, Landroid/content/ContentValues;

    #v12=(UninitRef);
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v12, cv:Landroid/content/ContentValues;
    #v12=(Reference);
    const-string v2, "flagAttachment"

    #v2=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    const-string v2, "flagLoaded"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 170
    .local v17, uri:Landroid/net/Uri;
    #v17=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    .end local v9           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #data:Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v3=(Reference);v4=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return-void

    .line 142
    .restart local v9       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .restart local v13       #data:Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .restart local v18       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_0
    #v0=(Integer);v1=(Reference);v2=(PosByte);v3=(LongHi);v4=(LongLo);v5=(LongHi);v6=(LongLo);v7=(LongHi);v8=(Uninit);v9=(Reference);v11=(Reference);v12=(Uninit);v13=(Reference);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Reference);
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    #v8=(UninitRef);
    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 152
    .local v8, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    #v8=(Reference);
    const-string v2, ""

    #v2=(Reference);
    iput-object v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);
    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 154
    const-string v2, "text/plain"

    #v2=(Reference);
    iput-object v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p2

    #v0=(Reference);
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);
    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 156
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 157
    const/16 v2, 0x400

    #v2=(PosShort);
    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 159
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 172
    .end local v8           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v13           #data:Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .end local v18           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);v13=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    move-exception v15

    .line 173
    .local v15, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    #v15=(Reference);
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Error while copying downloaded message."

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 176
    .end local v15           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v11=(Conflicted);v15=(Conflicted);
    move-exception v16

    .line 177
    .local v16, rte:Ljava/lang/RuntimeException;
    :goto_4
    #v16=(Reference);
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Error while storing downloaded message."

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 178
    .end local v16           #rte:Ljava/lang/RuntimeException;
    :catch_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v16=(Uninit);
    move-exception v14

    .line 179
    .local v14, ioe:Ljava/io/IOException;
    :goto_5
    #v14=(Reference);
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Error while storing attachment."

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 178
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v14           #ioe:Ljava/io/IOException;
    .restart local v11       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_3
    #v0=(Reference);v1=(Uninit);v2=(Conflicted);v3=(LongHi);v4=(LongLo);v5=(LongHi);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Conflicted);v11=(Reference);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v17=(Uninit);v18=(Uninit);
    move-exception v14

    #v14=(Reference);
    move-object v10, v11

    .end local v11           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    #v10=(Reference);
    goto :goto_5

    .line 176
    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_4
    #v10=(Conflicted);v14=(Uninit);
    move-exception v16

    #v16=(Reference);
    move-object v10, v11

    .end local v11           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    #v10=(Reference);
    goto :goto_4

    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :cond_1
    #v16=(Uninit);
    move-object v10, v11

    .end local v11           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v10       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    goto/16 :goto_1

    :cond_2
    #v2=(Byte);v10=(Null);v11=(Uninit);
    move-object v11, v10

    .end local v10           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11       #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    #v11=(Null);
    goto/16 :goto_0
.end method

.method public static saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 189
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 187
    :cond_0
    #v0=(Boolean);
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method
