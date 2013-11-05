.class public Lcom/android/mail/providers/UIProvider;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/providers/UIProvider$ViewProxyExtras;,
        Lcom/android/mail/providers/UIProvider$SendFeedbackExtras;,
        Lcom/android/mail/providers/UIProvider$EditSettingsExtras;,
        Lcom/android/mail/providers/UIProvider$UpdateNotificationExtras;,
        Lcom/android/mail/providers/UIProvider$ConversationListIcon;,
        Lcom/android/mail/providers/UIProvider$DefaultReplyBehavior;,
        Lcom/android/mail/providers/UIProvider$MessageTextSize;,
        Lcom/android/mail/providers/UIProvider$SnapHeaderValue;,
        Lcom/android/mail/providers/UIProvider$ConversationViewMode;,
        Lcom/android/mail/providers/UIProvider$Swipe;,
        Lcom/android/mail/providers/UIProvider$AutoAdvance;,
        Lcom/android/mail/providers/UIProvider$AttachmentType;,
        Lcom/android/mail/providers/UIProvider$AttachmentRendition;,
        Lcom/android/mail/providers/UIProvider$AttachmentContentValueKeys;,
        Lcom/android/mail/providers/UIProvider$AttachmentColumns;,
        Lcom/android/mail/providers/UIProvider$AttachmentDestination;,
        Lcom/android/mail/providers/UIProvider$AttachmentState;,
        Lcom/android/mail/providers/UIProvider$MessageOperations;,
        Lcom/android/mail/providers/UIProvider$SetCurrentAccountColumns;,
        Lcom/android/mail/providers/UIProvider$MessageColumns;,
        Lcom/android/mail/providers/UIProvider$MessageFlags;,
        Lcom/android/mail/providers/UIProvider$AccountCursorExtraKeys;,
        Lcom/android/mail/providers/UIProvider$CursorExtraKeys;,
        Lcom/android/mail/providers/UIProvider$CursorStatus;,
        Lcom/android/mail/providers/UIProvider$SpamWarningLinkType;,
        Lcom/android/mail/providers/UIProvider$SpamWarningLevel;,
        Lcom/android/mail/providers/UIProvider$DraftType;,
        Lcom/android/mail/providers/UIProvider$SendOrSaveMethodParamKeys;,
        Lcom/android/mail/providers/UIProvider$AccountCallMethods;,
        Lcom/android/mail/providers/UIProvider$ConversationOperations;,
        Lcom/android/mail/providers/UIProvider$ConversationCursorCommand;,
        Lcom/android/mail/providers/UIProvider$ConversationColumns;,
        Lcom/android/mail/providers/UIProvider$ConversationPhishing;,
        Lcom/android/mail/providers/UIProvider$ConversationFlags;,
        Lcom/android/mail/providers/UIProvider$ConversationPersonalLevel;,
        Lcom/android/mail/providers/UIProvider$ConversationPriority;,
        Lcom/android/mail/providers/UIProvider$ConversationSendingState;,
        Lcom/android/mail/providers/UIProvider$FolderColumns;,
        Lcom/android/mail/providers/UIProvider$FolderCapabilities;,
        Lcom/android/mail/providers/UIProvider$FolderType;,
        Lcom/android/mail/providers/UIProvider$ConversationListQueryParameters;,
        Lcom/android/mail/providers/UIProvider$SearchQueryParameters;,
        Lcom/android/mail/providers/UIProvider$AccountCookieColumns;,
        Lcom/android/mail/providers/UIProvider$QuickResponseColumns;,
        Lcom/android/mail/providers/UIProvider$AccountColumns;,
        Lcom/android/mail/providers/UIProvider$AccountCapabilities;,
        Lcom/android/mail/providers/UIProvider$LastSyncResult;,
        Lcom/android/mail/providers/UIProvider$SyncStatus;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_COLUMNS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final ACCOUNTS_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

.field public static final ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

.field public static final ATTACHMENT_INFO_DELIMITER_PATTERN:Ljava/util/regex/Pattern;

.field public static final ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field public static final ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field public static final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final FOLDERS_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

.field public static final UNDO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 130
    #v3=(Null);
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    const-class v2, Ljava/lang/Integer;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "accountManagerName"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "providerVersion"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "accountUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "folderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "fullFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "allFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "searchUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "accountFromAddresses"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "expungeMessageUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "undoUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "accountSettingsIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "syncStatus"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "helpIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "sendFeedbackIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "reauthenticationUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "composeUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "mimeType"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "recentFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "color"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "defaultRecentFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "manualSyncUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "viewProxyUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "accountCookieUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "signature"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "auto_advance"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "message_text_size"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "snap_headers"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "reply_behavior"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "conversation_list_icon"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "conversation_list_attachment_previews"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "confirm_delete"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "confirm_archive"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "confirm_send"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "default_inbox"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "default_inbox_name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "force_reply_from_default"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "max_attachment_size"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "swipe"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "priority_inbox_arrows_enabled"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "setup_intent_uri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "conversation_view_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "veiled_address_pattern"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "updateSettingsUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "enableMessageTransforms"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "syncAuthority"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "quickResponseUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "move_to_inbox"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    .line 184
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "capabilities"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    .line 191
    sget-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    #v1=(Integer);
    new-array v1, v1, [Ljava/lang/String;

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 195
    sget-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    #v1=(Integer);
    new-array v1, v1, [Ljava/lang/String;

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    .line 609
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quickResponse"

    aput-object v1, v0, v4

    const-string v1, "uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mail/providers/UIProvider;->QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

    .line 626
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cookie"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

    .line 673
    const/16 v0, 0x18

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "persistentId"

    aput-object v1, v0, v4

    const-string v1, "folderUri"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "hasChildren"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    const-string v2, "capabilities"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "syncWindow"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "conversationListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "childFoldersListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unseenCount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "refreshUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "iconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "notificationIconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "loadMoreUri"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hierarchicalDesc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "lastMessageTimestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "parentUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 951
    const/16 v0, 0x1e

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "conversationUri"

    aput-object v1, v0, v4

    const-string v1, "messageListUri"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    const-string v2, "conversationInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numDrafts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sendingState"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rawFolders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "conversationFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "spam"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "phishing"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "accountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "senderInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "conversationBaseUri"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "remote"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "attachmentPreviewUri0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "attachmentPreviewUri1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "attachmentPreviewStates"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "attachmentPreviewsCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 1487
    const/16 v0, 0x23

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "serverMessageId"

    aput-object v1, v0, v4

    const-string v1, "messageUri"

    aput-object v1, v0, v5

    const-string v1, "conversationId"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "replyToAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bodyHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bodyText"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "draftType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "appendRefMessageContent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "attachmentListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "messageFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "alwaysShowImages"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "customFrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "messageAccountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "eventIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "spamWarningString"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "spamWarningLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "spamWarningLinkType"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "viaDomain"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "isSending"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1820
    const/16 v0, 0xe

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_display_name"

    #v1=(Reference);
    aput-object v1, v0, v3

    const-string v1, "_size"

    aput-object v1, v0, v4

    const-string v1, "uri"

    aput-object v1, v0, v5

    const-string v1, "contentType"

    aput-object v1, v0, v6

    const-string v1, "state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "downloadedSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thumbnailUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "previewIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "providerData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "supportsDownloadAgain"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 1852
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 1856
    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_INFO_DELIMITER_PATTERN:Ljava/util/regex/Pattern;

    .line 2091
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messageListUri"

    #v1=(Reference);
    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mail/providers/UIProvider;->UNDO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    #p0=(Reference);
    return-void
.end method
