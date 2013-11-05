.class public Lcom/android/emailcommon/provider/MessageStateChange;
.super Lcom/android/emailcommon/provider/MessageChangeLogTable;
.source "MessageStateChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;
    }
.end annotation


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final mMailboxId:J

.field private mNewFlagFavorite:I

.field private mNewFlagRead:I

.field private final mOldFlagFavorite:I

.field private final mOldFlagRead:I


# direct methods
.method private constructor <init>(JLjava/lang/String;JIIIIJ)V
    .locals 0
    .parameter "messageKey"
    .parameter "serverId"
    .parameter "id"
    .parameter "oldFlagRead"
    .parameter "newFlagRead"
    .parameter "oldFlagFavorite"
    .parameter "newFlagFavorite"
    .parameter "mailboxId"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/emailcommon/provider/MessageChangeLogTable;-><init>(JLjava/lang/String;J)V

    .line 74
    #p0=(Reference);
    iput p6, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagRead:I

    .line 75
    iput p7, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    .line 76
    iput p8, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagFavorite:I

    .line 77
    iput p9, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    .line 78
    iput-wide p10, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mMailboxId:J

    .line 79
    return-void
.end method

.method public static convertToChangesMap(Ljava/util/List;)Landroid/support/v4/util/LongSparseArray;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;)",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, changes:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    const/4 v4, 0x0

    .line 200
    #v4=(Null);
    if-nez p0, :cond_1

    move-object v1, v4

    .line 216
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v1

    .line 204
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 205
    .local v1, changesMap:Landroid/support/v4/util/LongSparseArray;,"Landroid/support/v4/util/LongSparseArray<Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;>;"
    #v1=(Reference);
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v2=(Reference);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 206
    .local v0, change:Lcom/android/emailcommon/provider/MessageStateChange;
    iget-wide v5, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mMailboxId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v1, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/util/List;

    .line 207
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    if-nez v3, :cond_2

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    #v3=(Reference);
    iget-wide v5, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mMailboxId:J

    invoke-virtual {v1, v5, v6, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 211
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    .end local v0           #change:Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v5=(Boolean);v6=(Conflicted);
    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    #v5=(Integer);
    if-nez v5, :cond_0

    move-object v1, v4

    .line 214
    #v1=(Null);
    goto :goto_0
.end method

.method public static getChanges(Landroid/content/Context;JZ)Ljava/util/List;
    .locals 32
    .parameter "context"
    .parameter "accountId"
    .parameter "ignoreFavorites"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 115
    .local v21, cr:Landroid/content/ContentResolver;
    #v21=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    #v4=(Reference);
    sget-object v28, Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;->PROJECTION:[Ljava/lang/String;

    #v28=(Reference);
    move-object/from16 v0, v21

    #v0=(Reference);
    move-object/from16 v1, v28

    #v1=(Reference);
    move-wide/from16 v2, p1

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/emailcommon/provider/MessageStateChange;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v16

    .line 116
    .local v16, c:Landroid/database/Cursor;
    #v16=(Reference);
    if-nez v16, :cond_1

    .line 117
    const/16 v18, 0x0

    .line 191
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Reference);v19=(Conflicted);v20=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);
    return-object v18

    .line 122
    :cond_1
    #v0=(Reference);v1=(Reference);v2=(LongLo);v4=(Reference);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Reference);v29=(Uninit);v30=(Uninit);v31=(Uninit);
    new-instance v19, Landroid/support/v4/util/LongSparseArray;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 124
    .local v19, changesMap:Landroid/support/v4/util/LongSparseArray;,"Landroid/support/v4/util/LongSparseArray<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    :goto_1
    :try_start_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v19=(Reference);v22=(Conflicted);v24=(Conflicted);v25=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_a

    .line 125
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 126
    .local v8, id:J
    #v8=(LongLo);v9=(LongHi);
    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 127
    .local v5, messageKey:J
    #v5=(LongLo);v6=(LongHi);
    const/4 v4, 0x2

    #v4=(PosByte);
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, serverId:Ljava/lang/String;
    #v7=(Reference);
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 129
    .local v10, oldFlagRead:I
    #v10=(Integer);
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 130
    .local v25, newFlagReadTable:I
    #v25=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    move/from16 v0, v25

    #v0=(Integer);
    if-ne v0, v4, :cond_6

    move v11, v10

    .line 132
    .local v11, newFlagRead:I
    :goto_2
    #v11=(Integer);
    const/4 v4, 0x5

    #v4=(PosByte);
    move-object/from16 v0, v16

    #v0=(Reference);
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 134
    .local v12, oldFlagFavorite:I
    #v12=(Integer);
    const/4 v4, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 136
    .local v24, newFlagFavoriteTable:I
    #v24=(Integer);
    if-nez p3, :cond_2

    const/4 v4, -0x1

    #v4=(Byte);
    move/from16 v0, v24

    #v0=(Integer);
    if-ne v0, v4, :cond_7

    :cond_2
    #v0=(Conflicted);
    move v13, v12

    .line 139
    .local v13, newFlagFavorite:I
    :goto_3
    #v13=(Integer);
    move-object/from16 v0, v19

    #v0=(Reference);
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v22

    #v22=(Reference);
    check-cast v22, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 140
    .local v22, existingChange:Lcom/android/emailcommon/provider/MessageStateChange;
    if-eqz v22, :cond_8

    .line 141
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mLastId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v28, v0

    #v28=(LongLo);v29=(LongHi);
    cmp-long v4, v28, v8

    if-ltz v4, :cond_3

    .line 142
    const-string v4, "MessageStateChange"

    #v4=(Reference);
    const-string v28, "DChanges were not in ascending id order"

    #v28=(Reference);
    const/16 v29, 0x0

    #v29=(Null);
    move/from16 v0, v29

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v29, v0

    #v29=(Reference);
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    #v1=(Reference);
    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    move-object/from16 v0, v22

    #v0=(Reference);
    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    #v4=(Integer);
    if-ne v4, v10, :cond_4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    if-eq v4, v12, :cond_5

    .line 146
    :cond_4
    const-string v4, "MessageStateChange"

    #v4=(Reference);
    const-string v28, "existing change inconsistent with new change"

    #v28=(Reference);
    const/16 v29, 0x0

    #v29=(Null);
    move/from16 v0, v29

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v29, v0

    #v29=(Reference);
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    #v1=(Reference);
    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    :cond_5
    #v1=(Conflicted);v4=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    move-object/from16 v0, v22

    iput v11, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    .line 149
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    .line 150
    move-object/from16 v0, v22

    iput-wide v8, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mLastId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 164
    .end local v5           #messageKey:J
    .end local v7           #serverId:Ljava/lang/String;
    .end local v8           #id:J
    .end local v10           #oldFlagRead:I
    .end local v11           #newFlagRead:I
    .end local v12           #oldFlagFavorite:I
    .end local v13           #newFlagFavorite:I
    .end local v22           #existingChange:Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v24           #newFlagFavoriteTable:I
    .end local v25           #newFlagReadTable:I
    :catchall_0
    #v0=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v22=(Conflicted);v24=(Conflicted);v25=(Conflicted);
    move-exception v4

    #v4=(Reference);
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v5       #messageKey:J
    .restart local v7       #serverId:Ljava/lang/String;
    .restart local v8       #id:J
    .restart local v10       #oldFlagRead:I
    .restart local v25       #newFlagReadTable:I
    :cond_6
    #v0=(Integer);v4=(Byte);v5=(LongLo);v6=(LongHi);v7=(Reference);v8=(LongLo);v9=(LongHi);v10=(Integer);v25=(Integer);
    move/from16 v11, v25

    .line 130
    #v11=(Integer);
    goto :goto_2

    .restart local v11       #newFlagRead:I
    .restart local v12       #oldFlagFavorite:I
    .restart local v24       #newFlagFavoriteTable:I
    :cond_7
    #v12=(Integer);v24=(Integer);
    move/from16 v13, v24

    .line 136
    #v13=(Integer);
    goto :goto_3

    .line 152
    .restart local v13       #newFlagFavorite:I
    .restart local v22       #existingChange:Lcom/android/emailcommon/provider/MessageStateChange;
    :cond_8
    :try_start_1
    #v0=(Reference);v22=(Reference);
    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/MessageMove;->getLastSyncedMailboxForMessage(Landroid/content/ContentResolver;J)J

    move-result-wide v14

    .line 154
    .local v14, mailboxId:J
    #v14=(LongLo);v15=(LongHi);
    const-wide/16 v28, -0x1

    #v28=(LongLo);v29=(LongHi);
    cmp-long v4, v14, v28

    if-nez v4, :cond_9

    .line 155
    const-string v4, "MessageStateChange"

    #v4=(Reference);
    const-string v28, "No mailbox id for message %d"

    #v28=(Reference);
    const/16 v29, 0x1

    #v29=(One);
    move/from16 v0, v29

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v29, v0

    #v29=(Reference);
    const/16 v30, 0x0

    #v30=(Null);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    #v31=(Reference);
    aput-object v31, v29, v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    #v1=(Reference);
    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 157
    :cond_9
    #v1=(Conflicted);v4=(Byte);v28=(LongLo);v29=(LongHi);v30=(Conflicted);v31=(Conflicted);
    new-instance v4, Lcom/android/emailcommon/provider/MessageStateChange;

    #v4=(UninitRef);
    invoke-direct/range {v4 .. v15}, Lcom/android/emailcommon/provider/MessageStateChange;-><init>(JLjava/lang/String;JIIIIJ)V

    #v4=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 164
    .end local v5           #messageKey:J
    .end local v7           #serverId:Ljava/lang/String;
    .end local v8           #id:J
    .end local v10           #oldFlagRead:I
    .end local v11           #newFlagRead:I
    .end local v12           #oldFlagFavorite:I
    .end local v13           #newFlagFavorite:I
    .end local v14           #mailboxId:J
    .end local v22           #existingChange:Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v24           #newFlagFavoriteTable:I
    .end local v25           #newFlagReadTable:I
    :cond_a
    #v4=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v22=(Conflicted);v24=(Conflicted);v25=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 169
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v20

    .line 170
    .local v20, count:I
    #v20=(Integer);
    move/from16 v0, v20

    #v0=(Integer);
    new-array v0, v0, [J

    #v0=(Reference);
    move-object/from16 v26, v0

    .line 171
    .local v26, unchangedMessages:[J
    #v26=(Reference);
    const/16 v27, 0x0

    .line 172
    .local v27, unchangedMessagesCount:I
    #v27=(Null);
    new-instance v18, Ljava/util/ArrayList;

    #v18=(UninitRef);
    move-object/from16 v0, v18

    #v0=(UninitRef);
    move/from16 v1, v20

    #v1=(Integer);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v18, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    #v0=(Reference);v18=(Reference);
    const/16 v23, 0x0

    .local v23, i:I
    :goto_4
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v17=(Conflicted);v23=(Integer);v27=(Integer);
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    #v4=(Integer);
    move/from16 v0, v23

    #v0=(Integer);
    if-ge v0, v4, :cond_d

    .line 174
    move-object/from16 v0, v19

    #v0=(Reference);
    move/from16 v1, v23

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 176
    .local v17, change:Lcom/android/emailcommon/provider/MessageStateChange;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mServerId:Ljava/lang/String;

    #v4=(Reference);
    if-eqz v4, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-eqz v4, :cond_b

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagRead:I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    #v0=(Integer);
    move/from16 v28, v0

    #v28=(Integer);
    move/from16 v0, v28

    if-ne v4, v0, :cond_c

    move-object/from16 v0, v17

    #v0=(Reference);
    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagFavorite:I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    #v0=(Integer);
    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_c

    .line 179
    :cond_b
    #v0=(Conflicted);v4=(Conflicted);v28=(Conflicted);
    move-object/from16 v0, v17

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mMessageKey:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v28, v0

    #v28=(LongLo);v29=(LongHi);
    aput-wide v28, v26, v27

    .line 180
    add-int/lit8 v27, v27, 0x1

    .line 173
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v28=(Conflicted);v29=(Conflicted);
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 182
    :cond_c
    #v0=(Integer);v1=(Integer);v4=(Integer);v28=(Integer);
    move-object/from16 v0, v18

    #v0=(Reference);
    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 185
    .end local v17           #change:Lcom/android/emailcommon/provider/MessageStateChange;
    :cond_d
    #v0=(Integer);v1=(Conflicted);v17=(Conflicted);v28=(Conflicted);
    if-eqz v27, :cond_e

    .line 186
    sget-object v4, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    #v4=(Reference);
    move-object/from16 v0, v21

    #v0=(Reference);
    move-object/from16 v1, v26

    #v1=(Reference);
    move/from16 v2, v27

    #v2=(Integer);
    invoke-static {v0, v4, v1, v2}, Lcom/android/emailcommon/provider/MessageStateChange;->deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 188
    :cond_e
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 189
    const/16 v18, 0x0

    #v18=(Null);
    goto/16 :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messageChange"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    return-void
.end method

.method public static upsyncRetry(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .parameter "cr"
    .parameter "messageKeys"
    .parameter "count"

    .prologue
    .line 238
    sget-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageStateChange;->retryMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 239
    return-void
.end method

.method public static upsyncSuccessful(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .parameter "cr"
    .parameter "messageKeys"
    .parameter "count"

    .prologue
    .line 227
    sget-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageStateChange;->deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 228
    return-void
.end method


# virtual methods
.method public final getNewFlagFavorite()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagFavorite:I

    #v0=(Integer);
    iget v1, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    goto :goto_0
.end method

.method public final getNewFlagRead()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagRead:I

    #v0=(Integer);
    iget v1, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    goto :goto_0
.end method
