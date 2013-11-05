.class public Lcom/android/exchange/adapter/Search;
.super Ljava/lang/Object;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Search$1;,
        Lcom/android/exchange/adapter/Search$SearchParser;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    #v0=(UninitRef);
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.S\'Z\'"

    #v1=(Reference);
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/adapter/Search;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 64
    sget-object v0, Lcom/android/exchange/adapter/Search;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    #p0=(Reference);
    return-void
.end method

.method public static searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 23
    .parameter "context"
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 70
    move-object/from16 v0, p3

    #v0=(Reference);
    iget v11, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 71
    .local v11, offset:I
    #v11=(Integer);
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 72
    .local v10, limit:I
    #v10=(Integer);
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 73
    .local v7, filter:Ljava/lang/String;
    #v7=(Reference);
    if-ltz v10, :cond_0

    const/16 v19, 0x64

    #v19=(PosByte);
    move/from16 v0, v19

    #v0=(PosByte);
    if-gt v10, v0, :cond_0

    if-gez v11, :cond_2

    :cond_0
    #v0=(Conflicted);v19=(Conflicted);
    const/4 v12, 0x0

    .line 164
    :cond_1
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Integer);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    return v12

    .line 75
    :cond_2
    #v0=(PosByte);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(PosByte);v20=(Uninit);v21=(Uninit);v22=(Uninit);
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    #v19=(Integer);
    const/16 v20, 0x3

    #v20=(PosByte);
    move/from16 v0, v19

    #v0=(Integer);
    move/from16 v1, v20

    #v1=(PosByte);
    if-ge v0, v1, :cond_4

    :cond_3
    #v1=(Conflicted);v20=(Conflicted);
    const/4 v12, 0x0

    #v12=(Null);
    goto :goto_0

    .line 77
    :cond_4
    #v1=(PosByte);v12=(Uninit);v20=(PosByte);
    const/4 v12, 0x0

    .line 78
    .local v12, res:I
    #v12=(Null);
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 79
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    #v4=(Reference);
    if-eqz v4, :cond_1

    .line 80
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-static {v0, v4}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v18

    .line 81
    .local v18, svc:Lcom/android/exchange/EasSyncService;
    #v18=(Reference);
    if-eqz v18, :cond_1

    .line 82
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v15

    .line 84
    .local v15, searchMailbox:Lcom/android/emailcommon/provider/Mailbox;
    #v15=(Reference);
    if-eqz v15, :cond_1

    .line 85
    new-instance v17, Landroid/content/ContentValues;

    #v17=(UninitRef);
    const/16 v19, 0x1

    #v19=(One);
    move-object/from16 v0, v17

    #v0=(UninitRef);
    move/from16 v1, v19

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 88
    .local v17, statusValues:Landroid/content/ContentValues;
    :try_start_0
    #v0=(Reference);v17=(Reference);
    const-string v19, "uiSyncStatus"

    #v19=(Reference);
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #v1=(Reference);
    move-object/from16 v2, v20

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 91
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 92
    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 93
    new-instance v14, Lcom/android/exchange/adapter/Serializer;

    #v14=(UninitRef);
    invoke-direct {v14}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 94
    .local v14, s:Lcom/android/exchange/adapter/Serializer;
    #v14=(Reference);
    const/16 v19, 0x3c5

    #v19=(PosShort);
    move/from16 v0, v19

    #v0=(PosShort);
    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    #v19=(Reference);
    const/16 v20, 0x3c7

    #v20=(PosShort);
    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 95
    const/16 v19, 0x3c8

    #v19=(PosShort);
    const-string v20, "Mailbox"

    #v20=(Reference);
    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 96
    const/16 v19, 0x3c9

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    #v19=(Reference);
    const/16 v20, 0x3d3

    #v20=(PosShort);
    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 97
    const/16 v19, 0x10

    #v19=(PosByte);
    const-string v20, "Email"

    #v20=(Reference);
    move/from16 v0, v19

    #v0=(PosByte);
    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 100
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-wide/from16 v1, p1

    #v1=(LongLo);v2=(LongHi);
    move/from16 v3, v19

    #v3=(Null);
    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 102
    .local v8, inbox:Lcom/android/emailcommon/provider/Mailbox;
    #v8=(Reference);
    if-nez v8, :cond_5

    const/4 v12, 0x0

    .line 160
    .end local v12           #res:I
    const-string v19, "uiSyncStatus"

    #v19=(Reference);
    const/16 v20, 0x0

    #v20=(Null);
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #v1=(Reference);
    move-object/from16 v2, v20

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    .end local v8           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #s:Lcom/android/exchange/adapter/Serializer;
    :goto_1
    #v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Integer);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 103
    .restart local v8       #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12       #res:I
    .restart local v14       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_5
    :try_start_1
    #v1=(LongLo);v2=(LongHi);v3=(Null);v5=(Uninit);v6=(Uninit);v8=(Reference);v9=(Uninit);v12=(Null);v13=(Uninit);v14=(Reference);v16=(Uninit);v19=(Null);v21=(Uninit);v22=(Uninit);
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v19, v0

    #v19=(LongLo);v20=(LongHi);
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    #v21=(LongLo);v22=(LongHi);
    cmp-long v19, v19, v21

    #v19=(Byte);
    if-eqz v19, :cond_6

    .line 104
    const/16 v19, 0x12

    #v19=(PosByte);
    iget-object v0, v8, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v20, v0

    #v20=(Reference);
    move/from16 v0, v19

    #v0=(PosByte);
    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 107
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);v19=(Byte);v20=(Conflicted);
    const/16 v19, 0x3d5

    #v19=(PosShort);
    move/from16 v0, v19

    #v0=(PosShort);
    invoke-virtual {v14, v0, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 110
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_7

    .line 111
    const/16 v19, 0x3db

    #v19=(PosShort);
    move/from16 v0, v19

    #v0=(PosShort);
    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 112
    const/16 v19, 0x8f

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 113
    const/16 v19, 0x3d2

    sget-object v20, Lcom/android/exchange/adapter/Search;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    #v20=(Reference);
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    move-object/from16 v21, v0

    #v21=(Reference);
    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    #v0=(PosShort);
    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 114
    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 116
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_8

    .line 117
    const/16 v19, 0x3da

    #v19=(PosShort);
    move/from16 v0, v19

    #v0=(PosShort);
    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 118
    const/16 v19, 0x8f

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 119
    const/16 v19, 0x3d2

    sget-object v20, Lcom/android/exchange/adapter/Search;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    #v20=(Reference);
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    move-object/from16 v21, v0

    #v21=(Reference);
    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    #v0=(PosShort);
    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 120
    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 122
    :cond_8
    #v0=(Conflicted);v1=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 123
    const/16 v19, 0x3ca

    #v19=(PosShort);
    move/from16 v0, v19

    #v0=(PosShort);
    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 124
    if-nez v11, :cond_9

    .line 125
    const/16 v19, 0x3d9

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 127
    :cond_9
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    #v0=(Boolean);
    move/from16 v19, v0

    #v19=(Boolean);
    if-eqz v19, :cond_a

    .line 128
    const/16 v19, 0x3d7

    #v19=(PosShort);
    move/from16 v0, v19

    #v0=(PosShort);
    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 131
    :cond_a
    const/16 v19, 0x3cb

    new-instance v20, Ljava/lang/StringBuilder;

    #v20=(UninitRef);
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #v20=(Reference);
    move-object/from16 v0, v20

    #v0=(Reference);
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    #v21=(Reference);
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int v21, v11, v10

    #v21=(Integer);
    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    #v0=(PosShort);
    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 132
    const/16 v19, 0x445

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 133
    const/16 v19, 0x446

    const-string v20, "2"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 134
    const/16 v19, 0x447

    const-string v20, "20000"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 135
    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 136
    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 137
    const-string v19, "Search"

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 139
    .local v13, resp:Lcom/android/exchange/EasResponse;
    :try_start_2
    #v13=(Reference);
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v5

    .line 140
    .local v5, code:I
    #v5=(Integer);
    const/16 v19, 0xc8

    #v19=(PosShort);
    move/from16 v0, v19

    if-ne v5, v0, :cond_b

    .line 141
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 143
    .local v9, is:Ljava/io/InputStream;
    :try_start_3
    #v9=(Reference);
    new-instance v16, Lcom/android/exchange/adapter/Search$SearchParser;

    #v16=(UninitRef);
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v16

    #v0=(UninitRef);
    move-object/from16 v1, v18

    move-object/from16 v2, v19

    #v2=(Null);
    invoke-direct {v0, v9, v1, v7, v2}, Lcom/android/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Lcom/android/exchange/adapter/Search$1;)V

    .line 144
    .local v16, sp:Lcom/android/exchange/adapter/Search$SearchParser;
    #v0=(Reference);v16=(Reference);
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Search$SearchParser;->parse()Z

    .line 145
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/adapter/Search$SearchParser;->getTotalResults()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    .line 147
    :try_start_4
    #v12=(Integer);
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    .end local v9           #is:Ljava/io/InputStream;
    .end local v16           #sp:Lcom/android/exchange/adapter/Search$SearchParser;
    :goto_2
    :try_start_5
    #v2=(Conflicted);v9=(Conflicted);v16=(Conflicted);v19=(Reference);v21=(Conflicted);v22=(Conflicted);
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 160
    const-string v19, "uiSyncStatus"

    const/16 v20, 0x0

    #v20=(Null);
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 147
    .restart local v9       #is:Ljava/io/InputStream;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v9=(Reference);v12=(Null);v19=(PosShort);v21=(Integer);v22=(LongHi);
    move-exception v19

    :try_start_6
    #v19=(Reference);
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    .end local v5           #code:I
    .end local v9           #is:Ljava/io/InputStream;
    :catchall_1
    #v5=(Conflicted);v9=(Conflicted);v12=(Integer);v19=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    move-exception v19

    :try_start_7
    #v19=(Reference);
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 155
    .end local v8           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v14           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_0
    #v1=(Conflicted);v3=(Conflicted);v8=(Conflicted);v13=(Conflicted);v14=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-exception v6

    .line 156
    .local v6, e:Ljava/io/IOException;
    #v6=(Reference);
    const/16 v19, 0x1

    :try_start_8
    #v19=(One);
    move/from16 v0, v19

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v19, v0

    #v19=(Reference);
    const/16 v20, 0x0

    #v20=(Null);
    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "Search exception "

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 160
    const-string v19, "uiSyncStatus"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #v1=(Reference);
    move-object/from16 v2, v20

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 150
    .end local v6           #e:Ljava/io/IOException;
    .restart local v5       #code:I
    .restart local v8       #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v14       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_b
    #v0=(PosShort);v2=(LongHi);v3=(Null);v5=(Integer);v6=(Uninit);v8=(Reference);v9=(Uninit);v12=(Null);v13=(Reference);v14=(Reference);v16=(Uninit);v19=(PosShort);v21=(Integer);v22=(LongHi);
    const/16 v19, 0x1

    :try_start_9
    #v19=(One);
    move/from16 v0, v19

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    move-object/from16 v19, v0

    #v19=(Reference);
    const/16 v20, 0x0

    #v20=(Null);
    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "Search returned "

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 160
    .end local v5           #code:I
    .end local v8           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v14           #s:Lcom/android/exchange/adapter/Serializer;
    :catchall_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Integer);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    move-exception v19

    #v19=(Reference);
    const-string v20, "uiSyncStatus"

    #v20=(Reference);
    const/16 v21, 0x0

    #v21=(Null);
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    #v21=(Reference);
    move-object/from16 v0, v17

    #v0=(Reference);
    move-object/from16 v1, v20

    #v1=(Reference);
    move-object/from16 v2, v21

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 160
    throw v19
.end method
