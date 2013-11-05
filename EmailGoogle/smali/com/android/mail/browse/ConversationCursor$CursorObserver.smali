.class Lcom/android/mail/browse/ConversationCursor$CursorObserver;
.super Landroid/database/ContentObserver;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationCursor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$CursorObserver;->this$0:Lcom/android/mail/browse/ConversationCursor;

    .line 1396
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1397
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$CursorObserver;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationCursor;->access$1400(Lcom/android/mail/browse/ConversationCursor;)V

    .line 1404
    return-void
.end method
