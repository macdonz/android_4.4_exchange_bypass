.class Lcom/android/mail/ui/ConversationListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationListView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationListView;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListView$1;->this$0:Lcom/android/mail/ui/ConversationListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    .line 115
    #v1=(PosByte);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$1;->this$0:Lcom/android/mail/ui/ConversationListView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationListView;->access$000(Lcom/android/mail/ui/ConversationListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListView$1;->this$0:Lcom/android/mail/ui/ConversationListView;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationListView;->access$100(Lcom/android/mail/ui/ConversationListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method
