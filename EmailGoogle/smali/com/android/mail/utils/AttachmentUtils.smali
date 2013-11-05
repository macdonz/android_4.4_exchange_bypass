.class public Lcom/android/mail/utils/AttachmentUtils;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDisplayNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static cacheAttachmentUri(Landroid/content/Context;Lcom/android/mail/providers/Attachment;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 26
    .parameter "context"
    .parameter "attachment"
    .parameter "attachmentFds"

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 176
    .local v4, cacheDir:Ljava/io/File;
    #v4=(Reference);
    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v17

    .line 177
    .local v17, totalSpace:J
    #v17=(LongLo);v18=(LongHi);
    move-object/from16 v0, p1

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/providers/Attachment;->size:I

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    if-lez v21, :cond_1

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v21

    #v21=(LongLo);v22=(LongHi);
    move-object/from16 v0, p1

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/providers/Attachment;->size:I

    #v0=(Integer);
    move/from16 v23, v0

    #v23=(Integer);
    move/from16 v0, v23

    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v23, v0

    #v23=(LongLo);v24=(LongHi);
    sub-long v19, v21, v23

    .line 179
    .local v19, usableSpace:J
    #v19=(LongLo);v20=(LongHi);
    invoke-static/range {v17 .. v20}, Lcom/android/mail/utils/AttachmentUtils;->isLowSpace(JJ)Z

    move-result v21

    #v21=(Boolean);
    if-eqz v21, :cond_1

    .line 180
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    #v21=(Reference);
    const-string v22, "Low memory (%d/%d). Can\'t cache attachment %s"

    #v22=(Reference);
    const/16 v23, 0x3

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    #v25=(Reference);
    aput-object v25, v23, v24

    const/16 v24, 0x1

    #v24=(One);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    #v24=(PosByte);
    aput-object p1, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    const/4 v5, 0x0

    .line 254
    .end local v19           #usableSpace:J
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v25=(Conflicted);
    return-object v5

    .line 185
    :cond_1
    #v0=(Conflicted);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v21=(Integer);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Uninit);
    const/4 v10, 0x0

    .line 186
    .local v10, inputStream:Ljava/io/InputStream;
    #v10=(Null);
    const/4 v15, 0x0

    .line 187
    .local v15, outputStream:Ljava/io/FileOutputStream;
    #v15=(Null);
    const/4 v8, 0x0

    .line 189
    .local v8, file:Ljava/io/File;
    :try_start_0
    #v8=(Null);
    new-instance v6, Ljava/text/SimpleDateFormat;

    #v6=(UninitRef);
    const-string v21, "yyyy-MM-dd-kk:mm:ss"

    #v21=(Reference);
    move-object/from16 v0, v21

    #v0=(Reference);
    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, dateFormat:Ljava/text/SimpleDateFormat;
    #v6=(Reference);
    new-instance v21, Ljava/util/Date;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    #v21=(Reference);
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ".attachment"

    #v22=(Reference);
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    #v1=(Reference);
    invoke-static {v0, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 191
    #v8=(Reference);
    if-eqz p2, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v9, v21

    .line 195
    .local v9, fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :goto_1
    #v9=(Reference);
    if-eqz v9, :cond_6

    .line 197
    new-instance v11, Ljava/io/FileInputStream;

    #v11=(UninitRef);
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v10           #inputStream:Ljava/io/InputStream;
    .local v11, inputStream:Ljava/io/InputStream;
    #v11=(Reference);
    move-object v10, v11

    .line 209
    .end local v11           #inputStream:Ljava/io/InputStream;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    :goto_2
    #v10=(Reference);v11=(Conflicted);
    new-instance v16, Ljava/io/FileOutputStream;

    #v16=(UninitRef);
    move-object/from16 v0, v16

    #v0=(UninitRef);
    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    .local v16, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    #v0=(Reference);v16=(Reference);
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 211
    .local v13, now:J
    #v13=(LongLo);v14=(LongHi);
    const/16 v21, 0x400

    #v21=(PosShort);
    move/from16 v0, v21

    #v0=(PosShort);
    new-array v3, v0, [B

    .line 213
    .local v3, bytes:[B
    :cond_2
    #v0=(Conflicted);v3=(Reference);v12=(Conflicted);v21=(Short);v22=(Conflicted);
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 214
    .local v12, len:I
    #v12=(Integer);
    if-gtz v12, :cond_a

    .line 222
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 223
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, cachedFileUri:Ljava/lang/String;
    #v5=(Reference);
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    #v21=(Reference);
    const-string v22, "Cached %s to %s"

    #v22=(Reference);
    const/16 v23, 0x2

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    #v25=(Reference);
    aput-object v25, v23, v24

    const/16 v24, 0x1

    #v24=(One);
    aput-object v5, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 226
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v19

    .line 227
    .restart local v19       #usableSpace:J
    #v19=(LongLo);v20=(LongHi);
    invoke-static/range {v17 .. v20}, Lcom/android/mail/utils/AttachmentUtils;->isLowSpace(JJ)Z

    move-result v21

    #v21=(Boolean);
    if-eqz v21, :cond_3

    .line 228
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 229
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    #v21=(Reference);
    const-string v22, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/16 v23, 0x3

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    #v24=(One);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    #v24=(PosByte);
    aput-object p1, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 231
    const/4 v5, 0x0

    .line 246
    :cond_3
    #v21=(Conflicted);
    if-eqz v10, :cond_4

    .line 247
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 249
    :cond_4
    if-eqz v16, :cond_0

    .line 250
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v7

    .line 253
    .local v7, e:Ljava/io/IOException;
    #v7=(Reference);
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    #v21=(Reference);
    const-string v22, "Failed to close stream"

    const/16 v23, 0x0

    #v23=(Null);
    move/from16 v0, v23

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    #v2=(Reference);
    invoke-static {v0, v7, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 191
    .end local v3           #bytes:[B
    .end local v5           #cachedFileUri:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #fileDescriptor:Landroid/os/ParcelFileDescriptor;
    .end local v12           #len:I
    .end local v13           #now:J
    .end local v16           #outputStream:Ljava/io/FileOutputStream;
    .end local v19           #usableSpace:J
    .restart local v15       #outputStream:Ljava/io/FileOutputStream;
    :cond_5
    #v2=(Uninit);v3=(Uninit);v5=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Null);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v19=(Conflicted);v20=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    goto/16 :goto_1

    .line 199
    .restart local v9       #fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_6
    :try_start_3
    #v9=(Reference);
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 203
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string v22, "contentUri is null in attachment: %s"

    const/16 v23, 0x1

    #v23=(One);
    move/from16 v0, v23

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    aput-object p1, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    new-instance v21, Ljava/io/FileNotFoundException;

    #v21=(UninitRef);
    const-string v22, "Missing contentUri in attachment"

    invoke-direct/range {v21 .. v22}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #v21=(Reference);
    throw v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 235
    .end local v6           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v9           #fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v9=(Conflicted);v10=(Reference);v11=(Conflicted);v16=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);
    move-exception v7

    .line 239
    .restart local v7       #e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    #v3=(Conflicted);v5=(Conflicted);v7=(Reference);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Reference);v25=(Conflicted);
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    #v21=(Reference);
    const-string v22, "Failed to cache attachment %s"

    #v22=(Reference);
    const/16 v23, 0x1

    #v23=(One);
    move/from16 v0, v23

    #v0=(One);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    aput-object p1, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    #v1=(Reference);
    move-object/from16 v2, v23

    #v2=(Reference);
    invoke-static {v0, v7, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    if-eqz v8, :cond_7

    .line 241
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :cond_7
    const/4 v5, 0x0

    .line 246
    #v5=(Null);
    if-eqz v10, :cond_8

    .line 247
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 249
    :cond_8
    if-eqz v15, :cond_0

    .line 250
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 252
    :catch_2
    move-exception v7

    .line 253
    sget-object v21, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string v22, "Failed to close stream"

    const/16 v23, 0x0

    #v23=(Null);
    move/from16 v0, v23

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v23, v0

    #v23=(Reference);
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 207
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v9       #fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_9
    :try_start_6
    #v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Reference);v7=(Uninit);v9=(Reference);v10=(Null);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Null);v16=(Uninit);v23=(Conflicted);v24=(Conflicted);v25=(Uninit);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v10

    #v10=(Reference);
    goto/16 :goto_2

    .line 217
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #bytes:[B
    .restart local v12       #len:I
    .restart local v13       #now:J
    .restart local v16       #outputStream:Ljava/io/FileOutputStream;
    :cond_a
    #v0=(Conflicted);v3=(Reference);v11=(Conflicted);v12=(Integer);v13=(LongLo);v14=(LongHi);v16=(Reference);v21=(Short);v22=(Conflicted);
    const/16 v21, 0x0

    :try_start_7
    #v21=(Null);
    move-object/from16 v0, v16

    #v0=(Reference);
    move/from16 v1, v21

    #v1=(Null);
    invoke-virtual {v0, v3, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    #v21=(LongLo);v22=(LongHi);
    sub-long v21, v21, v13

    const-wide/32 v23, 0x36ee80

    #v23=(LongLo);v24=(LongHi);
    cmp-long v21, v21, v23

    #v21=(Byte);
    if-lez v21, :cond_2

    .line 219
    new-instance v21, Ljava/io/IOException;

    #v21=(UninitRef);
    const-string v22, "Timed out reading attachment data"

    #v22=(Reference);
    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v21=(Reference);
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 235
    .end local v3           #bytes:[B
    .end local v12           #len:I
    .end local v13           #now:J
    :catch_3
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);v5=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);
    move-exception v7

    #v7=(Reference);
    move-object/from16 v15, v16

    .end local v16           #outputStream:Ljava/io/FileOutputStream;
    .restart local v15       #outputStream:Ljava/io/FileOutputStream;
    #v15=(Reference);
    goto :goto_3

    .line 245
    .end local v6           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v9           #fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v16=(Conflicted);
    move-exception v21

    .line 246
    :goto_4
    #v21=(Reference);
    if-eqz v10, :cond_b

    .line 247
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 249
    :cond_b
    if-eqz v15, :cond_c

    .line 250
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 254
    :cond_c
    :goto_5
    throw v21

    .line 252
    :catch_4
    move-exception v7

    .line 253
    .restart local v7       #e:Ljava/io/IOException;
    #v7=(Reference);
    sget-object v22, Lcom/android/mail/utils/AttachmentUtils;->LOG_TAG:Ljava/lang/String;

    #v22=(Reference);
    const-string v23, "Failed to close stream"

    #v23=(Reference);
    const/16 v24, 0x0

    #v24=(Null);
    move/from16 v0, v24

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v24, v0

    #v24=(Reference);
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    #v1=(Reference);
    move-object/from16 v2, v24

    #v2=(Reference);
    invoke-static {v0, v7, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    .line 245
    .end local v7           #e:Ljava/io/IOException;
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    .restart local v6       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v9       #fileDescriptor:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    #v0=(Conflicted);v2=(Uninit);v6=(Reference);v7=(Uninit);v9=(Reference);v15=(Null);v16=(Reference);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);
    move-exception v21

    #v21=(Reference);
    move-object/from16 v15, v16

    .end local v16           #outputStream:Ljava/io/FileOutputStream;
    .restart local v15       #outputStream:Ljava/io/FileOutputStream;
    #v15=(Reference);
    goto :goto_4
.end method

.method public static canDownloadAttachment(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Z
    .locals 9
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 274
    #v3=(Null);
    const-string v5, "connectivity"

    #v5=(Reference);
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 276
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 277
    .local v1, info:Landroid/net/NetworkInfo;
    #v1=(Reference);
    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v3

    .line 279
    :cond_1
    #v2=(Uninit);v3=(Null);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 280
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    #v5=(Integer);
    if-eqz v5, :cond_2

    move v3, v4

    .line 282
    #v3=(One);
    goto :goto_0

    .line 285
    :cond_2
    #v3=(Null);
    invoke-static {p0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    .line 286
    .local v2, maxBytes:Ljava/lang/Long;
    #v2=(Reference);
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    iget v5, p1, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-gtz v5, :cond_0

    :cond_3
    #v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move v3, v4

    #v3=(One);
    goto :goto_0
.end method

.method public static convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "size"

    .prologue
    const-wide/16 v6, 0x400

    #v6=(LongLo);v7=(LongHi);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 67
    #v4=(Null);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, p1, v2

    #v2=(Byte);
    if-nez v2, :cond_0

    .line 68
    const-string v2, ""

    .line 78
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    return-object v2

    .line 69
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Byte);v3=(LongHi);
    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, count:Ljava/lang/String;
    #v0=(Reference);
    const v2, 0x7f0a0069

    #v2=(Integer);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    goto :goto_0

    .line 72
    .end local v0           #count:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v2=(Byte);v3=(LongHi);
    const-wide/32 v2, 0x100000

    #v2=(LongLo);
    cmp-long v2, p1, v2

    #v2=(Byte);
    if-gez v2, :cond_2

    .line 73
    div-long v2, p1, v6

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #count:Ljava/lang/String;
    #v0=(Reference);
    const v2, 0x7f0a006a

    #v2=(Integer);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    goto :goto_0

    .line 76
    .end local v0           #count:Ljava/lang/String;
    :cond_2
    #v0=(Uninit);v2=(Byte);v3=(LongHi);
    new-instance v1, Ljava/text/DecimalFormat;

    #v1=(UninitRef);
    const-string v2, "0.#"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, onePlace:Ljava/text/DecimalFormat;
    #v1=(Reference);
    long-to-float v2, p1

    #v2=(Float);
    const/high16 v3, 0x4980

    #v3=(Integer);
    div-float/2addr v2, v3

    float-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0       #count:Ljava/lang/String;
    #v0=(Reference);
    const v2, 0x7f0a006b

    #v2=(Integer);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    goto :goto_0
.end method

.method public static getDisplayType(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v6, 0x1

    .line 89
    #v6=(One);
    iget v4, p1, Lcom/android/mail/providers/Attachment;->flags:I

    #v4=(Integer);
    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 115
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v1

    .line 97
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Uninit);v6=(One);
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, contentType:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/mail/utils/AttachmentUtils;->getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, displayType:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_4

    const/16 v4, 0x2f

    #v4=(PosByte);
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 100
    .local v3, index:I
    :goto_1
    #v3=(Integer);
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 101
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-static {p0, v4}, Lcom/android/mail/utils/AttachmentUtils;->getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_2
    #v4=(Conflicted);
    if-nez v1, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/utils/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, extension:Ljava/lang/String;
    #v2=(Reference);
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-le v4, v6, :cond_3

    const/16 v4, 0x2e

    #v4=(PosByte);
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    #v4=(Integer);
    if-nez v4, :cond_3

    .line 107
    const v4, 0x7f0a0074

    new-array v5, v6, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .end local v2           #extension:Ljava/lang/String;
    :cond_3
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-nez v1, :cond_0

    .line 113
    const-string v1, ""

    goto :goto_0

    .line 99
    .end local v3           #index:I
    :cond_4
    #v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(One);
    const/4 v3, -0x1

    #v3=(Byte);
    goto :goto_1
.end method

.method public static declared-synchronized getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "type"

    .prologue
    .line 127
    const-class v4, Lcom/android/mail/utils/AttachmentUtils;

    #v4=(Reference);
    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/mail/utils/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    #v3=(Reference);
    if-nez v3, :cond_0

    .line 128
    const v3, 0x7f0a0070

    #v3=(Integer);
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, docName:Ljava/lang/String;
    #v0=(Reference);
    const v3, 0x7f0a0071

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, presoName:Ljava/lang/String;
    #v1=(Reference);
    const v3, 0x7f0a0072

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, sheetName:Ljava/lang/String;
    #v2=(Reference);
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder;

    #v3=(UninitRef);
    invoke-direct {v3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    #v3=(Reference);
    const-string v5, "image"

    #v5=(Reference);
    const v6, 0x7f0a006c

    #v6=(Integer);
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "audio"

    const v6, 0x7f0a006e

    #v6=(Integer);
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "video"

    const v6, 0x7f0a006d

    #v6=(Integer);
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "text"

    const v6, 0x7f0a006f

    #v6=(Integer);
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/pdf"

    const v6, 0x7f0a0073

    #v6=(Integer);
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/msword"

    invoke-virtual {v3, v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v3, v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.ms-powerpoint"

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.ms-excel"

    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    sput-object v3, Lcom/android/mail/utils/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    .line 157
    .end local v0           #docName:Ljava/lang/String;
    .end local v1           #presoName:Ljava/lang/String;
    .end local v2           #sheetName:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    sget-object v3, Lcom/android/mail/utils/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 127
    :catchall_0
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit v4

    throw v3
.end method

.method private static isLowSpace(JJ)Z
    .locals 3
    .parameter "totalSpace"
    .parameter "usableSpace"

    .prologue
    .line 262
    long-to-float v0, p2

    #v0=(Float);
    long-to-float v1, p0

    #v1=(Float);
    const/high16 v2, 0x3e80

    #v2=(Integer);
    mul-float/2addr v1, v2

    const/high16 v2, 0x4cc8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    #v0=(Byte);
    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
