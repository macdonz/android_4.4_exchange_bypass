.class Lcom/android/mail/ui/ConversationLongPressTipView$1;
.super Ljava/lang/Object;
.source "ConversationLongPressTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationLongPressTipView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationLongPressTipView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationLongPressTipView;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/mail/ui/ConversationLongPressTipView$1;->this$0:Lcom/android/mail/ui/ConversationLongPressTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mail/ui/ConversationLongPressTipView$1;->this$0:Lcom/android/mail/ui/ConversationLongPressTipView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationLongPressTipView;->dismiss()V

    .line 95
    return-void
.end method
