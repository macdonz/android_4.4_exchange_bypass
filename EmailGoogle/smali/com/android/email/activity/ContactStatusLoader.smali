.class public Lcom/android/email/activity/ContactStatusLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ContactStatusLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final PHOTO_PROJECTION:[Ljava/lang/String; = null

.field static final PRESENCE_UNKNOWN_RESOURCE_ID:I = 0x108006a
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEmailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 45
    #v2=(Null);
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "photo_id"

    #v1=(Reference);
    aput-object v1, v0, v2

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader;->PHOTO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;
    .locals 21
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    .line 105
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, uri:Landroid/net/Uri;
    #v3=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/activity/ContactStatusLoader;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 109
    .local v12, c:Landroid/database/Cursor;
    #v12=(Reference);
    if-nez v12, :cond_0

    .line 110
    sget-object v2, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;

    .line 144
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return-object v2

    .line 115
    :cond_0
    :try_start_0
    #v0=(Uninit);v1=(Uninit);v4=(Reference);v5=(Null);v6=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 116
    sget-object v2, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    #v2=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 118
    :cond_1
    #v2=(Boolean);
    const/4 v2, 0x0

    :try_start_1
    #v2=(Null);
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 119
    .local v17, photoId:J
    #v17=(LongLo);v18=(LongHi);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 121
    .local v19, presenceStatus:I
    #v19=(Integer);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 125
    invoke-static/range {v19 .. v19}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v20

    .line 128
    .local v20, presenceStatusResId:I
    #v20=(Integer);
    const/4 v15, 0x0

    .line 129
    .local v15, photo:Landroid/graphics/Bitmap;
    #v15=(Null);
    const-wide/16 v4, -0x1

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v17, v4

    #v2=(Byte);
    if-eqz v2, :cond_2

    .line 130
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    move-wide/from16 v0, v17

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    #v5=(Reference);
    sget-object v6, Lcom/android/email/activity/ContactStatusLoader;->PHOTO_PROJECTION:[Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    const/4 v11, 0x0

    #v11=(Null);
    move-object/from16 v4, p0

    #v4=(Reference);
    invoke-static/range {v4 .. v11}, Lcom/android/emailcommon/utility/Utility;->getFirstRowBlob(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[B)[B

    move-result-object v16

    .line 133
    .local v16, photoData:[B
    #v16=(Reference);
    if-eqz v16, :cond_2

    .line 135
    const/4 v2, 0x0

    :try_start_2
    #v2=(Null);
    move-object/from16 v0, v16

    #v0=(Reference);
    array-length v4, v0

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, v16

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .line 143
    .end local v16           #photoData:[B
    :cond_2
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v15=(Reference);v16=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 144
    .local v14, lookupUri:Landroid/net/Uri;
    #v14=(Reference);
    new-instance v2, Lcom/android/email/activity/ContactStatusLoader$Result;

    #v2=(UninitRef);
    move/from16 v0, v20

    #v0=(Integer);
    invoke-direct {v2, v15, v0, v14}, Lcom/android/email/activity/ContactStatusLoader$Result;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    #v2=(Reference);
    goto :goto_0

    .line 121
    .end local v14           #lookupUri:Landroid/net/Uri;
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v17           #photoId:J
    .end local v19           #presenceStatus:I
    .end local v20           #presenceStatusResId:I
    :catchall_0
    #v0=(Uninit);v1=(Uninit);v2=(Conflicted);v4=(Reference);v5=(Null);v6=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Conflicted);v18=(Conflicted);v19=(Uninit);v20=(Uninit);
    move-exception v2

    #v2=(Reference);
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 136
    .restart local v15       #photo:Landroid/graphics/Bitmap;
    .restart local v16       #photoData:[B
    .restart local v17       #photoId:J
    .restart local v19       #presenceStatus:I
    .restart local v20       #presenceStatusResId:I
    :catch_0
    #v0=(Reference);v1=(LongHi);v2=(Null);v4=(Conflicted);v5=(Reference);v6=(Reference);v8=(Null);v9=(Null);v10=(Null);v11=(Null);v15=(Null);v16=(Reference);v17=(LongLo);v18=(LongHi);v19=(Integer);v20=(Integer);
    move-exception v13

    .line 137
    .local v13, e:Ljava/lang/OutOfMemoryError;
    #v13=(Reference);
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Decoding bitmap failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/activity/ContactStatusLoader$Result;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/activity/ContactStatusLoader;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/ContactStatusLoader;->mEmailAddress:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/email/activity/ContactStatusLoader;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->loadInBackground()Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->stopLoading()V

    .line 161
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->cancelLoad()Z

    .line 150
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->forceLoad()V

    .line 151
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->cancelLoad()Z

    .line 156
    return-void
.end method
