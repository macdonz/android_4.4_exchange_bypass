.class final Lcom/android/mail/providers/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Lcom/android/mail/content/CursorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/Conversation;
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
        "Lcom/android/mail/providers/Conversation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 739
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/database/Cursor;)Lcom/android/mail/providers/Conversation;
    .locals 1
    .parameter "c"

    .prologue
    .line 742
    new-instance v0, Lcom/android/mail/providers/Conversation;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/android/mail/providers/Conversation$2;->createFromCursor(Landroid/database/Cursor;)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    const-string v0, "Conversation CursorCreator"

    #v0=(Reference);
    return-object v0
.end method
