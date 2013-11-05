.class public Lcom/android/mail/browse/EmailConversationProvider;
.super Lcom/android/mail/browse/ConversationCursor$ConversationProvider;
.source "EmailConversationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.android.email2.conversation.provider"

    #v0=(Reference);
    return-object v0
.end method
