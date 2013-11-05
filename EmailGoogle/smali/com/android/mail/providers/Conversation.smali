.class public Lcom/android/mail/providers/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Lcom/android/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/content/CursorCreator",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MOVE_CONVERSATIONS_URI:Landroid/net/Uri;

.field private static final sConversationInfoRequest:Landroid/os/Bundle;

.field private static final sRawFoldersRequest:Landroid/os/Bundle;

.field private static sSubjectAndSnippet:Ljava/lang/String;


# instance fields
.field public accountUri:Landroid/net/Uri;

.field public attachmentPreviewStates:I

.field public attachmentPreviewUri0:Ljava/lang/String;

.field public attachmentPreviewUri1:Ljava/lang/String;

.field public transient attachmentPreviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public attachmentPreviewsCount:I

.field public color:I

.field public convFlags:I

.field public conversationBaseUri:Landroid/net/Uri;

.field public conversationInfo:Lcom/android/mail/providers/ConversationInfo;

.field public dateMs:J

.field public hasAttachments:Z

.field public id:J

.field public isRemote:Z

.field public transient localDeleteOnUpdate:Z

.field public messageListUri:Landroid/net/Uri;

.field public muted:Z

.field private numDrafts:I

.field private numMessages:I

.field public personalLevel:I

.field public phishing:Z

.field public transient position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public priority:I

.field private rawFolders:Lcom/android/mail/providers/FolderList;

.field public read:Z

.field public seen:Z

.field public senders:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sendingState:I

.field public snippet:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public spam:Z

.field public starred:Z

