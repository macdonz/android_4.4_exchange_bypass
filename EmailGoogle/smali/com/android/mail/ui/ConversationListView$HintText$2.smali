.class Lcom/android/mail/ui/ConversationListView$HintText$2;
.super Ljava/lang/Object;
.source "ConversationListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationListView$HintText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationListView$HintText;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationListView$HintText;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListView$HintText$2;->this$0:Lcom/android/mail/ui/ConversationListView$HintText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$HintText$2;->this$0:Lcom/android/mail/ui/ConversationListView$HintText;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationListView$HintText;->setVisibility(I)V

    .line 444
    return-void
.end method
