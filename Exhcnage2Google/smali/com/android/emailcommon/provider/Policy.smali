.class public final Lcom/android/emailcommon/provider/Policy;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;


# static fields
.field private static final ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_POLICY:Lcom/android/emailcommon/provider/Policy;


# instance fields
.field public mDontAllowAttachments:Z

.field public mDontAllowCamera:Z

.field public mDontAllowHtml:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarLookback:I

.field public mMaxEmailLookback:I

.field public mMaxHtmlTruncationSize:I

.field public mMaxScreenLockTime:I

.field public mMaxTextTruncationSize:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMaxFails:I

.field public mPasswordMinLength:I

.field public mPasswordMode:I

.field public mPasswordRecoveryEnabled:Z

.field public mProtocolPoliciesEnforced:Ljava/lang/String;

.field public mProtocolPoliciesUnsupported:Ljava/lang/String;

.field public mRequireEncryption:Z

.field public mRequireEncryptionExternal:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 107
    #v3=(Null);
    const/16 v0, 0x17

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "passwordMode"

    aput-object v1, v0, v4

    const-string v1, "passwordMinLength"

    aput-object v1, v0, v5

    const-string v1, "passwordExpirationDays"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    #v1=(PosByte);
    const-string v2, "passwordHistory"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "passwordComplexChars"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "passwordMaxFails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxScreenLockTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "requireRemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "requireEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "requireEncryptionExternal"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "requireManualSyncRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dontAllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dontAllowAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dontAllowHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "maxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "maxTextTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "maxHTMLTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "maxEmailLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "maxCalendarLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "passwordRecoveryEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "protocolPoliciesEnforced"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "protocolPoliciesUnsupported"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    .line 123
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "size"

    aput-object v1, v0, v4

    const-string v1, "flags"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/android/emailcommon/provider/Policy$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 130
    #p0=(Reference);
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 132
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 134
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 492
    #v1=(One);
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 493
    #p0=(Reference);
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 517
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 502
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);
    move v0, v2

    .line 503
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Integer);
    move v0, v2

    .line 504
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Integer);
    move v0, v2

    .line 505
    #v0=(Null);
    goto :goto_3

    :cond_4
    #v0=(Integer);
    move v0, v2

    .line 506
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Integer);
    move v0, v2

    .line 507
    #v0=(Null);
    goto :goto_5

    :cond_6
    #v0=(Integer);
    move v0, v2

    .line 508
    #v0=(Null);
    goto :goto_6

    :cond_7
    #v0=(Integer);
    move v1, v2

    .line 514
    #v1=(Null);
    goto :goto_7
.end method

.method private static appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .parameter "sb"
    .parameter "code"
    .parameter "value"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v0, ":"

    #v0=(Reference);
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    return-void
.end method