.field public subject:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field private transient viewed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    #v1=(One);
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Conversation;->EMPTY:Ljava/util/Collection;

    .line 294
    new-instance v0, Lcom/android/mail/providers/Conversation$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Conversation$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Conversation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 314
    const-string v0, "content://moveconversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Conversation;->MOVE_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 463
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    .line 464
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    .line 739
    new-instance v0, Lcom/android/mail/providers/Conversation$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Conversation$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Conversation;->FACTORY:Lcom/android/mail/content/CursorCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 417
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 321
    #v5=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    #p0=(Reference);
    if-eqz p1, :cond_2

    .line 323
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    iput-wide v7, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 324
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 325
    const/4 v3, 0x6

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mail/providers/Conversation;->dateMs:J

    .line 326
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 328
    iget-object v3, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 329
    const-string v3, ""

    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 331
    :cond_0
    const/4 v3, 0x7

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->hasAttachments:Z

    .line 332
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, messageList:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 334
    const/16 v3, 0xa

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->sendingState:I

    .line 335
    const/16 v3, 0xb

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 336
    const/16 v3, 0xc

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->read:Z

    .line 337
    const/16 v3, 0xd

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->seen:Z

    .line 338
    const/16 v3, 0xe

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->starred:Z

    .line 339
    invoke-static {p1}, Lcom/android/mail/providers/Conversation;->readRawFolders(Landroid/database/Cursor;)Lcom/android/mail/providers/FolderList;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    .line 340
    const/16 v3, 0x10

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->convFlags:I

    .line 341
    const/16 v3, 0x11

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->personalLevel:I

    .line 342
    const/16 v3, 0x12

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->spam:Z

    .line 343
    const/16 v3, 0x13

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_9

    move v3, v4

    :goto_6
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->phishing:Z

    .line 344
    const/16 v3, 0x14

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_a

    move v3, v4

    :goto_7
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->muted:Z

    .line 345
    const/16 v3, 0x15

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 346
    const/16 v3, 0x16

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, account:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_b

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_8
    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 348
    const/4 v3, -0x1

    #v3=(Byte);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->position:I

    .line 349
    iput-boolean v5, p0, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 350
    invoke-static {p1}, Lcom/android/mail/providers/Conversation;->readConversationInfo(Landroid/database/Cursor;)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    .line 351
    const/16 v3, 0x18

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, conversationBase:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_c

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_9
    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 355
    iget-object v3, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    if-nez v3, :cond_1

    .line 356
    const/4 v3, 0x4

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 357
    const/16 v3, 0x17

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/providers/Conversation;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 358
    const/16 v3, 0x8

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->numMessages:I

    .line 359
    const/16 v3, 0x9

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->numDrafts:I

    .line 361
    :cond_1
    #v3=(Conflicted);
    const/16 v3, 0x19

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_d

    :goto_a
    #v4=(Boolean);
    iput-boolean v4, p0, Lcom/android/mail/providers/Conversation;->isRemote:Z

    .line 362
    iput-object v6, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 363
    const/16 v3, 0x1a

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 365
    const/16 v3, 0x1b

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 367
    const/16 v3, 0x1c

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 369
    const/16 v3, 0x1d

    #v3=(PosByte);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewsCount:I

    .line 372
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #conversationBase:Ljava/lang/String;
    .end local v2           #messageList:Ljava/lang/String;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);v4=(One);v7=(LongLo);v8=(LongHi);
    move v3, v5

    .line 331
    #v3=(Null);
    goto/16 :goto_0

    .restart local v2       #messageList:Ljava/lang/String;
    :cond_4
    #v2=(Reference);v3=(Boolean);
    move-object v3, v6

    .line 333
    #v3=(Null);
    goto/16 :goto_1

    :cond_5
    #v3=(Integer);
    move v3, v5

    .line 336
    #v3=(Null);
    goto/16 :goto_2

    :cond_6
    #v3=(Integer);
    move v3, v5

    .line 337
    #v3=(Null);
    goto/16 :goto_3

    :cond_7
    #v3=(Integer);
    move v3, v5

    .line 338
    #v3=(Null);
    goto/16 :goto_4

    :cond_8
    #v3=(Integer);
    move v3, v5

    .line 342
    #v3=(Null);
    goto/16 :goto_5

    :cond_9
    #v3=(Integer);
    move v3, v5

    .line 343
    #v3=(Null);
    goto/16 :goto_6

    :cond_a
    #v3=(Integer);
    move v3, v5

    .line 344
    #v3=(Null);
    goto/16 :goto_7

    .restart local v0       #account:Ljava/lang/String;
    :cond_b
    #v0=(Reference);v3=(Boolean);
    move-object v3, v6

    .line 347
    #v3=(Null);
    goto/16 :goto_8

    .restart local v1       #conversationBase:Ljava/lang/String;
    :cond_c
    #v1=(Reference);v3=(Boolean);
    move-object v3, v6

    .line 353
    #v3=(Null);
    goto :goto_9

    :cond_d
    #v3=(Integer);
    move v4, v5

    .line 361
    #v4=(Null);
    goto :goto_a
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .parameter "in"
    .parameter "loader"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 245
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 247
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mail/providers/Conversation;->dateMs:J

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->hasAttachments:Z

    .line 252
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Conversation;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->numMessages:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->numDrafts:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->sendingState:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->read:Z

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->seen:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->starred:Z

    .line 261
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/FolderList;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->convFlags:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->personalLevel:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->spam:Z

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->phishing:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->muted:Z

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 268
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 269
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->position:I

    .line 270
    iput-boolean v2, p0, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 271
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/ConversationInfo;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    .line 272
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_7

    :goto_7
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/providers/Conversation;->isRemote:Z

    .line 274
    iput-object v5, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewsCount:I

    .line 279
    return-void

    :cond_0
    #v1=(One);
    move v0, v2

    .line 251
    #v0=(Null);
    goto/16 :goto_0

    :cond_1
    #v0=(Integer);
    move v0, v2

    .line 258
    #v0=(Null);
    goto/16 :goto_1

    :cond_2
    #v0=(Integer);
    move v0, v2

    .line 259
    #v0=(Null);
    goto/16 :goto_2

    :cond_3
    #v0=(Integer);
    move v0, v2

    .line 260
    #v0=(Null);
    goto/16 :goto_3

    :cond_4
    #v0=(Integer);
    move v0, v2

    .line 264
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Integer);
    move v0, v2

    .line 265
    #v0=(Null);
    goto :goto_5

    :cond_6
    #v0=(Integer);
    move v0, v2

    .line 266
    #v0=(Null);
    goto :goto_6

    :cond_7
    #v0=(Integer);
    move v1, v2

    .line 273
    #v1=(Null);
    goto :goto_7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/mail/providers/Conversation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/android/mail/providers/Conversation;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 375
    #p0=(Reference);
    if-nez p1, :cond_0

    .line 414
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 379
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->id:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->id:J

    .line 380
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 381
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->dateMs:J

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/mail/providers/Conversation;->dateMs:J

    .line 382
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 383
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->hasAttachments:Z

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->hasAttachments:Z

    .line 384
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 385
    iget v0, p1, Lcom/android/mail/providers/Conversation;->sendingState:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->sendingState:I

    .line 386
    iget v0, p1, Lcom/android/mail/providers/Conversation;->priority:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    .line 387
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->read:Z

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->read:Z

    .line 388
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->seen:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->seen:Z

    .line 389
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->starred:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->starred:Z

    .line 390
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    .line 391
    iget v0, p1, Lcom/android/mail/providers/Conversation;->convFlags:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->convFlags:I

    .line 392
    iget v0, p1, Lcom/android/mail/providers/Conversation;->personalLevel:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->personalLevel:I

    .line 393
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->spam:Z

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->spam:Z

    .line 394
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->phishing:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->phishing:Z

    .line 395
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->muted:Z

    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->muted:Z

    .line 396
    iget v0, p1, Lcom/android/mail/providers/Conversation;->color:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    .line 397
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 398
    iget v0, p1, Lcom/android/mail/providers/Conversation;->position:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->position:I

    .line 399
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 402
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    .line 403
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 404
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->snippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 405
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->senders:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 406
    iget v0, p1, Lcom/android/mail/providers/Conversation;->numMessages:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->numMessages:I

    .line 407
    iget v0, p1, Lcom/android/mail/providers/Conversation;->numDrafts:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->numDrafts:I

    .line 408
    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->isRemote:Z

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->isRemote:Z

    .line 409
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 410
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 411
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 412
    iget v0, p1, Lcom/android/mail/providers/Conversation;->attachmentPreviewStates:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 413
    iget v0, p1, Lcom/android/mail/providers/Conversation;->attachmentPreviewsCount:I

    iput v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewsCount:I

    goto/16 :goto_0
