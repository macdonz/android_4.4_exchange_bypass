.class public Lcom/android/mail/providers/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/Settings;",
            ">;"
        }
    .end annotation
.end field

.field static final EMPTY_SETTINGS:Lcom/android/mail/providers/Settings;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDefault:Lcom/android/mail/providers/Settings;


# instance fields
.field public final confirmArchive:Z

.field public final confirmDelete:Z

.field public final confirmSend:Z

.field public final convListAttachmentPreviews:Z

.field public final convListIcon:I

.field public final conversationViewMode:I

.field public final defaultInbox:Landroid/net/Uri;

.field public final defaultInboxName:Ljava/lang/String;

.field public final forceReplyFromDefault:Z

.field private final mAutoAdvance:I

.field private mHashCode:I

.field private mTransientAutoAdvance:Ljava/lang/Integer;

.field public final maxAttachmentSize:I

.field public final messageTextSize:I

.field public final moveToInbox:Landroid/net/Uri;

.field public final priorityArrowsEnabled:Z

.field public final replyBehavior:I

.field public final setupIntentUri:Landroid/net/Uri;

.field public final signature:Ljava/lang/String;

.field public final snapHeaders:I

.field public final swipe:I

.field public final veiledAddressPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Settings;->LOG_TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/mail/providers/Settings;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Settings;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/android/mail/providers/Settings;

    .line 106
    sget-object v0, Lcom/android/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/android/mail/providers/Settings;

    sput-object v0, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    .line 402
    new-instance v0, Lcom/android/mail/providers/Settings$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/Settings$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 108
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 109
    const-string v0, ""

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 110
    const/4 v0, 0x3

    #v0=(PosByte);
    iput v0, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    .line 111
    iput v1, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    .line 112
    iput v1, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    .line 113
    iput v1, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    .line 114
    iput v2, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    .line 115
    iput-boolean v2, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    .line 119
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 122
    iput v1, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    .line 123
    iput v1, p0, Lcom/android/mail/providers/Settings;->swipe:I

    .line 124
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 125
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 126
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    .line 127
    iput-object v3, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 128
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 154
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 155
    const-string v0, "signature"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 156
    const-string v0, "auto_advance"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    .line 157
    const-string v0, "message_text_size"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    .line 158
    const-string v0, "snap_headers"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    .line 159
    const-string v0, "reply_behavior"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    .line 160
    const-string v0, "conversation_list_icon"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    .line 161
    const-string v0, "conversation_list_attachment_previews"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 163
    const-string v0, "confirm_delete"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    .line 164
    const-string v0, "confirm_archive"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    .line 165
    const-string v0, "confirm_send"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    .line 166
    const-string v0, "default_inbox"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 168
    const-string v0, "default_inbox_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 170
    const-string v0, "force_reply_from_default"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 172
    const-string v0, "max_attachment_size"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    .line 174
    const-string v0, "swipe"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->swipe:I

    .line 175
    const-string v0, "priority_inbox_arrows_enabled"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 177
    const-string v0, "setup_intent_uri"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 179
    const-string v0, "conversation_view_mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    .line 181
    const-string v0, "veiled_address_pattern"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 183
    const-string v0, "move_to_inbox"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 185
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 161
    #v0=(Null);
    goto/16 :goto_0

    :cond_1
    #v0=(Integer);
    move v0, v2

    .line 163
    #v0=(Null);
    goto/16 :goto_1

    :cond_2
    #v0=(Integer);
    move v0, v2

    .line 164
    #v0=(Null);
    goto/16 :goto_2

    :cond_3
    #v0=(Integer);
    move v0, v2

    .line 165
    #v0=(Null);
    goto/16 :goto_3

    :cond_4
    #v0=(Integer);
    move v0, v2

    .line 170
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Integer);
    move v1, v2

    .line 175
    #v1=(Null);
    goto :goto_5
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "inParcel"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 131
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->swipe:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 152
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 138
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);
    move v0, v2

    .line 139
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Integer);
    move v0, v2

    .line 140
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Integer);
    move v0, v2

    .line 141
    #v0=(Null);
    goto :goto_3

    :cond_4
    #v0=(Integer);
    move v0, v2

    .line 144
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Integer);
    move v1, v2

    .line 147
    #v1=(Null);
    goto :goto_5
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"

    .prologue
    const/4 v2, 0x0

    .line 187
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    iput-object v2, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 188
    const-string v0, "signature"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 189
    const-string v0, "auto_advance"

    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    .line 190
    const-string v0, "message_text_size"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Settings;->messageTextSize:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    .line 191
    const-string v0, "snap_headers"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Settings;->snapHeaders:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    .line 192
    const-string v0, "reply_behavior"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Settings;->replyBehavior:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    .line 193
    const-string v0, "conversation_list_icon"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Settings;->convListIcon:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    .line 194
    const-string v0, "conversation_list_attachment_previews"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 196
    const-string v0, "confirm_delete"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    .line 197
    const-string v0, "confirm_archive"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    .line 198
    const-string v0, "confirm_send"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->confirmSend:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    .line 199
    const-string v0, "default_inbox"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 200
    const-string v0, "default_inbox_name"

    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 202
    const-string v0, "force_reply_from_default"

    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 204
    const-string v0, "max_attachment_size"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    .line 206
    const-string v0, "swipe"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Settings;->swipe:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->swipe:I

    .line 207
    const-string v0, "priority_inbox_arrows_enabled"

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v1=(Boolean);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 209
    const-string v0, "setup_intent_uri"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 210
    const-string v0, "conversation_view_mode"

    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    .line 212
    const-string v0, "veiled_address_pattern"

    #v0=(Reference);
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 213
    const-string v0, "move_to_inbox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 214
    return-void
