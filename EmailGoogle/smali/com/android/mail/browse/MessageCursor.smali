.class public Lcom/android/mail/browse/MessageCursor;
.super Lcom/android/mail/content/ObjectCursor;
.source "MessageCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/MessageCursor$ConversationController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/content/ObjectCursor",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

.field private mStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "inner"

    .prologue
    .line 59
    sget-object v0, Lcom/android/mail/browse/ConversationMessage;->FACTORY:Lcom/android/mail/content/CursorCreator;

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/content/ObjectCursor;-><init>(Landroid/database/Cursor;Lcom/android/mail/content/CursorCreator;)V

    .line 60
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getDebugDump()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x2

    #v13=(PosByte);
    const/4 v12, 0x1

    #v12=(One);
    const/4 v11, 0x0

    .line 151
    #v11=(Null);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v5, sb:Ljava/lang/StringBuilder;
    #v5=(Reference);
    const-string v6, "conv=\'%s\' status=%d messages:\n"

    #v6=(Reference);
    new-array v7, v13, [Ljava/lang/Object;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/mail/browse/MessageCursor;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    #v8=(Reference);
    invoke-interface {v8}, Lcom/android/mail/browse/MessageCursor$ConversationController;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getStatus()I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/4 v4, -0x1

    .line 155
    .local v4, pos:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Integer);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    .line 157
    .local v3, m:Lcom/android/mail/browse/ConversationMessage;
    #v3=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, attUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    #v1=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->getAttachments()Ljava/util/List;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 159
    .local v0, a:Lcom/android/mail/providers/Attachment;
    iget-object v6, v0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    #v6=(Reference);
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v0           #a:Lcom/android/mail/providers/Attachment;
    :cond_0
    #v0=(Conflicted);v6=(Boolean);
    const-string v6, "[Message #%d hash=%s uri=%s id=%s serverId=%s from=\'%s\' draftType=%d isSending=%s read=%s starred=%s attUris=%s]\n"

    #v6=(Reference);
    const/16 v7, 0xb

    #v7=(PosByte);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v11

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->getStateHashCode()I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v7, v12

    iget-object v8, v3, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    aput-object v8, v7, v13

    const/4 v8, 0x3

    #v8=(PosByte);
    iget-wide v9, v3, Lcom/android/mail/providers/Message;->id:J

    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, v3, Lcom/android/mail/providers/Message;->serverId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget v9, v3, Lcom/android/mail/providers/Message;->draftType:I

    #v9=(Integer);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-boolean v9, v3, Lcom/android/mail/providers/Message;->isSending:Z

    #v9=(Boolean);
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/16 v8, 0x8

    iget-boolean v9, v3, Lcom/android/mail/providers/Message;->read:Z

    #v9=(Boolean);
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget-boolean v9, v3, Lcom/android/mail/providers/Message;->starred:Z

    #v9=(Boolean);
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    const/16 v8, 0xa

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 167
    .end local v1           #attUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #m:Lcom/android/mail/browse/ConversationMessage;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Boolean);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    return-object v6
.end method

.method public getMessage()Lcom/android/mail/browse/ConversationMessage;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/ConversationMessage;

    .line 72
    .local v0, m:Lcom/android/mail/browse/ConversationMessage;
    iget-object v1, p0, Lcom/android/mail/browse/MessageCursor;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationMessage;->setController(Lcom/android/mail/browse/MessageCursor$ConversationController;)V

    .line 73
    return-object v0
.end method

.method public getStateHashCode()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageCursor;->getStateHashCode(I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getStateHashCode(I)I
    .locals 5
    .parameter "exceptLast"

    .prologue
    .line 119
    const/16 v0, 0x11

    .line 120
    .local v0, hashCode:I
    #v0=(PosByte);
    const/4 v1, -0x1

    .line 121
    .local v1, pos:I
    #v1=(Byte);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getCount()I

    move-result v3

    #v3=(Integer);
    sub-int v2, v3, p1

    .line 122
    .local v2, stopAt:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Integer);v4=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    if-ge v1, v2, :cond_0

    .line 123
    mul-int/lit8 v3, v0, 0x1f

    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationMessage;->getStateHashCode()I

    move-result v4

    #v4=(Integer);
    add-int v0, v3, v4

    goto :goto_0

    .line 125
    :cond_0
    #v3=(Boolean);v4=(Conflicted);
    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/mail/browse/MessageCursor;->mStatus:Ljava/lang/Integer;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/mail/browse/MessageCursor;->mStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 138
    :goto_0
    #v0=(Conflicted);v1=(Integer);
    return v1

    .line 133
    :cond_0
    #v0=(Uninit);v1=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/browse/MessageCursor;->mStatus:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    if-eqz v0, :cond_1

    const-string v1, "cursor_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 136
    const-string v1, "cursor_status"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/browse/MessageCursor;->mStatus:Ljava/lang/Integer;

    .line 138
    :cond_1
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/browse/MessageCursor;->mStatus:Ljava/lang/Integer;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method

.method public isConversationRead()Z
    .locals 2

    .prologue
    .line 89
    const/4 v0, -0x1

    .line 90
    .local v0, pos:I
    :cond_0
    #v0=(Integer);v1=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Message;->read:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public isConversationStarred()Z
    .locals 2

    .prologue
    .line 78
    const/4 v0, -0x1

    .line 79
    .local v0, pos:I
    :cond_0
    #v0=(Integer);v1=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    #v1=(Reference);
    iget-boolean v1, v1, Lcom/android/mail/providers/Message;->starred:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getStatus()I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Lcom/android/mail/providers/UIProvider$CursorStatus;->isWaitingForResults(I)Z

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

.method public markMessagesRead()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, -0x1

    .line 99
    .local v0, pos:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, v1, Lcom/android/mail/providers/Message;->read:Z

    goto :goto_0

    .line 102
    :cond_0
    #v1=(Boolean);v2=(Conflicted);
    return-void
.end method

.method public setController(Lcom/android/mail/browse/MessageCursor$ConversationController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mail/browse/MessageCursor;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    .line 64
    return-void
.end method