.end method

.method public static final contains(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z
    .locals 8
    .parameter
    .parameter "needle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/providers/Conversation;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, haystack:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 611
    #v5=(Null);
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    #v6=(Integer);
    if-gtz v6, :cond_2

    :cond_0
    #v6=(Conflicted);
    move v4, v5

    .line 624
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v7=(Conflicted);
    return v4

    .line 615
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v6=(Integer);v7=(Uninit);
    if-eqz p1, :cond_1

    .line 618
    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    .line 619
    .local v2, toFind:J
    #v2=(LongLo);v3=(LongHi);
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    #v0=(Conflicted);v1=(Reference);v7=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 620
    .local v0, c:Lcom/android/mail/providers/Conversation;
    iget-wide v6, v0, Lcom/android/mail/providers/Conversation;->id:J

    #v6=(LongLo);v7=(LongHi);
    cmp-long v6, v2, v6

    #v6=(Byte);
    if-nez v6, :cond_3

    goto :goto_0

    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    :cond_4
    #v0=(Conflicted);v6=(Boolean);v7=(Conflicted);
    move v4, v5

    .line 624
    #v4=(Null);
    goto :goto_0
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "in"

    .prologue
    .line 708
    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static getSubjectAndSnippetForDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "filteredSubject"
    .parameter "snippet"

    .prologue
    .line 721
    sget-object v0, Lcom/android/mail/providers/Conversation;->sSubjectAndSnippet:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 722
    const v0, 0x7f0a0097

    #v0=(Integer);
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Conversation;->sSubjectAndSnippet:Ljava/lang/String;

    .line 724
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    const-string p2, ""

    .line 732
    .end local p2
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-object p2

    .line 726
    .restart local p2
    :cond_2
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p2, p1

    .line 729
    goto :goto_0

    .line 732
    :cond_3
    sget-object v0, Lcom/android/mail/providers/Conversation;->sSubjectAndSnippet:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    aput-object p1, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static listOf(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Conversation;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/mail/providers/Conversation;->EMPTY:Ljava/util/Collection;

    .line 636
    .local v0, target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 635
    .end local v0           #target:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    :cond_0
    #v0=(Uninit);
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private static readConversationInfo(Landroid/database/Cursor;)Lcom/android/mail/providers/ConversationInfo;
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x5

    #v7=(PosByte);
    const/4 v6, 0x1

    .line 469
    #v6=(One);
    instance-of v4, p0, Lcom/android/mail/browse/ConversationCursor;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    move-object v4, p0

    .line 470
    #v4=(Reference);
    check-cast v4, Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v4, v7}, Lcom/android/mail/browse/ConversationCursor;->getCachedBlob(I)[B

    move-result-object v0

    .line 472
    .local v0, blob:[B
    #v0=(Reference);
    if-eqz v0, :cond_0

    array-length v4, v0

    #v4=(Integer);
    if-lez v4, :cond_0

    .line 473
    invoke-static {v0}, Lcom/android/mail/providers/ConversationInfo;->fromBlob([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v1

    .line 491
    .end local v0           #blob:[B
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v1

    .line 477
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);
    const-string v2, "conversationInfo"

    .line 478
    .local v2, key:Ljava/lang/String;
    #v2=(Reference);
    sget-object v4, Lcom/android/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 479
    sget-object v4, Lcom/android/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    #v4=(Reference);
    const-string v5, "conversationInfo"

    #v5=(Reference);
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    sget-object v4, Lcom/android/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    const-string v5, "options"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    :cond_1
    #v4=(Conflicted);v5=(Conflicted);
    sget-object v4, Lcom/android/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    #v4=(Reference);
    invoke-interface {p0, v4}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 485
    .local v3, response:Landroid/os/Bundle;
    #v3=(Reference);
    const-string v4, "conversationInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 486
    const-string v4, "conversationInfo"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/ConversationInfo;

    .local v1, ci:Lcom/android/mail/providers/ConversationInfo;
    goto :goto_0

    .line 489
    .end local v1           #ci:Lcom/android/mail/providers/ConversationInfo;
    :cond_2
    #v1=(Uninit);v4=(Boolean);
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/providers/ConversationInfo;->fromBlob([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v1

    .restart local v1       #ci:Lcom/android/mail/providers/ConversationInfo;
    #v1=(Reference);
    goto :goto_0
.end method

.method private static readRawFolders(Landroid/database/Cursor;)Lcom/android/mail/providers/FolderList;
    .locals 8
    .parameter "cursor"

    .prologue
    const/16 v7, 0xf

    #v7=(PosByte);
    const/4 v6, 0x1

    .line 497
    #v6=(One);
    instance-of v4, p0, Lcom/android/mail/browse/ConversationCursor;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    move-object v4, p0

    .line 498
    #v4=(Reference);
    check-cast v4, Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v4, v7}, Lcom/android/mail/browse/ConversationCursor;->getCachedBlob(I)[B

    move-result-object v0

    .line 500
    .local v0, blob:[B
    #v0=(Reference);
    if-eqz v0, :cond_0

    array-length v4, v0

    #v4=(Integer);
    if-lez v4, :cond_0

    .line 501
    invoke-static {v0}, Lcom/android/mail/providers/FolderList;->fromBlob([B)Lcom/android/mail/providers/FolderList;

    move-result-object v1

    .line 521
    .end local v0           #blob:[B
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v1

    .line 505
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);
    const-string v2, "rawFolders"

    .line 506
    .local v2, key:Ljava/lang/String;
    #v2=(Reference);
    sget-object v4, Lcom/android/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 507
    sget-object v4, Lcom/android/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    #v4=(Reference);
    const-string v5, "rawFolders"

    #v5=(Reference);
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    sget-object v4, Lcom/android/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    const-string v5, "options"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    :cond_1
    #v4=(Conflicted);v5=(Conflicted);
    sget-object v4, Lcom/android/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    #v4=(Reference);
    invoke-interface {p0, v4}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 513
    .local v3, response:Landroid/os/Bundle;
    #v3=(Reference);
    const-string v4, "rawFolders"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 514
    const-string v4, "rawFolders"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/FolderList;

    .local v1, fl:Lcom/android/mail/providers/FolderList;
    goto :goto_0

    .line 518
    .end local v1           #fl:Lcom/android/mail/providers/FolderList;
    :cond_2
    #v1=(Uninit);v4=(Boolean);
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/providers/FolderList;->fromBlob([B)Lcom/android/mail/providers/FolderList;

    move-result-object v1

    .restart local v1       #fl:Lcom/android/mail/providers/FolderList;
    #v1=(Reference);
    goto :goto_0
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " conversations:"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    .local v3, out:Ljava/lang/StringBuilder;
    #v3=(Reference);
    const/4 v1, 0x0

    .line 695
    .local v1, count:I
    #v1=(Null);
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Reference);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 696
    .local v0, c:Lcom/android/mail/providers/Conversation;
    add-int/lit8 v1, v1, 0x1

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 701
    .end local v0           #c:Lcom/android/mail/providers/Conversation;
    :cond_0
    #v0=(Conflicted);v4=(Boolean);
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    return-object v4
.end method


# virtual methods
.method public applyCachedValues(Landroid/content/ContentValues;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 530
    #v5=(Null);
    if-nez p1, :cond_1

    .line 556
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 533
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 535
    .local v2, val:Ljava/lang/Object;
    #v2=(Reference);
    sget-object v3, Lcom/android/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v6, "Conversation: applying cached value to col=%s val=%s"

    #v6=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    aput-object v1, v7, v5

    aput-object v2, v7, v4

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 537
    const-string v3, "read"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 538
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->read:Z

    goto :goto_0

    :cond_3
    #v3=(Integer);
    move v3, v5

    #v3=(Null);
    goto :goto_1

    .line 539
    .restart local v2       #val:Ljava/lang/Object;
    :cond_4
    #v3=(Boolean);
    const-string v3, "conversationInfo"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_5

    .line 540
    check-cast v2, [B

    .end local v2           #val:Ljava/lang/Object;
    check-cast v2, [B

    invoke-static {v2}, Lcom/android/mail/providers/ConversationInfo;->fromBlob([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    goto :goto_0

    .line 541
    .restart local v2       #val:Ljava/lang/Object;
    :cond_5
    #v3=(Boolean);
    const-string v3, "conversationFlags"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 542
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/mail/providers/Conversation;->convFlags:I

    goto :goto_0

    .line 543
    .restart local v2       #val:Ljava/lang/Object;
    :cond_6
    #v3=(Boolean);
    const-string v3, "starred"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_8

    .line 544
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->starred:Z

    goto :goto_0

    :cond_7
    #v3=(Integer);
    move v3, v5

    #v3=(Null);
    goto :goto_2

    .line 545
    .restart local v2       #val:Ljava/lang/Object;
    :cond_8
    #v3=(Boolean);
    const-string v3, "seen"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_a

    .line 546
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_9

    move v3, v4

    :goto_3
    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/android/mail/providers/Conversation;->seen:Z

    goto/16 :goto_0

    :cond_9
    #v3=(Integer);
    move v3, v5

    #v3=(Null);
    goto :goto_3

    .line 547
    .restart local v2       #val:Ljava/lang/Object;
    :cond_a
    #v3=(Boolean);
    const-string v3, "rawFolders"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_b

    .line 548
    check-cast v2, [B

    .end local v2           #val:Ljava/lang/Object;
    check-cast v2, [B

    invoke-static {v2}, Lcom/android/mail/providers/FolderList;->fromBlob([B)Lcom/android/mail/providers/FolderList;

    move-result-object v3

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    goto/16 :goto_0

    .line 549
    .restart local v2       #val:Ljava/lang/Object;
    :cond_b
    #v3=(Boolean);
    const-string v3, "viewed"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 552
    sget-object v3, Lcom/android/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v6=(Reference);
    const-string v7, "unsupported cached conv value in col=%s"

    new-array v8, v4, [Ljava/lang/Object;

    #v8=(Reference);
    aput-object v1, v8, v5

    invoke-static {v3, v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 574
    instance-of v1, p1, Lcom/android/mail/providers/Conversation;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 575
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 576
    .local v0, conv:Lcom/android/mail/providers/Conversation;
    iget-object v1, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 578
    .end local v0           #conv:Lcom/android/mail/providers/Conversation;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getAttachmentPreviewUris()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 676
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 677
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    #v0=(Reference);
    return-object v0
.end method

.method public getBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method public getNumMessages()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget v0, v0, Lcom/android/mail/providers/ConversationInfo;->messageCount:I

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    iget v0, p0, Lcom/android/mail/providers/Conversation;->numMessages:I

    #v0=(Integer);
    goto :goto_0
.end method

.method public getRawFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->snippet:Ljava/lang/String;

    #v0=(Reference);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isImportant()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 590
    #v0=(One);
    iget v1, p0, Lcom/android/mail/providers/Conversation;->priority:I

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

.method public isMostlyDead()Z
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/android/mail/providers/Conversation;->convFlags:I

    #v0=(Integer);
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

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

.method public isViewed()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->viewed:Z

    #v0=(Boolean);
    return v0
.end method

.method public markViewed()V
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/providers/Conversation;->viewed:Z

    .line 668
    return-void
.end method

.method public numDrafts()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget v0, v0, Lcom/android/mail/providers/ConversationInfo;->draftCount:I

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    iget v0, p0, Lcom/android/mail/providers/Conversation;->numDrafts:I

    #v0=(Integer);
    goto :goto_0
.end method

.method public setRawFolders(Lcom/android/mail/providers/FolderList;)V
    .locals 0
    .parameter "folders"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    .line 570
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "[conversation id="

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/mail/providers/Conversation;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    sget-object v1, Lcom/android/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-static {v1, v2}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 287
    const-string v1, ", subject="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    #v1=(Conflicted);
    const-string v1, "]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 213
    #v2=(Null);
    iget-wide v3, p0, Lcom/android/mail/providers/Conversation;->id:J

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 215
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-wide v3, p0, Lcom/android/mail/providers/Conversation;->dateMs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->hasAttachments:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 220
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->senders:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/android/mail/providers/Conversation;->numMessages:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/android/mail/providers/Conversation;->numDrafts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/android/mail/providers/Conversation;->sendingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/android/mail/providers/Conversation;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->read:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->seen:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->starred:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->rawFolders:Lcom/android/mail/providers/FolderList;

    #v0=(Reference);
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 229
    iget v0, p0, Lcom/android/mail/providers/Conversation;->convFlags:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/android/mail/providers/Conversation;->personalLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->spam:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->phishing:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->muted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/android/mail/providers/Conversation;->color:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 236
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 237
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 238
    iget-boolean v0, p0, Lcom/android/mail/providers/Conversation;->isRemote:Z

    #v0=(Boolean);
    if-eqz v0, :cond_7

    :goto_7
    #v1=(Boolean);
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewStates:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/android/mail/providers/Conversation;->attachmentPreviewsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void

    :cond_0
    #v0=(Boolean);v1=(One);
    move v0, v2

    .line 218
    #v0=(Null);
    goto/16 :goto_0

    :cond_1
    #v0=(Boolean);
    move v0, v2

    .line 225
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Boolean);
    move v0, v2

    .line 226
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Boolean);
    move v0, v2

    .line 227
    #v0=(Null);
    goto :goto_3

    :cond_4
    #v0=(Boolean);
    move v0, v2

    .line 231
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Boolean);
    move v0, v2

    .line 232
    #v0=(Null);
    goto :goto_5

    :cond_6
    #v0=(Boolean);
    move v0, v2

    .line 233
    #v0=(Null);
    goto :goto_6

    :cond_7
    #v0=(Boolean);
    move v1, v2

    .line 238
    #v1=(Null);
    goto :goto_7
.end method
