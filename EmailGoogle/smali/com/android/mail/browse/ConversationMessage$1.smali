.class final Lcom/android/mail/browse/ConversationMessage$1;
.super Ljava/lang/Object;
.source "ConversationMessage.java"

# interfaces
.implements Lcom/android/mail/content/CursorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mail/content/CursorCreator",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/database/Cursor;)Lcom/android/mail/browse/ConversationMessage;
    .locals 2
    .parameter "c"

    .prologue
    .line 106
    new-instance v0, Lcom/android/mail/browse/ConversationMessage;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p1, v1}, Lcom/android/mail/browse/ConversationMessage;-><init>(Landroid/database/Cursor;Lcom/android/mail/browse/ConversationMessage$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationMessage$1;->createFromCursor(Landroid/database/Cursor;)Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "ConversationMessage CursorCreator"

    #v0=(Reference);
    return-object v0
.end method
