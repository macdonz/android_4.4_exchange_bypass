.class public Lcom/android/mail/browse/ConversationItemViewModel;
.super Ljava/lang/Object;
.source "ConversationItemViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;
    }
.end annotation


# static fields
.field private static sCachedModelsFolder:Lcom/android/mail/providers/Folder;

.field static sConversationHeaderMap:Landroid/util/LruCache;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mail/browse/ConversationItemViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public conversation:Lcom/android/mail/providers/Conversation;

.field public dateOverrideText:Ljava/lang/CharSequence;

.field dateText:Ljava/lang/CharSequence;

.field public displayableSenderEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public displayableSenderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public folderDisplayer:Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;

.field public gadgetMode:I

.field public hasBeenForwarded:Z

.field public hasBeenRepliedTo:Z

.field hasDraftMessage:Z

.field public infoIcon:Landroid/graphics/Bitmap;

.field public isInvite:Z

.field private mContentDescription:Ljava/lang/String;

.field private mDataHashCode:I

.field private mLayoutHashCode:I

.field public messageInfoString:Landroid/text/SpannableStringBuilder;

.field paperclip:Landroid/graphics/Bitmap;

.field personalLevelBitmap:Landroid/graphics/Bitmap;

.field public preserveSendersText:Z

.field final senderFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;",
            ">;"
        }
    .end annotation
.end field

.field sendersDisplayLayout:Landroid/text/StaticLayout;

.field sendersDisplayText:Landroid/text/SpannableStringBuilder;

.field public sendersText:Ljava/lang/String;

.field public standardScaledDimen:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public styledMessageInfoStringOffset:I

.field public styledSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field public styledSendersString:Landroid/text/SpannableStringBuilder;

.field public unread:Z

