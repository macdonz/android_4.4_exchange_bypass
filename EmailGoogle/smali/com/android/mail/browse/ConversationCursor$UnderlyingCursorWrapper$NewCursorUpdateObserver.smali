.class Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;
.super Landroid/database/ContentObserver;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewCursorUpdateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 332
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 333
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v0, v1}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$302(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Z)Z

    .line 341
    return-void
.end method
