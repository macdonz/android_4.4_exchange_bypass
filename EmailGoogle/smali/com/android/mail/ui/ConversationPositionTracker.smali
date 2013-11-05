.class public Lcom/android/mail/ui/ConversationPositionTracker;
.super Ljava/lang/Object;
.source "ConversationPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;

.field private mConversation:Lcom/android/mail/providers/Conversation;

.field private mCursorDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationPositionTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;)V
    .locals 1
    .parameter "callbacks"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 53
    iput-object p1, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;

    .line 54
    return-void
.end method

.method private calculatePosition()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v1, -0x1

    .line 167
    #v1=(Byte);
    const/4 v2, -0x1

    .line 168
    .local v2, invalidPosition:I
    #v2=(Byte);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 170
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    iget-boolean v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 171
    iget-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget v1, v5, Lcom/android/mail/providers/Conversation;->position:I

    .line 215
    :cond_0
    :goto_0
    #v1=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Reference);
    return v1

    .line 174
    :cond_1
    #v1=(Byte);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Null);
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    if-eqz v5, :cond_0

    .line 177
    iput-boolean v9, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 178
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor;->getCount()I

    move-result v3

    .line 179
    .local v3, listSize:I
    #v3=(Integer);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 183
    iget-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget-wide v5, v5, Lcom/android/mail/providers/Conversation;->id:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v0, v5, v6}, Lcom/android/mail/browse/ConversationCursor;->getConversationPosition(J)I

    move-result v1

    .line 184
    .local v1, foundPosition:I
    #v1=(Integer);
    if-ltz v1, :cond_2

    .line 185
    iget-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iput v1, v5, Lcom/android/mail/providers/Conversation;->position:I

    .line 190
    add-int/lit8 v5, v1, 0x1

    #v5=(Integer);
    invoke-virtual {v0, v5}, Lcom/android/mail/browse/ConversationCursor;->moveToPosition(I)Z

    goto :goto_0

    .line 198
    :cond_2
    #v5=(LongLo);
    if-lt v1, v3, :cond_4

    .line 200
    add-int/lit8 v4, v3, -0x1

    .line 207
    .local v4, newPosition:I
    :goto_1
    #v4=(Integer);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    if-ltz v4, :cond_3

    .line 208
    sget-object v5, Lcom/android/mail/ui/ConversationPositionTracker;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "ConversationPositionTracker: Could not find conversation %s in the cursor. Moving to position %d "

    #v6=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    #v8=(Reference);
    invoke-virtual {v8}, Lcom/android/mail/providers/Conversation;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    #v8=(One);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    invoke-virtual {v0, v4}, Lcom/android/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 212
    new-instance v5, Lcom/android/mail/providers/Conversation;

    #v5=(UninitRef);
    invoke-direct {v5, v0}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    .line 213
    iget-object v5, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    iput v4, v5, Lcom/android/mail/providers/Conversation;->position:I

    :cond_3
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move v1, v4

    .line 215
    goto :goto_0

    .line 202
    .end local v4           #newPosition:I
    :cond_4
    #v4=(Uninit);v5=(LongLo);v6=(LongHi);v7=(Uninit);v8=(Uninit);v9=(Null);
    move v4, v1

    .restart local v4       #newPosition:I
    #v4=(Integer);
    goto :goto_1
.end method

.method private conversationAtPosition(I)Lcom/android/mail/providers/Conversation;
    .locals 3
    .parameter "position"

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v1

    .line 59
    .local v1, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 60
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationCursor;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 61
    .local v0, conv:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    iput p1, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 62
    return-object v0
.end method

