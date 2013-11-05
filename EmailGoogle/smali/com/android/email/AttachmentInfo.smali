.class public Lcom/android/email/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAccountKey:J

.field public final mAllowInstall:Z

.field public final mAllowSave:Z

.field public final mAllowView:Z

.field public final mContentType:Ljava/lang/String;

.field public final mDenyFlags:I

.field public final mFlags:I

.field public final mId:J

.field public final mName:Ljava/lang/String;

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 17
    .parameter "context"
    .parameter "id"
    .parameter "size"
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "accountKey"
    .parameter "flags"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    #p0=(Reference);
    move-wide/from16 v0, p4

    #v0=(LongLo);v1=(LongHi);
    move-object/from16 v2, p0

    #v2=(Reference);
    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mSize:J

    .line 103
    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #v13=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iput-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 105
    move-wide/from16 v0, p2

    #v0=(LongLo);v1=(LongHi);
    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mId:J

    .line 106
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    .line 107
    move/from16 v0, p10

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/email/AttachmentInfo;->mFlags:I

    .line 108
    const/4 v6, 0x1

    .line 109
    .local v6, canView:Z
    #v6=(One);
    const/4 v5, 0x1

    .line 110
    .local v5, canSave:Z
    #v5=(One);
    const/4 v4, 0x0

    .line 111
    .local v4, canInstall:Z
    #v4=(Null);
    const/4 v7, 0x0

    .line 114
    .local v7, denyFlags:I
    #v7=(Null);
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_0

    .line 115
    const/4 v5, 0x0

    .line 119
    :cond_0
    #v5=(Boolean);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    #v13=(Reference);
    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    #v14=(Reference);
    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    #v13=(Reference);
    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_2

    .line 123
    :cond_1
    const/4 v6, 0x0

    .line 127
    :cond_2
    #v6=(Boolean);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    #v13=(Reference);
    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, extension:Ljava/lang/String;
    #v8=(Reference);
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_3

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    #v13=(Reference);
    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_3

    .line 131
    const/4 v6, 0x0

    .line 132
    #v6=(Null);
    const/4 v5, 0x0

    .line 133
    #v5=(Null);
    or-int/lit8 v7, v7, 0x1

    .line 137
    :cond_3
    #v5=(Boolean);v6=(Boolean);v7=(Boolean);
    move/from16 v0, p10

    #v0=(Integer);
    and-int/lit16 v13, v0, 0x200

    #v13=(Integer);
    if-eqz v13, :cond_4

    .line 138
    const/4 v6, 0x0

    .line 139
    #v6=(Null);
    const/4 v5, 0x0

    .line 140
    #v5=(Null);
    or-int/lit8 v7, v7, 0x20

    .line 144
    :cond_4
    #v5=(Boolean);v6=(Boolean);v7=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    #v13=(Reference);
    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_5

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    #v13=(Reference);
    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_5

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    #v13=(Reference);
    const-string v14, "install_non_market_apps"

    const/4 v15, 0x0

    #v15=(Null);
    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    #v13=(Integer);
    const/4 v14, 0x1

    #v14=(One);
    if-ne v13, v14, :cond_8

    const/4 v12, 0x1

    .line 151
    .local v12, sideloadEnabled:Z
    :goto_0
    #v12=(Boolean);
    and-int/2addr v5, v12

    .line 152
    move v6, v5

    .line 153
    move v4, v5

    .line 154
    #v4=(Boolean);
    if-nez v12, :cond_5

    .line 155
    or-int/lit8 v7, v7, 0x8

    .line 161
    .end local v12           #sideloadEnabled:Z
    :cond_5
    #v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    #v13=(LongLo);v14=(LongHi);
    const-wide/32 v15, 0x500000

    #v15=(LongLo);v16=(LongHi);
    cmp-long v13, v13, v15

    #v13=(Byte);
    if-lez v13, :cond_6

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v10

    .line 163
    .local v10, networkType:I
    #v10=(Integer);
    const/4 v13, 0x1

    #v13=(One);
    if-eq v10, v13, :cond_6

    .line 164
    const/4 v6, 0x0

    .line 165
    #v6=(Null);
    const/4 v5, 0x0

    .line 166
    #v5=(Null);
    or-int/lit8 v7, v7, 0x2

    .line 171
    .end local v10           #networkType:I
    :cond_6
    #v5=(Boolean);v6=(Boolean);v10=(Conflicted);v13=(Byte);
    const-wide/16 v13, 0x0

    #v13=(LongLo);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    .line 172
    .local v9, intent:Landroid/content/Intent;
    #v9=(Reference);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 173
    .local v11, pm:Landroid/content/pm/PackageManager;
    #v11=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v11, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_7

    .line 175
    const/4 v6, 0x0

    .line 176
    #v6=(Null);
    const/4 v5, 0x0

    .line 177
    #v5=(Null);
    or-int/lit8 v7, v7, 0x4

    .line 180
    :cond_7
    #v5=(Boolean);v6=(Boolean);
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    .line 181
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    .line 182
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    .line 183
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    .line 184
    return-void

    .line 149
    .end local v3           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    #v3=(Uninit);v4=(Null);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Integer);v14=(One);v15=(Null);v16=(Uninit);
    const/4 v12, 0x0

    #v12=(Null);
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 11
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 85
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    #v4=(LongLo);v5=(LongHi);
    iget-object v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    #v6=(Reference);
    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    #v7=(Reference);
    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    #v8=(LongLo);v9=(LongHi);
    iget v10, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    #v10=(Integer);
    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p1

    #v1=(Reference);
    invoke-direct/range {v0 .. v10}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V

    .line 87
    #v0=(Reference);p0=(Reference);
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 227
    #v1=(Null);
    if-ne p1, p0, :cond_1

    .line 235
    .end local p1
    :cond_0
    :goto_0
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v0

    .line 231
    .restart local p1
    :cond_1
    #v0=(One);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    if-eq v2, v3, :cond_3

    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    move v0, v1

    .line 232
    #v0=(Null);
    goto :goto_0

    .line 235
    :cond_3
    #v0=(One);v2=(Reference);v3=(Reference);
    check-cast p1, Lcom/android/email/AttachmentInfo;

    .end local p1
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/android/email/AttachmentInfo;->mId:J

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-eqz v2, :cond_0

    move v0, v1

    #v0=(Null);
    goto :goto_0
.end method

.method public getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/AttachmentInfo;->getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, contentUri:Landroid/net/Uri;
    #v0=(Reference);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "android.intent.action.VIEW"

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const v2, 0x80001

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    return-object v1
.end method

.method protected getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 203
    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {p2, p3, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 204
    .local v0, contentUri:Landroid/net/Uri;
    #v0=(Reference);
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    #v1=(Byte);
    if-lez v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/android/email/AttachmentInfo;->mId:J

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/email/AttachmentInfo;->mId:J

    #v2=(LongLo);v3=(LongHi);
    const/16 v4, 0x20

    #v4=(PosByte);
    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method public isEligibleForDownload()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "{Attachment "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mSize:J

    #v1=(LongLo);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
