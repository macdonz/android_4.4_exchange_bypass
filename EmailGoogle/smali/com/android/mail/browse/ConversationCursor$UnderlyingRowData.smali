.class Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
.super Ljava/lang/Object;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnderlyingRowData"
.end annotation


# instance fields
.field public conversation:Lcom/android/mail/providers/Conversation;

.field public final innerUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/mail/providers/Conversation;)V
    .locals 0
    .parameter "innerUri"
    .parameter "conversation"

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->innerUri:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/android/mail/providers/Conversation;

    .line 260
    return-void
.end method