.method public static initPolicy()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method public static restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 138
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    move-object v0, p0

    #v0=(Reference);
    move-wide v4, p1

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public static setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V
    .locals 19
    .parameter "context"
    .parameter "account"
    .parameter "policy"

    .prologue
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 184
    .local v2, resolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "accountKey=?"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v0, p1

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v17, v0

    #v17=(LongLo);v18=(LongHi);
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    #v17=(Reference);
    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 187
    .local v8, c:Landroid/database/Cursor;
    #v8=(Reference);
    new-instance v9, Landroid/content/ContentValues;

    #v9=(UninitRef);
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v9, cv:Landroid/content/ContentValues;
    :try_start_0
    #v9=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    #v3=(Boolean);
    if-eqz v3, :cond_1

    const/4 v14, 0x0

    .line 192
    .local v14, policyMax:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Integer);v15=(Conflicted);v16=(Conflicted);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 193
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 194
    .local v10, flags:I
    #v10=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 195
    .local v15, size:I
    #v15=(Integer);
    and-int/lit16 v3, v10, 0x200

    #v3=(Integer);
    if-eqz v3, :cond_3

    const/16 v16, 0x1

    .line 196
    .local v16, wasRestricted:Z
    :goto_1
    #v16=(Boolean);
    if-le v15, v14, :cond_4

    const/4 v13, 0x1

    .line 197
    .local v13, isRestricted:Z
    :goto_2
    #v13=(Boolean);
    move/from16 v0, v16

    #v0=(Boolean);
    if-eq v13, v0, :cond_0

    .line 198
    if-eqz v13, :cond_5

    .line 199
    or-int/lit16 v10, v10, 0x200

    .line 203
    :goto_3
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 204
    .local v11, id:J
    #v11=(LongLo);v12=(LongHi);
    const-string v3, "flags"

    #v3=(Reference);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 210
    .end local v10           #flags:I
    .end local v11           #id:J
    .end local v13           #isRestricted:Z
    .end local v14           #policyMax:I
    .end local v15           #size:I
    .end local v16           #wasRestricted:Z
    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Reference);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 190
    :cond_1
    :try_start_1
    #v0=(Reference);v3=(Boolean);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v3=(Integer);
    if-lez v3, :cond_2

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #v14=(Integer);
    goto :goto_0

    :cond_2
    #v14=(Uninit);
    const v14, 0x7fffffff

    #v14=(Integer);
    goto :goto_0

    .line 195
    .restart local v10       #flags:I
    .restart local v14       #policyMax:I
    .restart local v15       #size:I
    :cond_3
    #v0=(Conflicted);v10=(Integer);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Integer);v16=(Conflicted);
    const/16 v16, 0x0

    #v16=(Null);
    goto :goto_1

    .line 196
    .restart local v16       #wasRestricted:Z
    :cond_4
    #v16=(Boolean);
    const/4 v13, 0x0

    #v13=(Null);
    goto :goto_2

    .line 201
    .restart local v13       #isRestricted:Z
    :cond_5
    #v0=(Boolean);v13=(Boolean);
    and-int/lit16 v10, v10, -0x201

    goto :goto_3

    .line 210
    .end local v10           #flags:I
    .end local v13           #isRestricted:Z
    .end local v15           #size:I
    .end local v16           #wasRestricted:Z
    :cond_6
    #v0=(Conflicted);v3=(Boolean);v10=(Conflicted);v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 241
    #v1=(Null);
    instance-of v2, p1, Lcom/android/emailcommon/provider/Policy;

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Integer);v3=(Conflicted);
    return v1

    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Boolean);v3=(Uninit);
    move-object v0, p1

    .line 242
    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 244
    .local v0, otherPolicy:Lcom/android/emailcommon/provider/Policy;
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    #v3=(Boolean);
    if-ne v2, v3, :cond_0

    .line 245
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-ne v2, v3, :cond_0

    .line 246
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-ne v2, v3, :cond_0

    .line 247
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    #v2=(Integer);
    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 248
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v2, v3, :cond_0

    .line 249
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v2, v3, :cond_0

    .line 250
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v2, v3, :cond_0

    .line 251
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v2, v3, :cond_0

    .line 252
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v2, v3, :cond_0

    .line 253
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v2, v3, :cond_0

    .line 254
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    #v2=(Boolean);
    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    #v3=(Boolean);
    if-ne v2, v3, :cond_0

    .line 258
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-ne v2, v3, :cond_0

    .line 261
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v2, v3, :cond_0

    .line 262
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-ne v2, v3, :cond_0

    .line 263
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v2=(Integer);
    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 264
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    if-ne v2, v3, :cond_0

    .line 265
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    if-ne v2, v3, :cond_0

    .line 266
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-ne v2, v3, :cond_0

    .line 267
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    if-ne v2, v3, :cond_0

    .line 268
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    #v2=(Boolean);
    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    #v3=(Boolean);
    if-ne v2, v3, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    #v3=(Reference);
    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 278
    const/4 v1, 0x1

    #v1=(One);
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 283
    #v2=(Null);
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    move v0, v1

    .line 284
    .local v0, code:I
    :goto_0
    #v0=(Boolean);
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    shl-int/lit8 v3, v3, 0x1

    #v3=(Integer);
    add-int/2addr v0, v3

    .line 285
    #v0=(Integer);
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    #v3=(Boolean);
    if-eqz v3, :cond_2

    :goto_2
    #v1=(Boolean);
    shl-int/lit8 v1, v1, 0x2

    #v1=(Integer);
    add-int/2addr v0, v1

    .line 286
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 287
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 288
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 289
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    shl-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    .line 290
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr v0, v1

    .line 291
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    shl-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    .line 292
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    shl-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 294
    return v0

    .end local v0           #code:I
    :cond_0
    #v0=(Uninit);v1=(One);
    move v0, v2

    .line 283
    #v0=(Null);
    goto :goto_0

    .restart local v0       #code:I
    :cond_1
    #v0=(Boolean);
    move v3, v2

    .line 284
    #v3=(Null);
    goto :goto_1

    :cond_2
    #v0=(Integer);v3=(Boolean);
    move v1, v2

    .line 285
    #v1=(Null);
    goto :goto_2
.end method

