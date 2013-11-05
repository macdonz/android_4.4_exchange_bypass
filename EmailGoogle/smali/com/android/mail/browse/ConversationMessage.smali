.class public final Lcom/android/mail/browse/ConversationMessage;
.super Lcom/android/mail/providers/Message;
.source "ConversationMessage.java"


# static fields
.field public static final FACTORY:Lcom/android/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/content/CursorCreator",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient mController:Lcom/android/mail/browse/MessageCursor$ConversationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/mail/browse/ConversationMessage$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/browse/ConversationMessage$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/ConversationMessage;->FACTORY:Lcom/android/mail/content/CursorCreator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/internet/MimeMessage;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "mimeMessage"
    .parameter "emlFileUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/providers/Message;-><init>(Landroid/content/Context;Lcom/android/emailcommon/internet/MimeMessage;Landroid/net/Uri;)V

    .line 58
    #p0=(Reference);
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    .line 53
    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/android/mail/browse/ConversationMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationMessage;-><init>(Landroid/database/Cursor;)V

    #p0=(Reference);
    return-void
.end method

.method private getAttachmentsStateHashCode()I
    .locals 5

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, hash:I
    #v1=(Null);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationMessage;->getAttachments()Ljava/util/List;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 81
    .local v0, a:Lcom/android/mail/providers/Attachment;
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v3

    .line 82
    .local v3, uri:Landroid/net/Uri;
    #v3=(Reference);
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v4

    :goto_1
    #v4=(Integer);
    add-int/2addr v1, v4

    .line 83
    goto :goto_0

    .line 82
    :cond_0
    #v4=(Boolean);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1

    .line 84
    .end local v0           #a:Lcom/android/mail/providers/Attachment;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Boolean);
    return v1
.end method


# virtual methods
.method public getConversation()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    invoke-interface {v0}, Lcom/android/mail/browse/MessageCursor$ConversationController;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getStateHashCode()I
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget-boolean v2, p0, Lcom/android/mail/providers/Message;->read:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-boolean v2, p0, Lcom/android/mail/providers/Message;->starred:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationMessage;->getAttachmentsStateHashCode()I

    move-result v2

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

.method public isConversationStarred()Z
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/mail/browse/ConversationMessage;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/browse/MessageCursor$ConversationController;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v0

    .line 89
    .local v0, c:Lcom/android/mail/browse/MessageCursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->isConversationStarred()Z

    move-result v1

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

.method public setController(Lcom/android/mail/browse/MessageCursor$ConversationController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mail/browse/ConversationMessage;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    .line 62
    return-void
.end method

.method public star(Z)V
    .locals 2
    .parameter "newStarred"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/mail/browse/ConversationMessage;->mController:Lcom/android/mail/browse/MessageCursor$ConversationController;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/browse/MessageCursor$ConversationController;->getListController()Lcom/android/mail/ui/ConversationUpdater;

    move-result-object v0

    .line 94
    .local v0, listController:Lcom/android/mail/ui/ConversationUpdater;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p1}, Lcom/android/mail/ui/ConversationUpdater;->starMessage(Lcom/android/mail/browse/ConversationMessage;Z)V

    .line 97
    :cond_0
    return-void
.end method
