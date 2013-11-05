.class public Lcom/android/emailcommon/provider/MessageMove;
.super Lcom/android/emailcommon/provider/MessageChangeLogTable;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;,
        Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;
    }
.end annotation


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field private static final SELECTION_LAST_SYNCED_MAILBOX:Ljava/lang/String;


# instance fields
.field private mDstFolderKey:J

.field private mDstFolderServerId:Ljava/lang/String;

.field private final mSrcFolderKey:J

.field private final mSrcFolderServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "messageKey=? and status!="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/MessageMove;->STATUS_FAILED_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove;->SELECTION_LAST_SYNCED_MAILBOX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "messageKey"
    .parameter "serverId"
    .parameter "id"
    .parameter "srcFolderKey"
    .parameter "dstFolderKey"
    .parameter "srcFolderServerId"
    .parameter "dstFolderServerId"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/emailcommon/provider/MessageChangeLogTable;-><init>(JLjava/lang/String;J)V

    .line 84
    #p0=(Reference);
    iput-wide p6, p0, Lcom/android/emailcommon/provider/MessageMove;->mSrcFolderKey:J

    .line 85
    iput-wide p8, p0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderKey:J

    .line 86
    iput-object p10, p0, Lcom/android/emailcommon/provider/MessageMove;->mSrcFolderServerId:Ljava/lang/String;

    .line 87
    iput-object p11, p0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderServerId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static getLastSyncedMailboxForMessage(Landroid/content/ContentResolver;J)J
    .locals 13
    .parameter "cr"
    .parameter "messageId"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v8, 0x0

    .line 229
    #v8=(Null);
    new-array v4, v0, [Ljava/lang/String;

    #v4=(Reference);
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    aput-object v0, v4, v1

    .line 230
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;->PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/MessageMove;->SELECTION_LAST_SYNCED_MAILBOX:Ljava/lang/String;

    #v3=(Reference);
    const-string v5, "_id ASC"

    #v5=(Reference);
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 232
    .local v12, moveCursor:Landroid/database/Cursor;
    #v12=(Reference);
    if-eqz v12, :cond_1

    .line 234
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 241
    #v0=(LongLo);v1=(LongHi);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 258
    :goto_0
    #v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-wide v0

    .line 241
    :cond_0
    #v0=(Boolean);v1=(Reference);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    #v0=(Conflicted);
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    #v6=(Reference);
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

    #v7=(Reference);
    move-object v5, p0

    move-object v9, v8

    #v9=(Null);
    move-object v10, v8

    #v10=(Null);
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 249
    .local v11, messageCursor:Landroid/database/Cursor;
    #v11=(Reference);
    if-eqz v11, :cond_3

    .line 251
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 255
    #v0=(LongLo);v1=(LongHi);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 241
    .end local v11           #messageCursor:Landroid/database/Cursor;
    :catchall_0
    #v0=(Conflicted);v1=(Reference);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 255
    .restart local v11       #messageCursor:Landroid/database/Cursor;
    :cond_2
    #v0=(Boolean);v6=(Reference);v7=(Reference);v9=(Null);v10=(Null);v11=(Reference);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_3
    #v0=(Conflicted);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    goto :goto_0

    .line 255
    :catchall_1
    #v0=(Reference);v1=(Reference);
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMoves(Landroid/content/Context;J)Ljava/util/List;
    .locals 30
    .parameter "context"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageMove;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 121
    .local v17, cr:Landroid/content/ContentResolver;
    #v17=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    #v4=(Reference);
    sget-object v26, Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;->PROJECTION:[Ljava/lang/String;

    #v26=(Reference);
    move-object/from16 v0, v17

    #v0=(Reference);
    move-object/from16 v1, v26

    #v1=(Reference);
    move-wide/from16 v2, p1

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/emailcommon/provider/MessageMove;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v16

    .line 122
    .local v16, c:Landroid/database/Cursor;
    #v16=(Reference);
    if-nez v16, :cond_1

    .line 123
    const/16 v22, 0x0

    .line 184
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Reference);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    return-object v22

    .line 129
    :cond_1
    #v0=(Reference);v1=(Reference);v2=(LongLo);v4=(Reference);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Reference);v27=(Uninit);v28=(Uninit);v29=(Uninit);
    new-instance v23, Landroid/support/v4/util/LongSparseArray;

    #v23=(UninitRef);
    invoke-direct/range {v23 .. v23}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 131
    .local v23, movesMap:Landroid/support/v4/util/LongSparseArray;,"Landroid/support/v4/util/LongSparseArray<Lcom/android/emailcommon/provider/MessageMove;>;"
    :goto_1
    :try_start_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Conflicted);v23=(Reference);v26=(Conflicted);v27=(Conflicted);
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 132
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 133
    .local v8, id:J
    #v8=(LongLo);v9=(LongHi);
    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 134
    .local v5, messageKey:J
    #v5=(LongLo);v6=(LongHi);
    const/4 v4, 0x2

    #v4=(PosByte);
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, serverId:Ljava/lang/String;
    #v7=(Reference);
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 136
    .local v10, srcFolderKey:J
    #v10=(LongLo);v11=(LongHi);
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 137
    .local v12, dstFolderKey:J
    #v12=(LongLo);v13=(LongHi);
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, srcFolderServerId:Ljava/lang/String;
    #v14=(Reference);
    const/4 v4, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, dstFolderServerId:Ljava/lang/String;
    #v15=(Reference);
    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Lcom/android/emailcommon/provider/MessageMove;

    .line 142
    .local v18, existingMove:Lcom/android/emailcommon/provider/MessageMove;
    if-eqz v18, :cond_5

    .line 143
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mLastId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v26, v0

    #v26=(LongLo);v27=(LongHi);
    cmp-long v4, v26, v8

    #v4=(Byte);
    if-ltz v4, :cond_2

    .line 144
    const-string v4, "MessageMove"

    #v4=(Reference);
    const-string v26, "Moves were not in ascending id order"

    #v26=(Reference);
    const/16 v27, 0x0

    #v27=(Null);
    move/from16 v0, v27

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    #v1=(Reference);
    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    move-object/from16 v0, v18

    #v0=(Reference);
    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderServerId:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderKey:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v26, v0

    #v26=(LongLo);v27=(LongHi);
    cmp-long v4, v26, v10

    #v4=(Byte);
    if-eqz v4, :cond_4

    .line 148
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    const-string v4, "MessageMove"

    #v4=(Reference);
    const-string v26, "existing move\'s dst not same as this move\'s src"

    #v26=(Reference);
    const/16 v27, 0x0

    #v27=(Null);
    move/from16 v0, v27

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v27, v0

    #v27=(Reference);
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    #v1=(Reference);
    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    move-object/from16 v0, v18

    #v0=(Reference);
    iput-wide v12, v0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderKey:J

    .line 151
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderServerId:Ljava/lang/String;

    .line 152
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mLastId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 159
    .end local v5           #messageKey:J
    .end local v7           #serverId:Ljava/lang/String;
    .end local v8           #id:J
    .end local v10           #srcFolderKey:J
    .end local v12           #dstFolderKey:J
    .end local v14           #srcFolderServerId:Ljava/lang/String;
    .end local v15           #dstFolderServerId:Ljava/lang/String;
    .end local v18           #existingMove:Lcom/android/emailcommon/provider/MessageMove;
    :catchall_0
    #v0=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Conflicted);
    move-exception v4

    #v4=(Reference);
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 154
    .restart local v5       #messageKey:J
    .restart local v7       #serverId:Ljava/lang/String;
    .restart local v8       #id:J
    .restart local v10       #srcFolderKey:J
    .restart local v12       #dstFolderKey:J
    .restart local v14       #srcFolderServerId:Ljava/lang/String;
    .restart local v15       #dstFolderServerId:Ljava/lang/String;
    .restart local v18       #existingMove:Lcom/android/emailcommon/provider/MessageMove;
    :cond_5
    :try_start_1
    #v0=(Reference);v4=(PosByte);v5=(LongLo);v6=(LongHi);v7=(Reference);v8=(LongLo);v9=(LongHi);v10=(LongLo);v11=(LongHi);v12=(LongLo);v13=(LongHi);v14=(Reference);v15=(Reference);v18=(Reference);
    new-instance v4, Lcom/android/emailcommon/provider/MessageMove;

    #v4=(UninitRef);
    invoke-direct/range {v4 .. v15}, Lcom/android/emailcommon/provider/MessageMove;-><init>(JLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V

    #v4=(Reference);
    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 159
    .end local v5           #messageKey:J
    .end local v7           #serverId:Ljava/lang/String;
    .end local v8           #id:J
    .end local v10           #srcFolderKey:J
    .end local v12           #dstFolderKey:J
    .end local v14           #srcFolderServerId:Ljava/lang/String;
    .end local v15           #dstFolderServerId:Ljava/lang/String;
    .end local v18           #existingMove:Lcom/android/emailcommon/provider/MessageMove;
    :cond_6
    #v4=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Conflicted);
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 163
    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v21

    .line 164
    .local v21, moveCount:I
    #v21=(Integer);
    move/from16 v0, v21

    #v0=(Integer);
    new-array v0, v0, [J

    #v0=(Reference);
    move-object/from16 v24, v0

    .line 165
    .local v24, unmovedMessages:[J
    #v24=(Reference);
    const/16 v25, 0x0

    .line 166
    .local v25, unmovedMessagesCount:I
    #v25=(Null);
    new-instance v22, Ljava/util/ArrayList;

    #v22=(UninitRef);
    move-object/from16 v0, v22

    #v0=(UninitRef);
    move/from16 v1, v21

    #v1=(Integer);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v22, moves:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/MessageMove;>;"
    #v0=(Reference);v22=(Reference);
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v19=(Integer);v20=(Conflicted);v25=(Integer);v28=(Conflicted);v29=(Conflicted);
    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    #v4=(Integer);
    move/from16 v0, v19

    #v0=(Integer);
    if-ge v0, v4, :cond_9

    .line 168
    move-object/from16 v0, v23

    #v0=(Reference);
    move/from16 v1, v19

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    #v20=(Reference);
    check-cast v20, Lcom/android/emailcommon/provider/MessageMove;

    .line 170
    .local v20, move:Lcom/android/emailcommon/provider/MessageMove;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mServerId:Ljava/lang/String;

    #v4=(Reference);
    if-eqz v4, :cond_7

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-eqz v4, :cond_7

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageMove;->mSrcFolderKey:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v26, v0

    #v26=(LongLo);v27=(LongHi);
    move-object/from16 v0, v20

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderKey:J

    #v0=(LongLo);
    move-wide/from16 v28, v0

    #v28=(LongLo);v29=(LongHi);
    cmp-long v4, v26, v28

    #v4=(Byte);
    if-nez v4, :cond_8

    .line 172
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    move-object/from16 v0, v20

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mMessageKey:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v26, v0

    #v26=(LongLo);v27=(LongHi);
    aput-wide v26, v24, v25

    .line 173
    add-int/lit8 v25, v25, 0x1

    .line 167
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 175
    :cond_8
    #v0=(LongLo);v1=(LongHi);v4=(Byte);v28=(LongLo);v29=(LongHi);
    move-object/from16 v0, v22

    #v0=(Reference);
    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 178
    .end local v20           #move:Lcom/android/emailcommon/provider/MessageMove;
    :cond_9
    #v0=(Integer);v1=(Conflicted);v4=(Integer);v20=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    if-eqz v25, :cond_a

    .line 179
    sget-object v4, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    #v4=(Reference);
    move-object/from16 v0, v17

    #v0=(Reference);
    move-object/from16 v1, v24

    #v1=(Reference);
    move/from16 v2, v25

    #v2=(Integer);
    invoke-static {v0, v4, v1, v2}, Lcom/android/emailcommon/provider/MessageMove;->deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 181
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 182
    const/16 v22, 0x0

    #v22=(Null);
    goto/16 :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messageMove"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    return-void
.end method

.method public static upsyncFail(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .parameter "cr"
    .parameter "messageKeys"
    .parameter "count"

    .prologue
    .line 217
    sget-object v0, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageMove;->failMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 218
    return-void
.end method

.method public static upsyncRetry(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .parameter "cr"
    .parameter "messageKeys"
    .parameter "count"

    .prologue
    .line 206
    sget-object v0, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageMove;->retryMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 207
    return-void
.end method

.method public static upsyncSuccessful(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .parameter "cr"
    .parameter "messageKeys"
    .parameter "count"

    .prologue
    .line 195
    sget-object v0, Lcom/android/emailcommon/provider/MessageMove;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageMove;->deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 196
    return-void
.end method


# virtual methods
.method public final getDestFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/emailcommon/provider/MessageMove;->mDstFolderServerId:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public final getSourceFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/emailcommon/provider/MessageMove;->mSrcFolderServerId:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public final getSourceFolderKey()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/emailcommon/provider/MessageMove;->mSrcFolderKey:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method