.method private getCount()I
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 70
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor;->getCount()I

    move-result v1

    .line 73
    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private getNewer(Ljava/util/Collection;)Lcom/android/mail/providers/Conversation;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)",
            "Lcom/android/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, victims:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    const/4 v2, 0x0

    .line 82
    #v2=(Null);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPositionTracker;->calculatePosition()I

    move-result v1

    .line 83
    .local v1, pos:I
    #v1=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    if-gez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 96
    :cond_1
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 88
    :cond_2
    #v0=(Uninit);
    add-int/lit8 v1, v1, -0x1

    .line 89
    :goto_1
    #v0=(Conflicted);
    if-ltz v1, :cond_3

    .line 90
    invoke-direct {p0, v1}, Lcom/android/mail/ui/ConversationPositionTracker;->conversationAtPosition(I)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 91
    .local v0, candidate:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/android/mail/providers/Conversation;->contains(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    add-int/lit8 v1, v1, -0x1

    .line 95
    goto :goto_1

    .end local v0           #candidate:Lcom/android/mail/providers/Conversation;
    :cond_3
    #v0=(Conflicted);
    move-object v0, v2

    .line 96
    #v0=(Null);
    goto :goto_0
.end method

.method private getOlder(Ljava/util/Collection;)Lcom/android/mail/providers/Conversation;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)",
            "Lcom/android/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, victims:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    const/4 v2, 0x0

    .line 104
    #v2=(Null);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPositionTracker;->calculatePosition()I

    move-result v1

    .line 105
    .local v1, pos:I
    #v1=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    if-gez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 118
    :cond_1
    :goto_0
    #v0=(Reference);v3=(Integer);
    return-object v0

    .line 110
    :cond_2
    #v0=(Uninit);v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    .line 111
    :goto_1
    #v0=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPositionTracker;->getCount()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_3

    .line 112
    invoke-direct {p0, v1}, Lcom/android/mail/ui/ConversationPositionTracker;->conversationAtPosition(I)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 113
    .local v0, candidate:Lcom/android/mail/providers/Conversation;
    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/android/mail/providers/Conversation;->contains(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_1

    .end local v0           #candidate:Lcom/android/mail/providers/Conversation;
    :cond_3
    #v0=(Conflicted);v3=(Integer);
    move-object v0, v2

    .line 118
    #v0=(Null);
    goto :goto_0
.end method

.method private isDataLoaded()Z
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/android/mail/browse/ConversationCursor;

    move-result-object v0

    .line 141
    .local v0, cursor:Lcom/android/mail/browse/ConversationCursor;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method private static isDataLoaded(Lcom/android/mail/browse/ConversationCursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor;->isClosed()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public getNextConversation(ILjava/util/Collection;)Lcom/android/mail/providers/Conversation;
    .locals 10
    .parameter "autoAdvance"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)",
            "Lcom/android/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    .local p2, mTarget:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/providers/Conversation;>;"
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    .line 229
    #v3=(One);
    if-ne p1, v9, :cond_0

    move v0, v3

    .line 230
    .local v0, getNewer:Z
    :goto_0
    #v0=(Boolean);
    if-ne p1, v3, :cond_1

    move v1, v3

    .line 231
    .local v1, getOlder:Z
    :goto_1
    #v1=(Boolean);
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/mail/ui/ConversationPositionTracker;->getNewer(Ljava/util/Collection;)Lcom/android/mail/providers/Conversation;

    move-result-object v2

    .line 233
    .local v2, next:Lcom/android/mail/providers/Conversation;
    :goto_2
    #v2=(Reference);
    sget-object v5, Lcom/android/mail/ui/ConversationPositionTracker;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "ConversationPositionTracker.getNextConversation: getNewer = %b, getOlder = %b, Next conversation is %s"

    #v6=(Reference);
    const/4 v7, 0x3

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v7, v3

    aput-object v2, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    return-object v2

    .end local v0           #getNewer:Z
    .end local v1           #getOlder:Z
    .end local v2           #next:Lcom/android/mail/providers/Conversation;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    move v0, v4

    .line 229
    #v0=(Null);
    goto :goto_0

    .restart local v0       #getNewer:Z
    :cond_1
    #v0=(Boolean);
    move v1, v4

    .line 230
    #v1=(Null);
    goto :goto_1

    .line 231
    .restart local v1       #getOlder:Z
    :cond_2
    #v1=(Boolean);
    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/mail/ui/ConversationPositionTracker;->getOlder(Ljava/util/Collection;)Lcom/android/mail/providers/Conversation;

    move-result-object v2

    #v2=(Reference);
    goto :goto_2

    :cond_3
    #v2=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_2
.end method

.method public initialize(Lcom/android/mail/providers/Conversation;)V
    .locals 1
    .parameter "conversation"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mConversation:Lcom/android/mail/providers/Conversation;

    .line 130
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 131
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationPositionTracker;->calculatePosition()I

    .line 132
    return-void
.end method

.method public onCursorUpdated()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 149
    return-void
.end method
