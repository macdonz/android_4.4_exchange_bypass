.class public Lcom/android/mail/providers/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private contentType:Ljava/lang/String;

.field public contentUri:Landroid/net/Uri;

.field public destination:I

.field public downloadedSize:I

.field public flags:I

.field private inferredContentType:Ljava/lang/String;

.field private transient mIdentifierUri:Landroid/net/Uri;

.field private name:Ljava/lang/String;

.field public partId:Ljava/lang/String;

.field public previewIntentUri:Landroid/net/Uri;

.field public providerData:Ljava/lang/String;

.field public size:I

.field public state:I

.field private supportsDownloadAgain:Z

.field public thumbnailUri:Landroid/net/Uri;

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    .line 698
    new-instance v0, Lcom/android/mail/providers/Attachment$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Attachment$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    #p0=(Reference);
    const-string v0, "_display_name"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 290
    const-string v0, "_size"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 291
    const-string v0, "uri"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 292
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 293
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 294
    const-string v0, "destination"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->destination:I

    .line 295
    const-string v0, "downloadedSize"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    .line 296
    const-string v0, "contentUri"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 297
    const-string v0, "thumbnailUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 298
    const-string v0, "previewIntentUri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 300
    const-string v0, "providerData"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 301
    const-string v0, "supportsDownloadAgain"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 302
    const-string v0, "type"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 303
    const-string v0, "flags"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "part"
    .parameter "emlFileUri"
    .parameter "messageId"
    .parameter "partId"

    .prologue
    const/4 v9, 0x0

    .line 237
    #v9=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    :try_start_0
    #p0=(Reference);
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, contentTypeHeader:Ljava/lang/String;
    #v1=(Reference);
    const-string v6, "name"

    invoke-static {v1, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 242
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 243
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, contentDisposition:Ljava/lang/String;
    #v0=(Reference);
    const-string v6, "filename"

    invoke-static {v0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 248
    .end local v0           #contentDisposition:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-static {v6, v7}, Lcom/android/mail/utils/MimeType;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 249
    invoke-static {p3, p4, p5}, Lcom/android/mail/providers/EmlAttachmentProvider;->getAttachmentUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 250
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 251
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 252
    const/4 v6, 0x0

    #v6=(Null);
    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 253
    const/4 v6, 0x3

    #v6=(PosByte);
    iput v6, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 254
    const/4 v6, 0x0

    #v6=(Null);
    iput-object v6, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 255
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 256
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mail/providers/Attachment;->destination:I

    .line 257
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 258
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 262
    .local v5, resolver:Landroid/content/ContentResolver;
    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    :try_start_1
    invoke-interface {p2}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 267
    .local v3, in:Ljava/io/InputStream;
    #v3=(Reference);
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    const-string v7, "rwt"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    .line 268
    .local v4, out:Ljava/io/OutputStream;
    #v4=(Reference);
    invoke-static {v3, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 269
    iget v6, p0, Lcom/android/mail/providers/Attachment;->size:I

    iput v6, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    .line 270
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 271
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    iget-object v6, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 282
    .end local v1           #contentTypeHeader:Ljava/lang/String;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :goto_1
    #v1=(Conflicted);v5=(Conflicted);
    return-void

    .line 272
    .restart local v1       #contentTypeHeader:Ljava/lang/String;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :catch_0
    #v1=(Reference);v2=(Uninit);v5=(Reference);v6=(Conflicted);v8=(Uninit);
    move-exception v2

    .line 273
    .local v2, e:Ljava/io/FileNotFoundException;
    #v2=(Reference);
    sget-object v6, Lcom/android/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Error in writing attachment to cache"

    const/4 v8, 0x0

    #v8=(Null);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v2, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 279
    .end local v1           #contentTypeHeader:Ljava/lang/String;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :catch_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v2

    .line 280
    .local v2, e:Lcom/android/emailcommon/mail/MessagingException;
    #v2=(Reference);
    sget-object v6, Lcom/android/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Error parsing eml attachment"

    #v7=(Reference);
    new-array v8, v9, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v2, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 274
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #contentTypeHeader:Ljava/lang/String;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :catch_2
    #v1=(Reference);v2=(Uninit);v5=(Reference);v6=(Conflicted);v8=(Uninit);
    move-exception v2

    .line 275
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    #v2=(Reference);
    sget-object v6, Lcom/android/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Error in writing attachment to cache"

    const/4 v8, 0x0

    #v8=(Null);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v2, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 192
    #v0=(One);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    #p0=(Reference);
    if-nez p1, :cond_0

    .line 215
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return-void

    .line 197
    :cond_0
    #v0=(One);v1=(Uninit);
    const-string v1, "_display_name"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 198
    const-string v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 199
    const-string v1, "uri"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 200
    const-string v1, "contentType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 201
    const-string v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 202
    const-string v1, "destination"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->destination:I

    .line 203
    const-string v1, "downloadedSize"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    .line 204
    const-string v1, "contentUri"

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 206
    const-string v1, "thumbnailUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 208
    const-string v1, "previewIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 210
    const-string v1, "providerData"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 211
    const-string v1, "supportsDownloadAgain"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 213
    const-string v0, "type"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 214
    const-string v0, "flags"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    goto/16 :goto_0

    .line 211
    :cond_1
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 175
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 178
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->destination:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    .line 183
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 185
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 190
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "srcJson"

    .prologue
    const/4 v1, 0x0

    .line 217
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 218
    #p0=(Reference);
    const-string v0, "_display_name"

    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 219
    const-string v0, "_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    .line 220
    const-string v0, "uri"

    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 221
    const-string v0, "contentType"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 222
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    .line 223
    const-string v0, "destination"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->destination:I

    .line 224
    const-string v0, "downloadedSize"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    .line 225
    const-string v0, "contentUri"

    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 226
    const-string v0, "thumbnailUri"

    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 227
    const-string v0, "previewIntentUri"

    invoke-static {p1, v0}, Lcom/android/mail/providers/Attachment;->parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    .line 228
    const-string v0, "providerData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    .line 229
    const-string v0, "supportsDownloadAgain"

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    .line 230
    const-string v0, "type"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    .line 231
    const-string v0, "flags"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Attachment;->flags:I

    .line 232
    return-void
.end method

.method public static fromJSONArray(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "jsonArrayStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 617
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Attachment;>;"
    #v3=(Reference);
    if-eqz p0, :cond_0

    .line 619
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, arr:Lorg/json/JSONArray;
    #v0=(Reference);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    #v4=(Integer);
    if-ge v2, v4, :cond_0

    .line 622
    new-instance v4, Lcom/android/mail/providers/Attachment;

    #v4=(UninitRef);
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    #v5=(Reference);
    invoke-direct {v4, v5}, Lcom/android/mail/providers/Attachment;-><init>(Lorg/json/JSONObject;)V

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v2           #i:I
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v1

    .line 626
    .local v1, e:Lorg/json/JSONException;
    #v1=(Reference);
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #v4=(UninitRef);
    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #v4=(Reference);
    throw v4

    .line 629
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    #v1=(Uninit);v4=(Conflicted);
    return-object v3
.end method

.method public static getPreviewState(III)Z
    .locals 5
    .parameter "previewStates"
    .parameter "attachmentIndex"
    .parameter "rendition"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 684
    #v2=(One);
    mul-int/lit8 v1, p1, 0x2

    .line 685
    .local v1, shift:I
    #v1=(Integer);
    shl-int v0, v2, v1

    .line 687
    .local v0, mask:I
    #v0=(Integer);
    if-nez p2, :cond_2

    .line 689
    and-int v4, p0, v0

    #v4=(Integer);
    if-eqz v4, :cond_1

    .line 694
    :cond_0
    :goto_0
    #v2=(Boolean);v4=(Conflicted);
    return v2

    :cond_1
    #v2=(One);v4=(Integer);
    move v2, v3

    .line 689
    #v2=(Null);
    goto :goto_0

    .line 690
    :cond_2
    #v2=(One);v4=(Uninit);
    if-ne p2, v2, :cond_3

    .line 692
    shl-int/lit8 v4, v0, 0x1

    #v4=(Integer);
    and-int/2addr v4, p0

    if-nez v4, :cond_0

    move v2, v3

    #v2=(Null);
    goto :goto_0

    :cond_3
    #v2=(One);v4=(Uninit);
    move v2, v3

    .line 694
    #v2=(Null);
    goto :goto_0
.end method

.method protected static parseOptionalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "uriString"

    .prologue
    .line 397
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method protected static parseOptionalUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "srcJson"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 401
    #v1=(Null);
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, uriStr:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Null);
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method private static stringify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "object"

    .prologue
    .line 393
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static toJSONArray(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mail/providers/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, attachments:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mail/providers/Attachment;>;"
    if-nez p0, :cond_0

    .line 602
    const/4 v4, 0x0

    .line 612
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);
    return-object v4

    .line 604
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v3, Lorg/json/JSONArray;

    #v3=(UninitRef);
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 606
    .local v3, result:Lorg/json/JSONArray;
    :try_start_0
    #v3=(Reference);
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v2=(Reference);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 607
    .local v0, attachment:Lcom/android/mail/providers/Attachment;
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 609
    .end local v0           #attachment:Lcom/android/mail/providers/Attachment;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    move-exception v1

    .line 610
    .local v1, e:Lorg/json/JSONException;
    #v1=(Reference);
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #v4=(UninitRef);
    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #v4=(Reference);
    throw v4

    .line 612
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    #v1=(Uninit);v2=(Reference);v4=(Boolean);
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public canPreview()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public canSave()Z
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->isInstallable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public canShare()Z
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 522
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 525
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 526
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v3=(Reference);v4=(Reference);
    move-object v0, p1

    .line 529
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 531
    .local v0, that:Lcom/android/mail/providers/Attachment;
    iget v3, p0, Lcom/android/mail/providers/Attachment;->destination:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/providers/Attachment;->destination:I

    #v4=(Integer);
    if-eq v3, v4, :cond_4

    move v1, v2

    .line 532
    #v1=(Null);
    goto :goto_0

    .line 534
    :cond_4
    #v1=(One);
    iget v3, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    iget v4, v0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 535
    #v1=(Null);
    goto :goto_0

    .line 537
    :cond_5
    #v1=(One);
    iget v3, p0, Lcom/android/mail/providers/Attachment;->size:I

    iget v4, v0, Lcom/android/mail/providers/Attachment;->size:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 538
    #v1=(Null);
    goto :goto_0

    .line 540
    :cond_6
    #v1=(One);
    iget v3, p0, Lcom/android/mail/providers/Attachment;->state:I

    iget v4, v0, Lcom/android/mail/providers/Attachment;->state:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 541
    #v1=(Null);
    goto :goto_0

    .line 543
    :cond_7
    #v1=(One);
    iget-boolean v3, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v3=(Boolean);
    iget-boolean v4, v0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v4=(Boolean);
    if-eq v3, v4, :cond_8

    move v1, v2

    .line 544
    #v1=(Null);
    goto :goto_0

    .line 546
    :cond_8
    #v1=(One);
    iget v3, p0, Lcom/android/mail/providers/Attachment;->type:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/providers/Attachment;->type:I

    #v4=(Integer);
    if-eq v3, v4, :cond_9

    move v1, v2

    .line 547
    #v1=(Null);
    goto :goto_0

    .line 549
    :cond_9
    #v1=(One);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_c

    :cond_a
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 551
    #v1=(Null);
    goto :goto_0

    .line 549
    :cond_b
    #v1=(One);v3=(Reference);v4=(Integer);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 553
    :cond_c
    #v3=(Conflicted);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v3=(Reference);
    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_f

    :cond_d
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 554
    #v1=(Null);
    goto :goto_0

    .line 553
    :cond_e
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_d

    .line 556
    :cond_f
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_12

    :cond_10
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 557
    #v1=(Null);
    goto :goto_0

    .line 556
    :cond_11
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 559
    :cond_12
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_15

    :cond_13
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 560
    #v1=(Null);
    goto/16 :goto_0

    .line 559
    :cond_14
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 562
    :cond_15
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_18

    :cond_16
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 564
    #v1=(Null);
    goto/16 :goto_0

    .line 562
    :cond_17
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-nez v3, :cond_16

    .line 566
    :cond_18
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1b

    :cond_19
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 568
    #v1=(Null);
    goto/16 :goto_0

    .line 566
    :cond_1a
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 570
    :cond_1b
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    #v3=(Reference);
    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1e

    :cond_1c
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 572
    #v1=(Null);
    goto/16 :goto_0

    .line 570
    :cond_1d
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    if-nez v3, :cond_1c

    .line 574
    :cond_1e
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v3=(Reference);
    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :goto_1
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 575
    #v1=(Null);
    goto/16 :goto_0

    .line 574
    :cond_1f
    #v1=(One);v3=(Reference);
    iget-object v3, v0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/utils/MimeType;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    .line 472
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getIdentifierUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->mIdentifierUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->mIdentifierUri:Landroid/net/Uri;

    .line 465
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->mIdentifierUri:Landroid/net/Uri;

    #v0=(Reference);
    return-object v0

    .line 461
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v0=(Reference);
    goto :goto_0

    :cond_2
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getUriForRendition(I)Landroid/net/Uri;
    .locals 4
    .parameter "rendition"

    .prologue
    .line 477
    packed-switch p1, :pswitch_data_0

    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "invalid rendition: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 479
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 487
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 482
    .end local v0           #uri:Landroid/net/Uri;
    :pswitch_1
    #v0=(Uninit);
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 483
    .restart local v0       #uri:Landroid/net/Uri;
    #v0=(Reference);
    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 583
    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 584
    .local v0, result:I
    :goto_0
    #v0=(Integer);
    mul-int/lit8 v3, v0, 0x1f

    #v3=(Integer);
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    #v2=(Integer);
    add-int v0, v3, v2

    .line 585
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/android/mail/providers/Attachment;->size:I

    add-int v0, v2, v3

    .line 586
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v2=(Reference);
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_2
    #v2=(Integer);
    add-int v0, v3, v2

    .line 587
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    #v2=(Integer);
    add-int v0, v3, v2

    .line 588
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/android/mail/providers/Attachment;->state:I

    add-int v0, v2, v3

    .line 589
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/android/mail/providers/Attachment;->destination:I

    add-int v0, v2, v3

    .line 590
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    add-int v0, v2, v3

    .line 591
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v2=(Reference);
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_4
    #v2=(Integer);
    add-int v0, v3, v2

    .line 592
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    #v2=(Reference);
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_5
    #v2=(Integer);
    add-int v0, v3, v2

    .line 593
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    #v2=(Reference);
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_6
    #v2=(Integer);
    add-int v0, v3, v2

    .line 594
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/android/mail/providers/Attachment;->type:I

    add-int v0, v2, v3

    .line 595
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    #v2=(Integer);
    add-int v0, v3, v2

    .line 596
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #v1=(Boolean);
    add-int v0, v2, v1

    .line 597
    return v0

    .end local v0           #result:I
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Reference);v3=(Uninit);
    move v0, v1

    .line 583
    #v0=(Null);
    goto/16 :goto_0

    .restart local v0       #result:I
    :cond_2
    #v0=(Integer);v3=(Integer);
    move v2, v1

    .line 584
    #v2=(Null);
    goto/16 :goto_1

    :cond_3
    #v2=(Reference);
    move v2, v1

    .line 586
    #v2=(Null);
    goto :goto_2

    :cond_4
    #v2=(Reference);
    move v2, v1

    .line 587
    #v2=(Null);
    goto :goto_3

    :cond_5
    #v2=(Reference);
    move v2, v1

    .line 591
    #v2=(Null);
    goto :goto_4

    :cond_6
    #v2=(Reference);
    move v2, v1

    .line 592
    #v2=(Null);
    goto :goto_5

    :cond_7
    #v2=(Reference);
    move v2, v1

    .line 593
    #v2=(Null);
    goto :goto_6

    :cond_8
    #v2=(Reference);
    move v2, v1

    .line 595
    #v2=(Null);
    goto :goto_7
.end method

.method public isDownloadFailed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 440
    #v0=(One);
    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isDownloadFinishedOrFailed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 444
    #v0=(One);
    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v1=(Integer);
    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v2, 0x3

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    #v0=(Boolean);v2=(Conflicted);
    return v0

    :cond_1
    #v0=(One);v2=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isInstallable()Z
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/MimeType;->isInstallable(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isPresentLocally()Z
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isSavedToExternal()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 427
    #v0=(One);
    iget v1, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/mail/providers/Attachment;->destination:I

    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "contentType"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    .line 493
    iput-object p1, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    .line 495
    :cond_0
    #v0=(Boolean);
    return-void
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/providers/Attachment;->inferredContentType:Ljava/lang/String;

    .line 504
    iput-object p1, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    .line 505
    const/4 v0, 0x1

    .line 507
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public shouldShowProgress()Z
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    iget v1, p0, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public supportsDownloadAgain()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v0=(Boolean);
    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/16 v1, 0xc

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 313
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "_display_name"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "_size"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "contentType"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "state"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v1, "destination"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->destination:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v1, "downloadedSize"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "thumbnailUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "previewIntentUri"

    iget-object v1, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "providerData"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "supportsDownloadAgain"

    iget-boolean v2, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    const-string v1, "type"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->type:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v1, "flags"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->flags:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    return-object v0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lorg/json/JSONObject;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v0, result:Lorg/json/JSONObject;
    #v0=(Reference);
    const-string v1, "_display_name"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v1, "_size"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v1, "contentType"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v1, "state"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    const-string v1, "destination"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->destination:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    const-string v1, "downloadedSize"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v1, "thumbnailUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v1, "previewIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mail/providers/Attachment;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v1, "providerData"

    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v1, "supportsDownloadAgain"

    iget-boolean v2, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v2=(Boolean);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 365
    const-string v1, "type"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->type:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    const-string v1, "flags"

    iget v2, p0, Lcom/android/mail/providers/Attachment;->flags:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 374
    :try_start_0
    #v5=(Null);
    invoke-virtual {p0}, Lcom/android/mail/providers/Attachment;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 376
    .local v1, jsonObject:Lorg/json/JSONObject;
    #v1=(Reference);
    const-string v2, "partId"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    iget-object v2, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 380
    :try_start_1
    const-string v2, "providerData"

    new-instance v3, Lorg/json/JSONObject;

    #v3=(UninitRef);
    iget-object v4, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    #v4=(Reference);
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :cond_0
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);
    const/4 v2, 0x4

    :try_start_2
    #v2=(PosByte);
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :goto_1
    #v1=(Conflicted);v2=(Reference);
    return-object v2

    .line 381
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    #v0=(Uninit);v1=(Reference);v3=(Conflicted);
    move-exception v0

    .line 382
    .local v0, e:Lorg/json/JSONException;
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    const-string v3, "JSONException when adding provider data"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 386
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 387
    .restart local v0       #e:Lorg/json/JSONException;
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/providers/Attachment;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "JSONException in toString"

    #v3=(Reference);
    new-array v4, v5, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->name:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Lcom/android/mail/providers/Attachment;->size:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 337
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/android/mail/providers/Attachment;->state:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Lcom/android/mail/providers/Attachment;->destination:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 342
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 343
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->providerData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Lcom/android/mail/providers/Attachment;->type:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    return-void

    .line 345
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