.field public viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/util/LruCache;

    #v0=(UninitRef);
    const/16 v1, 0x64

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->preserveSendersText:Z

    .line 199
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method static forConversation(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/ConversationItemViewModel;
    .locals 6
    .parameter "account"
    .parameter "conv"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 159
    #v3=(Null);
    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {p0, v4, v5}, Lcom/android/mail/browse/ConversationItemViewModel;->forConversationId(Ljava/lang/String;J)Lcom/android/mail/browse/ConversationItemViewModel;

    move-result-object v0

    .line 161
    .local v0, header:Lcom/android/mail/browse/ConversationItemViewModel;
    #v0=(Reference);
    iput-object p1, v0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    .line 162
    iget-boolean v1, p1, Lcom/android/mail/providers/Conversation;->read:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/mail/browse/ConversationItemViewModel;->unread:Z

    .line 163
    iget v1, p1, Lcom/android/mail/providers/Conversation;->convFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    #v4=(PosByte);
    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_1
    #v1=(Boolean);
    iput-boolean v1, v0, Lcom/android/mail/browse/ConversationItemViewModel;->hasBeenForwarded:Z

    .line 166
    iget v1, p1, Lcom/android/mail/providers/Conversation;->convFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_2
    #v1=(Boolean);
    iput-boolean v1, v0, Lcom/android/mail/browse/ConversationItemViewModel;->hasBeenRepliedTo:Z

    .line 169
    iget v1, p1, Lcom/android/mail/providers/Conversation;->convFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    :goto_3
    #v2=(Boolean);
    iput-boolean v2, v0, Lcom/android/mail/browse/ConversationItemViewModel;->isInvite:Z

    .line 172
    return-object v0

    :cond_0
    #v1=(Boolean);v2=(One);v4=(LongLo);
    move v1, v3

    .line 162
    #v1=(Null);
    goto :goto_0

    :cond_1
    #v1=(Integer);v4=(PosByte);
    move v1, v3

    .line 163
    #v1=(Null);
    goto :goto_1

    :cond_2
    #v1=(Integer);
    move v1, v3

    .line 166
    #v1=(Null);
    goto :goto_2

    :cond_3
    #v1=(Integer);
    move v2, v3

    .line 169
    #v2=(Null);
    goto :goto_3
.end method

.method static forConversationId(Ljava/lang/String;J)Lcom/android/mail/browse/ConversationItemViewModel;
    .locals 4
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 186
    sget-object v3, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    #v3=(Reference);
    monitor-enter v3

    .line 187
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/mail/browse/ConversationItemViewModel;->forConversationIdOrNull(Ljava/lang/String;J)Lcom/android/mail/browse/ConversationItemViewModel;

    move-result-object v0

    .line 189
    .local v0, header:Lcom/android/mail/browse/ConversationItemViewModel;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 190
    new-instance v1, Landroid/util/Pair;

    #v1=(UninitRef);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .local v1, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    #v1=(Reference);
    new-instance v0, Lcom/android/mail/browse/ConversationItemViewModel;

    .end local v0           #header:Lcom/android/mail/browse/ConversationItemViewModel;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/browse/ConversationItemViewModel;-><init>()V

    .line 192
    .restart local v0       #header:Lcom/android/mail/browse/ConversationItemViewModel;
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v1           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit v3

    return-object v0

    .line 195
    .end local v0           #header:Lcom/android/mail/browse/ConversationItemViewModel;
    :catchall_0
    #v0=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static forConversationIdOrNull(Ljava/lang/String;J)Lcom/android/mail/browse/ConversationItemViewModel;
    .locals 3
    .parameter "account"
    .parameter "conversationId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Landroid/util/Pair;

    #v0=(UninitRef);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .local v0, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    #v2=(Reference);
    monitor-enter v2

    .line 154
    :try_start_0
    sget-object v1, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/browse/ConversationItemViewModel;

    monitor-exit v2

    return-object v1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getConvInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHashCode(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I
    .locals 3
    .parameter "dateText"
    .parameter "convInfo"
    .parameter
    .parameter "starred"
    .parameter "read"
    .parameter "priority"
    .parameter "sendingState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;ZZII)I"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, rawFolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Folder;>;"
    if-nez p0, :cond_0

    .line 222
    const/4 v0, -0x1

    .line 224
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x7

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    aput-object p1, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    aput-object p0, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method private getLayoutHashCode()I
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mDataHashCode:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewModel;->viewWidth:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewModel;->standardScaledDimen:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewModel;->gadgetMode:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static onAccessibilityUpdated()V
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 363
    return-void
.end method

.method public static onFolderUpdated(Lcom/android/mail/providers/Folder;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 369
    sget-object v2, Lcom/android/mail/browse/ConversationItemViewModel;->sCachedModelsFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mail/browse/ConversationItemViewModel;->sCachedModelsFolder:Lcom/android/mail/providers/Folder;

    iget-object v1, v2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    .line 371
    .local v1, old:Lcom/android/mail/utils/FolderUri;
    :goto_0
    #v1=(Reference);
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    .line 372
    .local v0, newUri:Lcom/android/mail/utils/FolderUri;
    :goto_1
    #v0=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 373
    sput-object p0, Lcom/android/mail/browse/ConversationItemViewModel;->sCachedModelsFolder:Lcom/android/mail/providers/Folder;

    .line 374
    sget-object v2, Lcom/android/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 376
    :cond_0
    #v2=(Conflicted);
    return-void

    .line 369
    .end local v0           #newUri:Lcom/android/mail/utils/FolderUri;
    .end local v1           #old:Lcom/android/mail/utils/FolderUri;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference);
    sget-object v1, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    #v1=(Reference);
    goto :goto_0

    .line 371
    .restart local v1       #old:Lcom/android/mail/utils/FolderUri;
    :cond_2
    sget-object v0, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    #v0=(Reference);
    goto :goto_1
.end method


# virtual methods
.method addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "style"
    .parameter "isFixed"

    .prologue
    .line 211
    new-instance v0, Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;

    #v0=(UninitRef);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    #v3=(Reference);
    move v1, p1

    #v1=(Integer);
    move v2, p2

    #v2=(Integer);
    move-object v4, p3

    #v4=(Reference);
    move v5, p4

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;-><init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;Z)V

    .line 212
    .local v0, senderFragment:Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    .line 312
    #v10=(Byte);
    iget-object v11, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    #v11=(Reference);
    if-nez v11, :cond_3

    .line 316
    const-string v9, ""

    .line 317
    .local v9, sender:Ljava/lang/String;
    #v9=(Reference);
    iget-object v11, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    iget-object v11, v11, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    if-eqz v11, :cond_2

    .line 318
    const-string v5, ""

    .line 319
    .local v5, lastSender:Ljava/lang/String;
    #v5=(Reference);
    iget-object v11, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    iget-object v11, v11, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget-object v11, v11, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    iget-object v11, v11, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget-object v11, v11, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    #v11=(Integer);
    add-int/lit8 v4, v11, -0x1

    .line 321
    .local v4, last:I
    :goto_0
    #v4=(Integer);v11=(Conflicted);
    if-eq v4, v10, :cond_0

    .line 322
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget-object v10, v10, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mail/providers/MessageInfo;

    iget-object v5, v10, Lcom/android/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 324
    :cond_0
    #v10=(Conflicted);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v10=(Reference);
    iget-boolean v10, v10, Lcom/android/mail/providers/Conversation;->read:Z

    #v10=(Boolean);
    if-eqz v10, :cond_6

    .line 325
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {p1}, Lcom/android/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 340
    :cond_1
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 342
    move-object v9, v5

    .line 345
    .end local v4           #last:I
    .end local v5           #lastSender:Ljava/lang/String;
    :cond_2
    #v4=(Conflicted);v5=(Conflicted);v10=(Byte);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v10=(Reference);
    iget-wide v10, v10, Lcom/android/mail/providers/Conversation;->dateMs:J

    #v10=(LongLo);v11=(LongHi);
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    .line 346
    .local v3, isToday:Z
    #v3=(Boolean);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v10=(Reference);
    iget-wide v10, v10, Lcom/android/mail/providers/Conversation;->dateMs:J

    #v10=(LongLo);
    invoke-static {p1, v10, v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, date:Ljava/lang/String;
    #v0=(Reference);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    iget-boolean v10, v10, Lcom/android/mail/providers/Conversation;->read:Z

    #v10=(Boolean);
    if-eqz v10, :cond_a

    const v10, 0x7f0a0094

    :goto_2
    #v10=(Integer);
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, readString:Ljava/lang/String;
    #v7=(Reference);
    if-eqz v3, :cond_b

    const v8, 0x7f0a0093

    .line 351
    .local v8, res:I
    :goto_3
    #v8=(Integer);
    const/4 v10, 0x5

    #v10=(PosByte);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    aput-object v9, v10, v11

    const/4 v11, 0x1

    #v11=(One);
    iget-object v12, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/mail/providers/Conversation;->subject:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    #v11=(PosByte);
    iget-object v12, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v12}, Lcom/android/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v0, v10, v11

    const/4 v11, 0x4

    aput-object v7, v10, v11

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    .line 354
    .end local v0           #date:Ljava/lang/String;
    .end local v3           #isToday:Z
    .end local v7           #readString:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #sender:Ljava/lang/String;
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    #v10=(Reference);
    return-object v10

    .restart local v5       #lastSender:Ljava/lang/String;
    .restart local v9       #sender:Ljava/lang/String;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Reference);v10=(Byte);v11=(Reference);v12=(Uninit);
    move v4, v10

    .line 319
    #v4=(Byte);
    goto :goto_0

    .restart local v4       #last:I
    :cond_5
    #v4=(Integer);v10=(Boolean);v11=(Conflicted);
    move-object v9, v5

    .line 325
    goto :goto_1

    .line 328
    :cond_6
    const/4 v1, 0x0

    .line 329
    .local v1, firstUnread:Lcom/android/mail/providers/MessageInfo;
    #v1=(Null);
    iget-object v10, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    iget-object v10, v10, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    #v2=(Reference);v6=(Conflicted);v10=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/providers/MessageInfo;

    .line 330
    .local v6, m:Lcom/android/mail/providers/MessageInfo;
    iget-boolean v10, v6, Lcom/android/mail/providers/MessageInfo;->read:Z

    if-nez v10, :cond_7

    .line 331
    move-object v1, v6

    .line 335
    .end local v6           #m:Lcom/android/mail/providers/MessageInfo;
    :cond_8
    #v1=(Reference);v6=(Conflicted);
    if-eqz v1, :cond_1

    .line 336
    iget-object v10, v1, Lcom/android/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    #v10=(Reference);
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_9

    invoke-static {p1}, Lcom/android/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    goto :goto_1

    :cond_9
    iget-object v9, v1, Lcom/android/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    goto :goto_4

    .line 348
    .end local v1           #firstUnread:Lcom/android/mail/providers/MessageInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #last:I
    .end local v5           #lastSender:Ljava/lang/String;
    .restart local v0       #date:Ljava/lang/String;
    .restart local v3       #isToday:Z
    :cond_a
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v11=(LongHi);
    const v10, 0x7f0a0095

    #v10=(Integer);
    goto :goto_2

    .line 350
    .restart local v7       #readString:Ljava/lang/String;
    :cond_b
    #v7=(Reference);
    const v8, 0x7f0a0092

    #v8=(Integer);
    goto :goto_3
.end method

.method isDataValid()Z
    .locals 8

    .prologue
    .line 254
    iget v7, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mDataHashCode:I

    #v7=(Integer);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    #v0=(Reference);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemViewModel;->getConvInfo()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v3=(Reference);
    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->starred:Z

    #v3=(Boolean);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v4=(Reference);
    iget-boolean v4, v4, Lcom/android/mail/providers/Conversation;->read:Z

    #v4=(Boolean);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget v5, v5, Lcom/android/mail/providers/Conversation;->priority:I

    #v5=(Integer);
    iget-object v6, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v6=(Reference);
    iget v6, v6, Lcom/android/mail/providers/Conversation;->sendingState:I

    #v6=(Integer);
    invoke-static/range {v0 .. v6}, Lcom/android/mail/browse/ConversationItemViewModel;->getHashCode(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I

    move-result v0

    #v0=(Integer);
    if-ne v7, v0, :cond_0

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

.method isLayoutValid()Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemViewModel;->isDataValid()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mLayoutHashCode:I

    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemViewModel;->getLayoutHashCode()I

    move-result v1

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public resetContentDescription()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    .line 306
    return-void
.end method

.method validate()V
    .locals 7

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    #v0=(Reference);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemViewModel;->getConvInfo()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v3=(Reference);
    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->starred:Z

    #v3=(Boolean);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v4=(Reference);
    iget-boolean v4, v4, Lcom/android/mail/providers/Conversation;->read:Z

    #v4=(Boolean);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget v5, v5, Lcom/android/mail/providers/Conversation;->priority:I

    #v5=(Integer);
    iget-object v6, p0, Lcom/android/mail/browse/ConversationItemViewModel;->conversation:Lcom/android/mail/providers/Conversation;

    #v6=(Reference);
    iget v6, v6, Lcom/android/mail/providers/Conversation;->sendingState:I

    #v6=(Integer);
    invoke-static/range {v0 .. v6}, Lcom/android/mail/browse/ConversationItemViewModel;->getHashCode(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mDataHashCode:I

    .line 247
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemViewModel;->getLayoutHashCode()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/ConversationItemViewModel;->mLayoutHashCode:I

    .line 248
    return-void
.end method