.end method

.method public static getDefaultInboxUri(Lcom/android/mail/providers/Settings;)Landroid/net/Uri;
    .locals 2
    .parameter "settings"

    .prologue
    .line 356
    if-nez p0, :cond_0

    .line 357
    sget-object v0, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 359
    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "candidate"
    .parameter "fallback"

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 227
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static getSwipeSetting(Lcom/android/mail/providers/Settings;)I
    .locals 1
    .parameter "settings"

    .prologue
    .line 398
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Settings;->swipe:I

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    sget-object v0, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/providers/Settings;->swipe:I

    #v0=(Integer);
    goto :goto_0
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/android/mail/providers/Settings;
    .locals 1
    .parameter "json"

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    new-instance v0, Lcom/android/mail/providers/Settings;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/providers/Settings;-><init>(Lorg/json/JSONObject;)V

    #v0=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "aThat"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 423
    #v3=(Null);
    sget-object v4, Lcom/android/mail/providers/Settings;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Settings.equals(%s)"

    #v5=(Reference);
    new-array v6, v2, [Ljava/lang/Object;

    #v6=(Reference);
    aput-object p1, v6, v3

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    if-ne p0, p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 427
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(One);v4=(Reference);v5=(Reference);
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 428
    #v2=(Null);
    goto :goto_0

    :cond_3
    #v2=(One);
    move-object v1, p1

    .line 430
    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Settings;

    .line 431
    .local v1, that:Lcom/android/mail/providers/Settings;
    iget-object v4, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    iget-object v5, v1, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 434
    .local v0, autoAdvanceEquals:Z
    :goto_1
    #v0=(Boolean);
    iget-object v4, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    #v4=(Integer);
    iget v5, v1, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    #v5=(Integer);
    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    iget v5, v1, Lcom/android/mail/providers/Settings;->messageTextSize:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    iget v5, v1, Lcom/android/mail/providers/Settings;->snapHeaders:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    iget v5, v1, Lcom/android/mail/providers/Settings;->replyBehavior:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    iget v5, v1, Lcom/android/mail/providers/Settings;->convListIcon:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v4=(Boolean);
    iget-boolean v5, v1, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v5=(Boolean);
    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    iget-boolean v5, v1, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    iget-boolean v5, v1, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    iget-boolean v5, v1, Lcom/android/mail/providers/Settings;->confirmSend:Z

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, v1, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    #v5=(Reference);
    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    iget-boolean v5, v1, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    #v5=(Boolean);
    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v4=(Integer);
    iget v5, v1, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v5=(Integer);
    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->swipe:I

    iget v5, v1, Lcom/android/mail/providers/Settings;->swipe:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v4=(Boolean);
    iget-boolean v5, v1, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v5=(Boolean);
    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, v1, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    #v5=(Reference);
    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v4=(Integer);
    iget v5, v1, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v5=(Integer);
    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    #v4=(Reference);
    iget-object v5, v1, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    #v5=(Reference);
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, v1, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    :cond_4
    #v4=(Conflicted);v5=(Conflicted);
    move v2, v3

    #v2=(Null);
    goto/16 :goto_0

    .line 431
    .end local v0           #autoAdvanceEquals:Z
    :cond_5
    #v0=(Uninit);v2=(One);v4=(Reference);v5=(Reference);
    iget-object v4, v1, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    if-nez v4, :cond_6

    move v0, v2

    #v0=(One);
    goto/16 :goto_1

    :cond_6
    #v0=(Uninit);
    move v0, v3

    #v0=(Null);
    goto/16 :goto_1
.end method

.method public getAutoAdvanceSetting()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 371
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    iget v0, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    #v0=(Integer);
    goto :goto_0
.end method

.method public getMaxAttachmentSize()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v0=(Integer);
    if-gtz v0, :cond_0

    const/high16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    goto :goto_0
.end method

.method public getValueMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 271
    #v2=(Null);
    if-nez p1, :cond_0

    .line 272
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    #p1=(UninitRef);
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 275
    .restart local p1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    #p1=(Reference);
    const-string v0, "signature"

    #v0=(Reference);
    iget-object v3, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "auto_advance"

    invoke-virtual {p0}, Lcom/android/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v3

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "message_text_size"

    iget v3, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "snap_headers"

    iget v3, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "reply_behavior"

    iget v3, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "conversation_list_icon"

    iget v3, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v3, "conversation_list_attachment_previews"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v3, "confirm_delete"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v3, "confirm_archive"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    #v0=(Boolean);
    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v3, "confirm_send"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "default_inbox"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "default_inbox_name"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v3, "force_reply_from_default"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    #v0=(Boolean);
    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "max_attachment_size"

    iget v3, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "swipe"

    iget v3, p0, Lcom/android/mail/providers/Settings;->swipe:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "priority_inbox_arrows_enabled"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v3=(Boolean);
    if-eqz v3, :cond_6

    :goto_5
    #v1=(Boolean);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "setup_intent_uri"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "conversation_view_mode"

    iget v1, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "veiled_address_pattern"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "move_to_inbox"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-object p1

    :cond_1
    #v0=(Boolean);v1=(One);v3=(Reference);
    move v0, v2

    .line 281
    #v0=(Null);
    goto/16 :goto_0

    :cond_2
    #v0=(Boolean);
    move v0, v2

    .line 283
    #v0=(Null);
    goto/16 :goto_1

    :cond_3
    #v0=(Boolean);
    move v0, v2

    .line 284
    #v0=(Null);
    goto :goto_2

    :cond_4
    #v0=(Boolean);
    move v0, v2

    .line 285
    #v0=(Null);
    goto :goto_3

    :cond_5
    #v0=(Boolean);
    move v0, v2

    .line 288
    #v0=(Null);
    goto :goto_4

    :cond_6
    #v0=(Reference);v3=(Boolean);
    move v1, v2

    .line 292
    #v1=(Null);
    goto :goto_5
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 459
    iget v0, p0, Lcom/android/mail/providers/Settings;->mHashCode:I

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 460
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x14

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    iget v3, p0, Lcom/android/mail/providers/Settings;->mAutoAdvance:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x2

    #v2=(PosByte);
    iget-object v3, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Lcom/android/mail/providers/Settings;->swipe:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v3=(Boolean);
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget v3, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    #v1=(Integer);
    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/providers/Settings;->mHashCode:I

    .line 468
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget v0, p0, Lcom/android/mail/providers/Settings;->mHashCode:I

    return v0
.end method

.method public isOverviewMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 387
    #v1=(Null);
    iget v2, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v2=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-eq v2, v3, :cond_1

    iget v0, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    .line 389
    .local v0, val:I
    :goto_0
    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    #v1=(Boolean);
    return v1

    .end local v0           #val:I
    :cond_1
    #v0=(Uninit);v1=(Null);
    move v0, v1

    .line 387
    #v0=(Null);
    goto :goto_0
.end method

.method public setAutoAdvanceSetting(I)V
    .locals 1
    .parameter "autoAdvance"

    .prologue
    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 379
    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .local v1, json:Lorg/json/JSONObject;
    :try_start_1
    #v1=(Reference);
    const-string v2, "signature"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    #v3=(Reference);
    sget-object v4, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v2, "auto_advance"

    invoke-virtual {p0}, Lcom/android/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string v2, "message_text_size"

    iget v3, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    const-string v2, "snap_headers"

    iget v3, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v2, "reply_behavior"

    iget v3, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v2, "conversation_list_icon"

    iget v3, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    const-string v2, "conversation_list_attachment_previews"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v3=(Boolean);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 243
    const-string v2, "confirm_delete"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 244
    const-string v2, "confirm_archive"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 245
    const-string v2, "confirm_send"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    const-string v2, "default_inbox"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    #v3=(Reference);
    sget-object v4, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-object v4, v4, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v2, "default_inbox_name"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-object v4, v4, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v2, "force_reply_from_default"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    #v3=(Boolean);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 251
    const-string v2, "max_attachment_size"

    iget v3, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v2, "swipe"

    iget v3, p0, Lcom/android/mail/providers/Settings;->swipe:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    const-string v2, "priority_inbox_arrows_enabled"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v3=(Boolean);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    const-string v2, "setup_intent_uri"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v2, "conversation_view_mode"

    iget v3, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string v2, "veiled_address_pattern"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v2, "move_to_inbox"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-object v4, v4, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :goto_0
    #v0=(Conflicted);
    monitor-exit p0

    return-object v1

    .line 259
    :catch_0
    #v0=(Uninit);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 260
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/providers/Settings;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Could not serialize settings"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #json:Lorg/json/JSONObject;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 326
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    #v0=(Reference);
    sget-object v3, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Lcom/android/mail/providers/Settings;->messageTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Lcom/android/mail/providers/Settings;->snapHeaders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Lcom/android/mail/providers/Settings;->replyBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/android/mail/providers/Settings;->convListIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->convListAttachmentPreviews:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmDelete:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmArchive:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->confirmSend:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    #v0=(Reference);
    sget-object v3, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-object v3, v3, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    sget-object v3, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-object v3, v3, Lcom/android/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->forceReplyFromDefault:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Lcom/android/mail/providers/Settings;->maxAttachmentSize:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Lcom/android/mail/providers/Settings;->swipe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_5

    :goto_5
    #v1=(Boolean);
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget v0, p0, Lcom/android/mail/providers/Settings;->conversationViewMode:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    sget-object v1, Lcom/android/mail/providers/Settings;->sDefault:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return-void

    :cond_0
    #v0=(Boolean);v1=(One);
    move v0, v2

    .line 332
    #v0=(Null);
    goto/16 :goto_0

    :cond_1
    #v0=(Boolean);
    move v0, v2

    .line 333
    #v0=(Null);
    goto :goto_1

    :cond_2
    #v0=(Boolean);
    move v0, v2

    .line 334
    #v0=(Null);
    goto :goto_2

    :cond_3
    #v0=(Boolean);
    move v0, v2

    .line 335
    #v0=(Null);
    goto :goto_3

    :cond_4
    #v0=(Boolean);
    move v0, v2

    .line 338
    #v0=(Null);
    goto :goto_4

    :cond_5
    #v0=(Boolean);
    move v1, v2

    .line 341
    #v1=(Null);
    goto :goto_5
.end method
