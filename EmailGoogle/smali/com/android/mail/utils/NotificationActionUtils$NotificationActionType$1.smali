.class final Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType$1;
.super Ljava/lang/Object;
.source "NotificationActionUtils.java"

# interfaces
.implements Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public shouldDisplayPrimary(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;)Z
    .locals 1
    .parameter "folder"
    .parameter "conversation"
    .parameter "message"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
