.class public Lcom/android/mail/ui/ConversationViewState;
.super Ljava/lang/Object;
.source "ConversationViewState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/ConversationViewState$MessageViewState;,
        Lcom/android/mail/ui/ConversationViewState$ExpansionState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/ui/ConversationViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConversationInfo:[B

.field private final mMessageViewStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/ui/ConversationViewState$MessageViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationViewState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .parameter "source"
    .parameter "loader"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 173
    .local v3, states:Landroid/os/Bundle;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 175
    .local v2, state:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v4=(Reference);
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #state:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mConversationInfo:[B

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/mail/ui/ConversationViewState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/ConversationViewState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/ConversationViewState;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    .line 75
    iget-object v0, p1, Lcom/android/mail/ui/ConversationViewState;->mConversationInfo:[B

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->mConversationInfo:[B

    .line 76
    return-void
.end method


# virtual methods
.method public contains(Lcom/android/mail/providers/Message;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getConversationInfo()[B
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->mConversationInfo:[B

    #v0=(Reference);
    return-object v0
.end method

.method public getExpansionState(Lcom/android/mail/providers/Message;)Ljava/lang/Integer;
    .locals 3
    .parameter "m"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 115
    .local v0, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->expansionState:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getShouldShowImages(Lcom/android/mail/providers/Message;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 94
    .local v0, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->showImages:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getUnreadMessageUris()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 142
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/net/Uri;

    .line 143
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 144
    .local v1, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->read:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 145
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v1           #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    #v1=(Conflicted);v3=(Conflicted);
    return-object v2
.end method

.method public isUnread(Lcom/android/mail/providers/Message;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 80
    .local v0, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->read:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public setExpansionState(Lcom/android/mail/providers/Message;I)V
    .locals 3
    .parameter "m"
    .parameter "expansionState"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 120
    .local v0, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .end local v0           #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>()V

    .line 123
    .restart local v0       #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    :cond_0
    #v0=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->expansionState:Ljava/lang/Integer;

    .line 124
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setInfoForConversation(Lcom/android/mail/providers/Conversation;)V
    .locals 1
    .parameter "conv"

    .prologue
    .line 132
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->conversationInfo:Lcom/android/mail/providers/ConversationInfo;

    invoke-virtual {v0}, Lcom/android/mail/providers/ConversationInfo;->toBlob()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->mConversationInfo:[B

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public setReadState(Lcom/android/mail/providers/Message;Z)V
    .locals 3
    .parameter "m"
    .parameter "read"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 85
    .local v0, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .end local v0           #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>()V

    .line 88
    .restart local v0       #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    :cond_0
    #v0=(Reference);
    iput-boolean p2, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->read:Z

    .line 89
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setShouldShowImages(Lcom/android/mail/providers/Message;Z)V
    .locals 3
    .parameter "m"
    .parameter "showImages"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 99
    .local v0, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .end local v0           #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>()V

    .line 102
    .restart local v0       #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    :cond_0
    #v0=(Reference);
    iput-boolean p2, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->showImages:Z

    .line 103
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 162
    new-instance v2, Landroid/os/Bundle;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v2, states:Landroid/os/Bundle;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/net/Uri;

    .line 164
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mMessageViewStates:Ljava/util/Map;

    #v4=(Reference);
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 165
    .local v1, mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 167
    .end local v1           #mvs:Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Boolean);
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 168
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->mConversationInfo:[B

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 169
    return-void
.end method
