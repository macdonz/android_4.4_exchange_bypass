.class Lcom/android/mail/ui/ConversationsInOutboxTipView$1;
.super Ljava/lang/Object;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationsInOutboxTipView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$1;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$1;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->access$000(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V

    .line 123
    return-void
.end method
