.class public Lcom/android/mail/SenderInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SenderInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/mail/ContactInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DATA_COLS:[Ljava/lang/String;

.field private static final PHOTO_COLS:[Ljava/lang/String;


# instance fields
.field private final mSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 50
    #v3=(Null);
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    #v1=(PosByte);
    const-string v2, "contact_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/SenderInfoLoader;->DATA_COLS:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "data15"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mail/SenderInfoLoader;->PHOTO_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, senders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 76
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    .line 77
    return-void
.end method

.method static appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V
    .locals 4
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v0, 0x1

    .line 231
    .local v0, first:Z
    #v0=(One);
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Boolean);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, item:Ljava/lang/Object;
    #v2=(Reference);
    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 237
    :goto_1
    #v3=(PosByte);
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    :cond_0
    #v3=(Boolean);
    const/16 v3, 0x2c

    #v3=(PosByte);
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 239
    .end local v2           #item:Ljava/lang/Object;
    :cond_1
    #v2=(Conflicted);v3=(Boolean);
    return-void
.end method

.method static getTruncatedQueryParams(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, params:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    #v5=(Integer);
    const/16 v6, 0x4b

    #v6=(PosByte);
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 211
    .local v4, truncatedLen:I
    #v4=(Integer);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v3, truncated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v3=(Reference);
    const/4 v0, 0x0

    .line 214
    .local v0, copied:I
    #v0=(Null);
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Integer);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, param:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 217
    if-lt v0, v4, :cond_0

    .line 222
    .end local v2           #param:Ljava/lang/String;
    :cond_1
    #v2=(Conflicted);
    return-object v3
.end method

.method public static loadContactPhotos(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;
    .locals 27
    .parameter "resolver"
    .parameter
    .parameter "decodeBitmaps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, senderSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 114
    .local v11, cursor:Landroid/database/Cursor;
    #v11=(Null);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v24

    .line 117
    .local v24, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;"
    #v24=(Reference);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v18

    .line 118
    .local v18, photoIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Landroid/util/Pair<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;>;"
    #v18=(Reference);
    new-instance v19, Ljava/util/ArrayList;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v19, photoIdsAsStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v19=(Reference);
    invoke-static/range {p1 .. p1}, Lcom/android/mail/SenderInfoLoader;->getTruncatedQueryParams(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v25

    .line 122
    .local v25, senders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v25=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "mimetype"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 125
    .local v22, query:Ljava/lang/StringBuilder;
    #v22=(Reference);
    move-object/from16 v0, v22

    #v0=(Reference);
    move-object/from16 v1, v25

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/SenderInfoLoader;->appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 126
    const/16 v2, 0x29

    #v2=(PosByte);
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/SenderInfoLoader;->DATA_COLS:[Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static/range {v25 .. v25}, Lcom/android/mail/SenderInfoLoader;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v2, p0

    #v2=(Reference);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 132
    #v11=(Reference);
    if-nez v11, :cond_1

    .line 133
    const/4 v2, 0x0

    .line 201
    #v2=(Null);
    if-eqz v11, :cond_0

    .line 202
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    :goto_0
    #v2=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v26=(Conflicted);
    return-object v2

    .line 136
    :cond_1
    #v8=(Uninit);v9=(Uninit);v10=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);v26=(Uninit);
    const/4 v13, -0x1

    .line 137
    .local v13, i:I
    :goto_1
    #v2=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Integer);v16=(Conflicted);v17=(Conflicted);v23=(Conflicted);v26=(Conflicted);
    add-int/lit8 v13, v13, 0x1

    :try_start_1
    invoke-interface {v11, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 138
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, email:Ljava/lang/String;
    #v12=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 140
    .local v8, contactId:J
    #v8=(LongLo);v9=(LongHi);
    const/16 v26, 0x0

    .line 141
    .local v26, status:Ljava/lang/Integer;
    #v26=(Null);
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 143
    .local v10, contactUri:Landroid/net/Uri;
    #v10=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 144
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 147
    :cond_2
    #v26=(Reference);
    new-instance v23, Lcom/android/mail/ContactInfo;

    #v23=(UninitRef);
    move-object/from16 v0, v23

    #v0=(UninitRef);
    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/android/mail/ContactInfo;-><init>(Landroid/net/Uri;Ljava/lang/Integer;)V

    .line 149
    .local v23, result:Lcom/android/mail/ContactInfo;
    #v0=(Reference);v23=(Reference);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 150
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 151
    .local v16, photoId:J
    #v16=(LongLo);v17=(LongHi);
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v16           #photoId:J
    :cond_3
    #v2=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    .end local v8           #contactId:J
    .end local v10           #contactUri:Landroid/net/Uri;
    .end local v12           #email:Ljava/lang/String;
    .end local v13           #i:I
    .end local v23           #result:Lcom/android/mail/ContactInfo;
    .end local v26           #status:Ljava/lang/Integer;
    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v26=(Conflicted);
    move-exception v2

    #v2=(Reference);
    if-eqz v11, :cond_4

    .line 202
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 156
    .restart local v13       #i:I
    :cond_5
    :try_start_2
    #v0=(Reference);v2=(Boolean);v3=(Reference);v4=(Reference);v5=(Reference);v6=(Reference);v7=(Null);v13=(Integer);v14=(Uninit);v15=(Uninit);v20=(Uninit);v21=(Uninit);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 158
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    invoke-static/range {v24 .. v24}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 201
    #v2=(Reference);
    if-eqz v11, :cond_0

    .line 202
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 164
    :cond_6
    :try_start_3
    #v2=(Boolean);
    invoke-static/range {v19 .. v19}, Lcom/android/mail/SenderInfoLoader;->getTruncatedQueryParams(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v19

    .line 165
    const/4 v2, 0x0

    #v2=(Null);
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    const-string v2, "_id"

    #v2=(Reference);
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mail/SenderInfoLoader;->appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 168
    const/16 v2, 0x29

    #v2=(PosByte);
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/SenderInfoLoader;->PHOTO_COLS:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Lcom/android/mail/SenderInfoLoader;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    #v2=(Reference);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 173
    if-nez v11, :cond_7

    .line 174
    invoke-static/range {v24 .. v24}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 201
    if-eqz v11, :cond_0

    .line 202
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 177
    :cond_7
    const/4 v13, -0x1

    .line 178
    :cond_8
    :goto_2
    #v2=(Conflicted);v14=(Conflicted);v15=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    add-int/lit8 v13, v13, 0x1

    :try_start_4
    invoke-interface {v11, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_a

    .line 179
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 180
    .local v15, photoBytes:[B
    #v15=(Reference);
    if-eqz v15, :cond_8

    .line 184
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 185
    .restart local v16       #photoId:J
    #v16=(LongLo);v17=(LongHi);
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    #v20=(Reference);
    check-cast v20, Landroid/util/Pair;

    .line 186
    .local v20, prev:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;"
    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #v12=(Reference);
    check-cast v12, Ljava/lang/String;

    .line 187
    .restart local v12       #email:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    #v21=(Reference);
    check-cast v21, Lcom/android/mail/ContactInfo;

    .line 189
    .local v21, prevResult:Lcom/android/mail/ContactInfo;
    if-eqz p2, :cond_9

    .line 190
    const/4 v2, 0x0

    #v2=(Null);
    array-length v3, v15

    #v3=(Integer);
    invoke-static {v15, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 192
    .local v14, photo:Landroid/graphics/Bitmap;
    #v14=(Reference);
    new-instance v2, Lcom/android/mail/ContactInfo;

    #v2=(UninitRef);
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/mail/ContactInfo;->contactUri:Landroid/net/Uri;

    #v3=(Reference);
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/mail/ContactInfo;->status:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v14}, Lcom/android/mail/ContactInfo;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    #v2=(Reference);
    move-object/from16 v0, v24

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 196
    .end local v14           #photo:Landroid/graphics/Bitmap;
    :cond_9
    #v14=(Conflicted);
    new-instance v2, Lcom/android/mail/ContactInfo;

    #v2=(UninitRef);
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/mail/ContactInfo;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/mail/ContactInfo;->status:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v15}, Lcom/android/mail/ContactInfo;-><init>(Landroid/net/Uri;Ljava/lang/Integer;[B)V

    #v2=(Reference);
    move-object/from16 v0, v24

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 201
    .end local v12           #email:Ljava/lang/String;
    .end local v15           #photoBytes:[B
    .end local v16           #photoId:J
    .end local v20           #prev:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;"
    .end local v21           #prevResult:Lcom/android/mail/ContactInfo;
    :cond_a
    #v2=(Boolean);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    if-eqz v11, :cond_b

    .line 202
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_b
    invoke-static/range {v24 .. v24}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    #v2=(Reference);
    goto/16 :goto_0
.end method

.method private static toStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    #v0=(Integer);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 92
    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    .line 95
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/SenderInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v0, v1, v2}, Lcom/android/mail/SenderInfoLoader;->loadContactPhotos(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/mail/SenderInfoLoader;->loadInBackground()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/mail/SenderInfoLoader;->forceLoad()V

    .line 82
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/mail/SenderInfoLoader;->cancelLoad()Z

    .line 87
    return-void
.end method