.method public normalize()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 219
    #v2=(Null);
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 220
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 221
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 222
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 223
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 224
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 225
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 237
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 227
    :cond_1
    #v1=(Uninit);
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "password mode"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 233
    :cond_2
    #v0=(Integer);v1=(Conflicted);
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v3, :cond_0

    .line 234
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto :goto_0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 299
    #v1=(One);
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 300
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 301
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 302
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 303
    const/4 v0, 0x6

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 304
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 305
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 306
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 307
    const/4 v0, 0x7

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 308
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 309
    const/16 v0, 0x9

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 310
    const/16 v0, 0xa

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 312
    const/16 v0, 0xb

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 314
    const/16 v0, 0xc

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 315
    const/16 v0, 0xd

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 316
    const/16 v0, 0xe

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 317
    const/16 v0, 0xf

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 318
    const/16 v0, 0x10

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 319
    const/16 v0, 0x11

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 320
    const/16 v0, 0x12

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 321
    const/16 v0, 0x13

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 322
    const/16 v0, 0x14

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-ne v0, v1, :cond_7

    :goto_7
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 323
    const/16 v0, 0x15

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 324
    const/16 v0, 0x16

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 326
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 308
    #v0=(Null);
    goto/16 :goto_0

    :cond_1
    #v0=(Integer);
    move v0, v2

    .line 309
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Integer);
    move v0, v2

    .line 310
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Integer);
    move v0, v2

    .line 312
    #v0=(Null);
    goto :goto_3

    :cond_4
    #v0=(Integer);
    move v0, v2

    .line 314
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Integer);
    move v0, v2

    .line 315
    #v0=(Null);
    goto :goto_5

    :cond_6
    #v0=(Integer);
    move v0, v2

    .line 316
    #v0=(Null);
    goto :goto_6

    :cond_7
    #v0=(Integer);
    move v1, v2

    .line 322
    #v1=(Null);
    goto :goto_7
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 170
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "passwordMode"

    #v1=(Reference);
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v1, "passwordMinLength"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v1, "passwordMaxFails"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v1, "passwordHistory"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v1, "passwordExpirationDays"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v1, "passwordComplexChars"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v1, "maxScreenLockTime"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "requireRemoteWipe"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 339
    const-string v1, "requireEncryption"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 340
    const-string v1, "requireEncryptionExternal"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 341
    const-string v1, "requireManualSyncRoaming"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 342
    const-string v1, "dontAllowCamera"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 343
    const-string v1, "dontAllowAttachments"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 344
    const-string v1, "dontAllowHtml"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 345
    const-string v1, "maxAttachmentSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v1, "maxTextTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v1, "maxHTMLTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v1, "maxEmailLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string v1, "maxCalendarLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string v1, "passwordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 351
    const-string v1, "protocolPoliciesEnforced"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "protocolPoliciesUnsupported"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "["

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 399
    const-string v1, "No policies]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 401
    :cond_0
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    #v1=(Integer);
    if-nez v1, :cond_7

    .line 402
    const-string v1, "Pwd none "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 413
    const-string v1, "encrypt "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    #v1=(Conflicted);
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 416
    const-string v1, "encryptsd "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    #v1=(Conflicted);
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 419
    const-string v1, "nocamera "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_3
    #v1=(Conflicted);
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 422
    const-string v1, "noatts "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_4
    #v1=(Conflicted);
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 425
    const-string v1, "nopushroam "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_5
    #v1=(Conflicted);
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v1=(Integer);
    if-lez v1, :cond_6

    .line 428
    const-string v1, "attmax"

    #v1=(Reference);
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 430
    :cond_6
    #v1=(Conflicted);v2=(Conflicted);
    const-string v1, "]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 404
    :cond_7
    #v1=(Integer);v2=(Uninit);v3=(Uninit);
    const-string v2, "Pwd strong"

    #v2=(Reference);
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v3, 0x2

    #v3=(PosByte);
    if-ne v1, v3, :cond_8

    const/4 v1, 0x1

    :goto_2
    #v1=(Boolean);
    invoke-static {v0, v2, v1}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 405
    const-string v1, "len"

    #v1=(Reference);
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 406
    const-string v1, "cmpx"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 407
    const-string v1, "expy"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 408
    const-string v1, "hist"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 409
    const-string v1, "fail"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 410
    const-string v1, "idle"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_1

    .line 404
    :cond_8
    #v1=(Integer);v2=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 464
    #v2=(Null);
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 465
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_7

    :goto_7
    #v1=(Boolean);
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    return-void

    :cond_0
    #v0=(Boolean);v1=(One);
    move v0, v2

    .line 472
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Boolean);
    move v0, v2

    .line 473
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Boolean);
    move v0, v2

    .line 474
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Boolean);
    move v0, v2

    .line 475
    #v0=(Null);
    goto :goto_3

    :cond_4
    #v0=(Boolean);
    move v0, v2

    .line 476
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Boolean);
    move v0, v2

    .line 477
    #v0=(Null);
    goto :goto_5

    :cond_6
    #v0=(Boolean);
    move v0, v2

    .line 478
    #v0=(Null);
    goto :goto_6

    :cond_7
    #v0=(Boolean);
    move v1, v2

    .line 484
    #v1=(Null);
    goto :goto_7
.end method
